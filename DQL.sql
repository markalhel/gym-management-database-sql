-- ============================================
-- DATA QUERY LANGUAGE (DQL) SECTION
-- Complex Queries (Assignment Requirement)
-- ============================================
DROP VIEW IF EXISTS Member_Subscription_Summary;
DROP VIEW IF EXISTS Trainer_Session_Count;
DROP VIEW IF EXISTS ML_Member_Retention_Dataset;
DROP VIEW IF EXISTS ML_Equipment_Maintenance_Dataset;
DROP VIEW IF EXISTS ML_Trainer_Performance_Dataset;

-- Query 1: Multi-table JOIN with JSON extraction and window functions
-- Analyzes member workout patterns with ranking and JSON data extraction

USE gym_management;
SELECT 
    m.member_id,
    m.name,
    JSON_EXTRACT(m.workout_history, '$[0].exercise_type') as latest_exercise,
    JSON_EXTRACT(m.workout_history, '$[0].calories_burned') as latest_calories,
    COUNT(b.booking_id) as total_bookings,
    AVG(f.rating) as avg_trainer_rating,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) as activity_rank,
    ROW_NUMBER() OVER (PARTITION BY s.status ORDER BY COUNT(b.booking_id) DESC) as status_rank
FROM Member m
LEFT JOIN Booking b ON m.member_id = b.member_id
LEFT JOIN Feedback f ON m.member_id = f.member_id
LEFT JOIN Subscription s ON m.member_id = s.member_id
WHERE JSON_LENGTH(m.workout_history) > 0
GROUP BY m.member_id, m.name, s.status
HAVING COUNT(b.booking_id) > 0
ORDER BY total_bookings DESC
LIMIT 20;

-- Query 2: Complex aggregation with XML extraction and subqueries
-- Equipment utilization analysis with XML specifications parsing
SELECT 
    e.type as equipment_type,
    COUNT(*) as equipment_count,
    AVG(CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(e.specifications_xml, '<usage_hours>', -1), '</usage_hours>', 1) AS UNSIGNED)) as avg_usage_hours,
    MAX(CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(e.specifications_xml, '<year>', -1), '</year>', 1) AS UNSIGNED)) as newest_year,
    MIN(CAST(SUBSTRING_INDEX(SUBSTRING_Index(e.specifications_xml, '<year>', -1), '</year>', 1) AS UNSIGNED)) as oldest_year,
    (SELECT COUNT(*) 
     FROM Maintenance_Log ml 
     WHERE ml.equipment_id IN (SELECT equipment_id FROM Equipment WHERE type = e.type)) as maintenance_incidents,
    CASE 
        WHEN AVG(CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(e.specifications_xml, '<usage_hours>', -1), '</usage_hours>', 1) AS UNSIGNED)) > 3000 THEN 'High Usage'
        WHEN AVG(CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(e.specifications_xml, '<usage_hours>', -1), '</usage_hours>', 1) AS UNSIGNED)) > 1500 THEN 'Medium Usage'
        ELSE 'Low Usage'
    END as usage_category
FROM Equipment e
GROUP BY e.type
HAVING equipment_count > 1
ORDER BY avg_usage_hours DESC;

-- Query 3: Advanced JOIN with JSON aggregation and full-text search
-- Trainer performance analysis with workout history aggregation
SELECT 
    t.trainer_id,
    t.name as trainer_name,
    t.specialty,
    COUNT(DISTINCT s.session_id) as sessions_conducted,
    COUNT(DISTINCT b.member_id) as unique_members_trained,
    AVG(f.rating) as average_rating,
    GROUP_CONCAT(DISTINCT 
        JSON_EXTRACT(m.workout_history, '$[*].exercise_type')
    ) as member_exercise_preferences,
    SUM(CAST(JSON_EXTRACT(m.workout_history, '$[*].calories_burned') AS UNSIGNED)) as total_calories_facilitated,
    MATCH(t.specialty) AGAINST('training fitness strength' IN NATURAL LANGUAGE MODE) as specialty_relevance
FROM Trainer t
LEFT JOIN Session s ON t.trainer_id = s.trainer_id
LEFT JOIN Booking b ON s.session_id = b.session_id AND b.status = 'completed'
LEFT JOIN Member m ON b.member_id = m.member_id
LEFT JOIN Feedback f ON t.trainer_id = f.trainer_id
WHERE t.specialty IS NOT NULL
GROUP BY t.trainer_id, t.name, t.specialty
HAVING sessions_conducted > 0
ORDER BY average_rating DESC, sessions_conducted DESC
LIMIT 15;

-- Query 4: Complex window functions with XML and JSON analysis
-- Member health profile analysis with payment correlation (Fixed for sql_mode=only_full_group_by)
WITH member_payments AS (
    SELECT 
        m.member_id,
        m.name,
        m.health_profile,
        m.workout_history,
        COALESCE(SUM(p.amount), 0) as total_payments,
        COUNT(DISTINCT b.booking_id) as total_bookings
    FROM Member m
    LEFT JOIN Payment p ON m.member_id = p.member_id
    LEFT JOIN Booking b ON m.member_id = b.member_id
    WHERE m.health_profile IS NOT NULL 
        AND JSON_LENGTH(m.workout_history) > 0
    GROUP BY m.member_id, m.name, m.health_profile, m.workout_history
),
age_groups AS (
    SELECT 
        mp.*,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(mp.health_profile, '<age>', -1), '</age>', 1) AS UNSIGNED) as age,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(mp.health_profile, '<weight>', -1), '</weight>', 1) AS UNSIGNED) as weight,
        JSON_EXTRACT(mp.workout_history, '$[*].exercise_type') as exercise_types,
        CASE 
            WHEN CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(mp.health_profile, '<age>', -1), '</age>', 1) AS UNSIGNED) < 30 THEN 'Under 30'
            WHEN CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(mp.health_profile, '<age>', -1), '</age>', 1) AS UNSIGNED) < 40 THEN '30-39'
            ELSE '40+'
        END as age_group
    FROM member_payments mp
)
SELECT 
    ag.member_id,
    ag.name,
    ag.age,
    ag.weight,
    ag.exercise_types,
    ag.total_payments,
    ag.total_bookings,
    AVG(ag.total_payments) OVER (PARTITION BY ag.age_group) as avg_payment_by_age_group,
    DENSE_RANK() OVER (ORDER BY ag.total_payments DESC) as payment_rank,
    ag.age_group
FROM age_groups ag
ORDER BY ag.total_payments DESC;

-- ============================================
-- MACHINE LEARNING DATASETS EXTRACTION
-- ============================================

-- ML Dataset 1: Member Classification Dataset (Predicting Member Retention)
CREATE VIEW ML_Member_Retention_Dataset AS
SELECT 
    m.member_id,
    CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(m.health_profile, '<age>', -1), '</age>', 1) AS UNSIGNED) as age,
    CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(m.health_profile, '<weight>', -1), '</weight>', 1) AS UNSIGNED) as weight,
    DATEDIFF(CURDATE(), m.date_joined) as days_as_member,
    COUNT(DISTINCT b.booking_id) as total_bookings,
    COUNT(DISTINCT CASE WHEN b.status = 'completed' THEN b.booking_id END) as completed_bookings,
    COUNT(DISTINCT CASE WHEN b.status = 'cancelled' THEN b.booking_id END) as cancelled_bookings,
    COALESCE(AVG(f.rating), 0) as avg_feedback_rating,
    SUM(p.amount) as total_spent,
    JSON_LENGTH(m.workout_history) as workout_history_length,
    CASE WHEN s.status = 'active' THEN 1 ELSE 0 END as is_active_subscriber,
    CASE 
        WHEN COUNT(DISTINCT b.booking_id) = 0 THEN 'Inactive'
        WHEN COUNT(DISTINCT b.booking_id) < 5 THEN 'Low_Activity'
        WHEN COUNT(DISTINCT b.booking_id) < 15 THEN 'Medium_Activity'
        ELSE 'High_Activity'
    END as retention_category
FROM Member m
LEFT JOIN Booking b ON m.member_id = b.member_id
LEFT JOIN Feedback f ON m.member_id = f.member_id
LEFT JOIN Payment p ON m.member_id = p.member_id
LEFT JOIN Subscription s ON m.member_id = s.member_id
WHERE m.health_profile IS NOT NULL
GROUP BY m.member_id, m.health_profile, m.date_joined, s.status;

-- ML Dataset 2: Equipment Maintenance Prediction Dataset (Time Series Analysis)
CREATE VIEW ML_Equipment_Maintenance_Dataset AS
SELECT 
    e.equipment_id,
    e.type as equipment_type,
    CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(e.specifications_xml, '<year>', -1), '</year>', 1) AS UNSIGNED) as equipment_age,
    CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(e.specifications_xml, '<usage_hours>', -1), '</usage_hours>', 1) AS UNSIGNED) as usage_hours,
    COUNT(ml.log_id) as maintenance_count,
    COALESCE(MAX(ml.maintenance_date), '2024-01-01') as last_maintenance_date,
    DATEDIFF(CURDATE(), COALESCE(MAX(ml.maintenance_date), '2024-01-01')) as days_since_maintenance,
    CASE WHEN e.status = 'under_maintenance' THEN 1 ELSE 0 END as currently_under_maintenance,
    CASE 
        WHEN COUNT(ml.log_id) = 0 THEN 'No_Maintenance'
        WHEN COUNT(ml.log_id) < 3 THEN 'Low_Maintenance'
        WHEN COUNT(ml.log_id) < 6 THEN 'Medium_Maintenance'
        ELSE 'High_Maintenance'
    END as maintenance_category
FROM Equipment e
LEFT JOIN Maintenance_Log ml ON e.equipment_id = ml.equipment_id
WHERE e.specifications_xml IS NOT NULL
GROUP BY e.equipment_id, e.type, e.specifications_xml, e.status;

-- ML Dataset 3: Trainer Performance Clustering Dataset (Understanding Customer Behaviors)
CREATE VIEW ML_Trainer_Performance_Dataset AS
SELECT 
    t.trainer_id,
    t.specialty,
    COUNT(DISTINCT s.session_id) as total_sessions,
    COUNT(DISTINCT b.member_id) as unique_members,
    AVG(f.rating) as avg_rating,
    COUNT(DISTINCT CASE WHEN b.status = 'completed' THEN b.booking_id END) as completed_sessions,
    COUNT(DISTINCT CASE WHEN b.status = 'cancelled' THEN b.booking_id END) as cancelled_sessions,
    (COUNT(DISTINCT CASE WHEN b.status = 'completed' THEN b.booking_id END) / 
     NULLIF(COUNT(DISTINCT b.booking_id), 0)) * 100 as completion_rate,
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.certifications_xml, '<expires>', -1), '</expires>', 1) as cert_expiry,
    DATEDIFF(STR_TO_DATE(SUBSTRING_INDEX(SUBSTRING_INDEX(t.certifications_xml, '<expires>', -1), '</expires>', 1), '%Y-%m-%d'), CURDATE()) as days_until_cert_expiry,
    CASE 
        WHEN AVG(f.rating) >= 4.5 THEN 'Excellent'
        WHEN AVG(f.rating) >= 4.0 THEN 'Good'
        WHEN AVG(f.rating) >= 3.5 THEN 'Average'
        ELSE 'Needs_Improvement'
    END as performance_category
FROM Trainer t
LEFT JOIN Session s ON t.trainer_id = s.trainer_id
LEFT JOIN Booking b ON s.session_id = b.session_id
LEFT JOIN Feedback f ON t.trainer_id = f.trainer_id
WHERE t.certifications_xml IS NOT NULL
GROUP BY t.trainer_id, t.specialty, t.certifications_xml;

-- ============================================
-- UPDATE/DELETE DEMONSTRATIONS
-- ============================================

-- JSON Field Updates using MySQL JSON functions
UPDATE Member 
SET workout_history = JSON_ARRAY_APPEND(
    workout_history, 
    '$', 
    JSON_OBJECT(
        'date', CURDATE(),
        'exercise_type', 'strength_training',
        'duration_minutes', 45,
        'calories_burned', 300
    )
) 
WHERE member_id = 1;

-- XML Field Updates via string manipulation
UPDATE Equipment 
SET specifications_xml = REPLACE(
    specifications_xml,
    CONCAT('<usage_hours>', 
           SUBSTRING_INDEX(SUBSTRING_INDEX(specifications_xml, '<usage_hours>', -1), '</usage_hours>', 1),
           '</usage_hours>'),
    CONCAT('<usage_hours>', 
           CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(specifications_xml, '<usage_hours>', -1), '</usage_hours>', 1) AS UNSIGNED) + 100,
           '</usage_hours>')
)
WHERE equipment_id = 1;

-- Conditional DELETE with subquery (Safe update mode compatible)
-- Option 1: Using booking_id (primary key) to satisfy safe mode
DELETE FROM Booking 
WHERE booking_id IN (
    SELECT bookings_to_delete.booking_id 
    FROM (
        SELECT b.booking_id 
        FROM Booking b
        INNER JOIN Subscription s ON b.member_id = s.member_id
        WHERE b.status = 'cancelled' 
            AND b.booking_date < DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
            AND s.status = 'inactive'
    ) AS bookings_to_delete
);

-- Alternative Option 2: Disable safe mode temporarily (uncomment if needed)
-- SET SQL_SAFE_UPDATES = 0;
-- DELETE FROM Booking 
-- WHERE status = 'cancelled' 
--     AND booking_date < DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
--     AND member_id IN (
--         SELECT member_id 
--         FROM Subscription 
--         WHERE status = 'inactive'
--     );
-- SET SQL_SAFE_UPDATES = 1;

-- ============================================
-- FULL-TEXT SEARCH EXAMPLES
-- ============================================

-- Search members by name with relevance scoring
SELECT 
    member_id,
    name,
    contact_info,
    MATCH(name) AGAINST('John Smith' IN NATURAL LANGUAGE MODE) as name_relevance
FROM Member
WHERE MATCH(name) AGAINST('John Smith' IN NATURAL LANGUAGE MODE)
ORDER BY name_relevance DESC;

-- Search trainers by specialty with boolean mode
SELECT 
    trainer_id,
    name,
    specialty,
    MATCH(specialty) AGAINST('+training +strength -cardio' IN BOOLEAN MODE) as specialty_match
FROM Trainer
WHERE MATCH(specialty) AGAINST('+training +strength -cardio' IN BOOLEAN MODE)
ORDER BY specialty_match DESC;

-- Search feedback comments for sentiment analysis
SELECT 
    f.feedback_id,
    m.name as member_name,
    t.name as trainer_name,
    f.rating,
    f.comments,
    MATCH(f.comments) AGAINST('amazing excellent great' IN NATURAL LANGUAGE MODE) as positive_sentiment,
    MATCH(f.comments) AGAINST('terrible bad awful' IN NATURAL LANGUAGE MODE) as negative_sentiment
FROM Feedback f
JOIN Member m ON f.member_id = m.member_id
JOIN Trainer t ON f.trainer_id = t.trainer_id
WHERE MATCH(f.comments) AGAINST('amazing excellent great terrible bad awful' IN NATURAL LANGUAGE MODE)
ORDER BY positive_sentiment DESC;




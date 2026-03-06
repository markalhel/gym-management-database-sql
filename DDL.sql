-- ============================================
-- GYM MANAGEMENT DATABASE SYSTEM
-- CPSC500 SQL Databases - Final Project
-- University of Niagara Falls Canada
-- ============================================

CREATE DATABASE IF NOT EXISTS gym_management;
USE gym_management;

-- ============================================
-- CLEANUP SECTION (Drop existing objects)
-- ============================================

-- Drop views if they exist
DROP VIEW IF EXISTS Member_Subscription_Summary;
DROP VIEW IF EXISTS Trainer_Session_Count;
DROP VIEW IF EXISTS ML_Member_Retention_Dataset;
DROP VIEW IF EXISTS ML_Equipment_Maintenance_Dataset;
DROP VIEW IF EXISTS ML_Trainer_Performance_Dataset;
-- Drop trigger if it exists
DROP TRIGGER IF EXISTS auto_add_attendance_on_completed_booking;
-- Drop procedures if they exist
DROP PROCEDURE IF EXISTS AddNewBooking;
DROP PROCEDURE IF EXISTS LogPayment;
DROP PROCEDURE IF EXISTS UpdateMemberWorkoutHistory;

-- Drop tables for re-running purposes only
-- This is only for the testing and re-running purpose we will comment this all of "drop table" out when we have real DATA
-- so that the stored data will not be droped 
-- mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
DROP TABLE IF EXISTS Feedback;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Maintenance_Log;
DROP TABLE IF EXISTS Attendance;
DROP TABLE IF EXISTS Booking;
DROP TABLE IF EXISTS Session;
DROP TABLE IF EXISTS Subscription;
DROP TABLE IF EXISTS Trainer;
DROP TABLE IF EXISTS Equipment;
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS ML_Member_Retention_Dataset;
DROP TABLE IF EXISTS ML_Equipment_Maintenance_Dataset;
DROP TABLE IF EXISTS ML_Trainer_Performance_Dataset;
-- mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm

-- ============================================
-- DATA DEFINITION LANGUAGE (DDL) SECTION
-- ============================================

-- Create tables with XML fields added
CREATE TABLE Member (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    contact_info VARCHAR(150),
    date_joined DATE NOT NULL,
    workout_history JSON,
    health_profile TEXT -- XML field for storing health data, medical history, fitness goals
);

CREATE TABLE Subscription (
    subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    start_date DATE NOT NULL,
    end_date DATE,
    status ENUM('active', 'inactive', 'cancelled') NOT NULL,
    subscription_details TEXT, -- XML field for storing subscription plan details, features, pricing
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

CREATE TABLE Trainer (
    trainer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100),
    contact VARCHAR(100),
    trainer_schedule TEXT,
    certifications_xml TEXT -- XML field for certifications, qualifications, training history
);

CREATE TABLE Session (
    session_id INT PRIMARY KEY AUTO_INCREMENT,
    trainer_id INT,
    session_type VARCHAR(100),
    start_time TIME,
    end_time TIME,
    date DATE,
    capacity INT CHECK (capacity > 0),
    session_plan TEXT, -- XML field for detailed session plan, exercises, equipment needed
    FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id)
);

CREATE TABLE Booking (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    session_id INT,
    booking_date DATE NOT NULL,
    status ENUM('booked', 'cancelled', 'completed') NOT NULL,
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (session_id) REFERENCES Session(session_id)
);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    session_id INT,
    check_in_time DATETIME,
    performance_data TEXT, -- XML field for workout performance, metrics, notes
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (session_id) REFERENCES Session(session_id)
);

CREATE TABLE Equipment (
    equipment_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(100),
    status ENUM('working', 'under_maintenance', 'retired') NOT NULL,
    location VARCHAR(100),
    specifications_xml TEXT -- XML field for technical specs, warranty, usage stats
);

CREATE TABLE Maintenance_Log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    equipment_id INT,
    maintenance_date DATE NOT NULL,
    performed_by VARCHAR(100),
    details TEXT,
    maintenance_report TEXT, -- XML field for detailed maintenance reports, parts used, costs
    FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id)
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    method ENUM('cash', 'card', 'online') NOT NULL,
    transaction_details TEXT, -- XML field for transaction metadata, receipts, processing info
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);

CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    trainer_id INT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comments TEXT,
    date DATE,
    detailed_feedback TEXT, -- XML field for structured feedback categories, improvement suggestions
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id)
);

-- View 1: Member Subscription Summary
-- Shows each member's contact info and the status of their subscription
CREATE VIEW Member_Subscription_Summary AS
SELECT 
    m.member_id,
    m.name AS member_name,
    m.contact_info,
    s.start_date,
    s.end_date,
    s.status
FROM 
    Member m
JOIN 
    Subscription s ON m.member_id = s.member_id;

-- View 2: Trainer Session Overview
-- Summarizes each trainer and the number of sessions they are assigned to
CREATE VIEW Trainer_Session_Count AS
SELECT 
    t.trainer_id,
    t.name AS trainer_name,
    COUNT(s.session_id) AS total_sessions
FROM 
    Trainer t
LEFT JOIN 
    Session s ON t.trainer_id = s.trainer_id
GROUP BY 
    t.trainer_id, t.name;

-- Stored Procedure 1: AddNewBooking
-- Inserts a new booking for a member into a session
DELIMITER //
CREATE PROCEDURE AddNewBooking(
    IN p_member_id INT,
    IN p_session_id INT,
    IN p_booking_date DATE
)
BEGIN
    INSERT INTO Booking(member_id, session_id, booking_date, status)
    VALUES (p_member_id, p_session_id, p_booking_date, 'booked');
END //
DELIMITER ;

-- Stored Procedure 2: LogPayment
-- Records a payment made by a member
DELIMITER //
CREATE PROCEDURE LogPayment(
    IN p_member_id INT,
    IN p_amount DECIMAL(10,2),
    IN p_method ENUM('cash', 'card', 'online')
)
BEGIN
    INSERT INTO Payment(member_id, amount, payment_date, method)
    VALUES (p_member_id, p_amount, CURDATE(), p_method);
END //
DELIMITER ;

-- Stored Procedure 3: UpdateMemberWorkoutHistory (JSON manipulation)
DELIMITER //
CREATE PROCEDURE UpdateMemberWorkoutHistory(
    IN p_member_id INT,
    IN p_workout_date DATE,
    IN p_exercise_type VARCHAR(100),
    IN p_duration INT,
    IN p_calories_burned INT
)
BEGIN
    UPDATE Member 
    SET workout_history = JSON_ARRAY_APPEND(
        COALESCE(workout_history, JSON_ARRAY()),
        '$',
        JSON_OBJECT(
            'date', p_workout_date,
            'exercise_type', p_exercise_type,
            'duration_minutes', p_duration,
            'calories_burned', p_calories_burned
        )
    )
    WHERE member_id = p_member_id;
END //
DELIMITER ;

-- here is we automatically add the new member in the attendance when booking was done
DELIMITER //
CREATE TRIGGER auto_add_attendance_on_completed_booking
AFTER UPDATE ON Booking
FOR EACH ROW
BEGIN
    IF NEW.status = 'completed' AND OLD.status != 'completed' THEN
        INSERT INTO Attendance(member_id, session_id, check_in_time)
        VALUES (NEW.member_id, NEW.session_id, NOW());
    END IF;
END //
DELIMITER ;

-- Performance indexes ==> this will make the  searches, joins, or filters more faster
CREATE INDEX idx_booking_member ON Booking(member_id);
CREATE INDEX idx_booking_session ON Booking(session_id);
CREATE INDEX idx_feedback_trainer ON Feedback(trainer_id);
CREATE INDEX idx_payment_member ON Payment(member_id);
CREATE INDEX idx_attendance_member ON Attendance(member_id);
CREATE INDEX idx_attendance_session ON Attendance(session_id);
CREATE INDEX idx_subscription_member ON Subscription(member_id);
CREATE INDEX idx_session_trainer ON Session(trainer_id);
CREATE INDEX idx_maintenance_equipment ON Maintenance_Log(equipment_id);

-- Full-text search indexes for text fields
CREATE FULLTEXT INDEX idx_member_name ON Member(name);
CREATE FULLTEXT INDEX idx_trainer_specialty ON Trainer(specialty);
CREATE FULLTEXT INDEX idx_feedback_comments ON Feedback(comments);


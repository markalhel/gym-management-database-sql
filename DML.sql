-- ============================================
-- DATA MANIPULATION LANGUAGE (DML) SECTION
-- Sample Data Insertion (200+ Records)
-- ============================================
-- Insert Members (30 records)
USE gym_management;
INSERT INTO Member (name, contact_info, date_joined, workout_history, health_profile) VALUES
('John Smith', 'john.smith@email.com, (555) 123-4567', '2024-01-15', 
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-01-20', 'exercise_type', 'cardio', 'duration_minutes', 45, 'calories_burned', 350),
     JSON_OBJECT('date', '2024-01-22', 'exercise_type', 'strength', 'duration_minutes', 60, 'calories_burned', 280)
 ),
 '<health_profile><age>28</age><weight>175</weight><height>180</height><medical_conditions>none</medical_conditions><fitness_goals><goal>weight_loss</goal><goal>muscle_gain</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Sarah Johnson', 'sarah.j@email.com, (555) 234-5678', '2024-01-20',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-01-25', 'exercise_type', 'yoga', 'duration_minutes', 75, 'calories_burned', 200),
     JSON_OBJECT('date', '2024-01-27', 'exercise_type', 'pilates', 'duration_minutes', 50, 'calories_burned', 180)
 ),
 '<health_profile><age>32</age><weight>145</weight><height>165</height><medical_conditions>mild_asthma</medical_conditions><fitness_goals><goal>flexibility</goal><goal>stress_relief</goal></fitness_goals><allergies>pollen</allergies></health_profile>'),

('Mike Chen', 'mike.chen@email.com, (555) 345-6789', '2024-02-01',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-02-05', 'exercise_type', 'crossfit', 'duration_minutes', 90, 'calories_burned', 550),
     JSON_OBJECT('date', '2024-02-07', 'exercise_type', 'running', 'duration_minutes', 30, 'calories_burned', 300)
 ),
 '<health_profile><age>25</age><weight>185</weight><height>175</height><medical_conditions>none</medical_conditions><fitness_goals><goal>endurance</goal><goal>strength</goal></fitness_goals><allergies>shellfish</allergies></health_profile>'),

('Emily Davis', 'emily.davis@email.com, (555) 456-7890', '2024-02-10',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-02-15', 'exercise_type', 'swimming', 'duration_minutes', 60, 'calories_burned', 400)
 ),
 '<health_profile><age>29</age><weight>155</weight><height>170</height><medical_conditions>none</medical_conditions><fitness_goals><goal>cardiovascular_health</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Robert Wilson', 'robert.w@email.com, (555) 567-8901', '2024-02-15',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-02-20', 'exercise_type', 'weightlifting', 'duration_minutes', 75, 'calories_burned', 320)
 ),
 '<health_profile><age>35</age><weight>200</weight><height>185</height><medical_conditions>high_blood_pressure</medical_conditions><fitness_goals><goal>muscle_gain</goal><goal>strength</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Lisa Garcia', 'lisa.garcia@email.com, (555) 678-9012', '2024-03-01',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-03-05', 'exercise_type', 'zumba', 'duration_minutes', 45, 'calories_burned', 250)
 ),
 '<health_profile><age>27</age><weight>135</weight><height>160</height><medical_conditions>none</medical_conditions><fitness_goals><goal>weight_loss</goal><goal>coordination</goal></fitness_goals><allergies>nuts</allergies></health_profile>'),

('David Brown', 'david.brown@email.com, (555) 789-0123', '2024-03-10',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-03-15', 'exercise_type', 'cycling', 'duration_minutes', 120, 'calories_burned', 800)
 ),
 '<health_profile><age>42</age><weight>170</weight><height>178</height><medical_conditions>diabetes_type2</medical_conditions><fitness_goals><goal>cardiovascular_health</goal><goal>weight_management</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Jennifer Lee', 'jennifer.lee@email.com, (555) 890-1234', '2024-03-15',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-03-20', 'exercise_type', 'boxing', 'duration_minutes', 60, 'calories_burned', 450)
 ),
 '<health_profile><age>31</age><weight>140</weight><height>168</height><medical_conditions>none</medical_conditions><fitness_goals><goal>self_defense</goal><goal>stress_relief</goal></fitness_goals><allergies>latex</allergies></health_profile>'),

('Kevin Martinez', 'kevin.martinez@email.com, (555) 901-2345', '2024-04-01',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-04-05', 'exercise_type', 'basketball', 'duration_minutes', 90, 'calories_burned', 500)
 ),
 '<health_profile><age>24</age><weight>190</weight><height>188</height><medical_conditions>none</medical_conditions><fitness_goals><goal>agility</goal><goal>team_sports</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Amanda Taylor', 'amanda.taylor@email.com, (555) 012-3456', '2024-04-10',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-04-15', 'exercise_type', 'dance', 'duration_minutes', 75, 'calories_burned', 350)
 ),
 '<health_profile><age>26</age><weight>125</weight><height>163</height><medical_conditions>none</medical_conditions><fitness_goals><goal>flexibility</goal><goal>fun_fitness</goal></fitness_goals><allergies>peanuts</allergies></health_profile>'),

('Chris Anderson', 'chris.anderson@email.com, (555) 123-5678', '2024-04-20',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-04-25', 'exercise_type', 'rock_climbing', 'duration_minutes', 120, 'calories_burned', 650)
 ),
 '<health_profile><age>33</age><weight>165</weight><height>175</height><medical_conditions>none</medical_conditions><fitness_goals><goal>strength</goal><goal>adventure_sports</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Michelle White', 'michelle.white@email.com, (555) 234-6789', '2024-05-01',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-05-05', 'exercise_type', 'tai_chi', 'duration_minutes', 60, 'calories_burned', 150)
 ),
 '<health_profile><age>38</age><weight>150</weight><height>167</height><medical_conditions>arthritis</medical_conditions><fitness_goals><goal>flexibility</goal><goal>pain_management</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Steven Thomas', 'steven.thomas@email.com, (555) 345-7890', '2024-05-10',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-05-15', 'exercise_type', 'rowing', 'duration_minutes', 45, 'calories_burned', 380)
 ),
 '<health_profile><age>29</age><weight>180</weight><height>182</height><medical_conditions>none</medical_conditions><fitness_goals><goal>endurance</goal><goal>full_body_workout</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Rachel Green', 'rachel.green@email.com, (555) 456-8901', '2024-05-15',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-05-20', 'exercise_type', 'spinning', 'duration_minutes', 50, 'calories_burned', 420)
 ),
 '<health_profile><age>30</age><weight>142</weight><height>164</height><medical_conditions>none</medical_conditions><fitness_goals><goal>cardiovascular_health</goal><goal>leg_strength</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Jason Miller', 'jason.miller@email.com, (555) 567-9012', '2024-06-01',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-06-05', 'exercise_type', 'martial_arts', 'duration_minutes', 90, 'calories_burned', 500)
 ),
 '<health_profile><age>27</age><weight>175</weight><height>177</height><medical_conditions>none</medical_conditions><fitness_goals><goal>self_defense</goal><goal>discipline</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Nicole Parker', 'nicole.parker@email.com, (555) 678-0123', '2024-06-10',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-06-15', 'exercise_type', 'barre', 'duration_minutes', 55, 'calories_burned', 220)
 ),
 '<health_profile><age>34</age><weight>138</weight><height>162</height><medical_conditions>none</medical_conditions><fitness_goals><goal>toning</goal><goal>posture</goal></fitness_goals><allergies>soy</allergies></health_profile>'),

('Daniel Rodriguez', 'daniel.rodriguez@email.com, (555) 789-1234', '2024-06-15',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-06-20', 'exercise_type', 'functional_training', 'duration_minutes', 70, 'calories_burned', 400)
 ),
 '<health_profile><age>36</age><weight>195</weight><height>183</height><medical_conditions>lower_back_pain</medical_conditions><fitness_goals><goal>core_strength</goal><goal>injury_prevention</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Stephanie Hall', 'stephanie.hall@email.com, (555) 890-2345', '2024-07-01',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-07-05', 'exercise_type', 'aqua_aerobics', 'duration_minutes', 60, 'calories_burned', 300)
 ),
 '<health_profile><age>45</age><weight>160</weight><height>165</height><medical_conditions>joint_pain</medical_conditions><fitness_goals><goal>low_impact_exercise</goal><goal>mobility</goal></fitness_goals><allergies>chlorine</allergies></health_profile>'),

('Ryan Evans', 'ryan.evans@email.com, (555) 901-3456', '2024-07-10',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-07-15', 'exercise_type', 'hiit', 'duration_minutes', 30, 'calories_burned', 350)
 ),
 '<health_profile><age>26</age><weight>170</weight><height>176</height><medical_conditions>none</medical_conditions><fitness_goals><goal>fat_loss</goal><goal>time_efficiency</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Kimberly Wright', 'kimberly.wright@email.com, (555) 012-4567', '2024-07-15',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-07-20', 'exercise_type', 'stretching', 'duration_minutes', 40, 'calories_burned', 100)
 ),
 '<health_profile><age>41</age><weight>148</weight><height>169</height><medical_conditions>fibromyalgia</medical_conditions><fitness_goals><goal>flexibility</goal><goal>pain_relief</goal></fitness_goals><allergies>fragrances</allergies></health_profile>'),

('Brandon Scott', 'brandon.scott@email.com, (555) 123-6789', '2024-08-01',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-08-05', 'exercise_type', 'powerlifting', 'duration_minutes', 90, 'calories_burned', 380)
 ),
 '<health_profile><age>28</age><weight>210</weight><height>190</height><medical_conditions>none</medical_conditions><fitness_goals><goal>strength</goal><goal>competition</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Melissa Adams', 'melissa.adams@email.com, (555) 234-7890', '2024-08-10',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-08-15', 'exercise_type', 'meditation', 'duration_minutes', 30, 'calories_burned', 50)
 ),
 '<health_profile><age>37</age><weight>152</weight><height>166</height><medical_conditions>anxiety</medical_conditions><fitness_goals><goal>stress_relief</goal><goal>mental_health</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Tyler Nelson', 'tyler.nelson@email.com, (555) 345-8901', '2024-08-15',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-08-20', 'exercise_type', 'crossfit', 'duration_minutes', 75, 'calories_burned', 520)
 ),
 '<health_profile><age>23</age><weight>168</weight><height>173</height><medical_conditions>none</medical_conditions><fitness_goals><goal>overall_fitness</goal><goal>competition</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Christina King', 'christina.king@email.com, (555) 456-9012', '2024-09-01',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-09-05', 'exercise_type', 'aerial_yoga', 'duration_minutes', 60, 'calories_burned', 280)
 ),
 '<health_profile><age>31</age><weight>145</weight><height>168</height><medical_conditions>none</medical_conditions><fitness_goals><goal>flexibility</goal><goal>core_strength</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Anthony Lopez', 'anthony.lopez@email.com, (555) 567-0123', '2024-09-10',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-09-15', 'exercise_type', 'tennis', 'duration_minutes', 90, 'calories_burned', 450)
 ),
 '<health_profile><age>39</age><weight>185</weight><height>181</height><medical_conditions>none</medical_conditions><fitness_goals><goal>hand_eye_coordination</goal><goal>cardio</goal></fitness_goals><allergies>grass</allergies></health_profile>'),

('Hannah Moore', 'hannah.moore@email.com, (555) 678-1234', '2024-09-15',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-09-20', 'exercise_type', 'kickboxing', 'duration_minutes', 55, 'calories_burned', 400)
 ),
 '<health_profile><age>25</age><weight>132</weight><height>161</height><medical_conditions>none</medical_conditions><fitness_goals><goal>self_defense</goal><goal>stress_relief</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Matthew Clark', 'matthew.clark@email.com, (555) 789-2345', '2024-10-01',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-10-05', 'exercise_type', 'calisthenics', 'duration_minutes', 60, 'calories_burned', 350)
 ),
 '<health_profile><age>32</age><weight>172</weight><height>179</height><medical_conditions>none</medical_conditions><fitness_goals><goal>bodyweight_mastery</goal><goal>functional_strength</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Ashley Hill', 'ashley.hill@email.com, (555) 890-3456', '2024-10-10',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-10-15', 'exercise_type', 'reformer_pilates', 'duration_minutes', 50, 'calories_burned', 200)
 ),
 '<health_profile><age>28</age><weight>140</weight><height>165</height><medical_conditions>scoliosis</medical_conditions><fitness_goals><goal>posture_correction</goal><goal>core_strength</goal></fitness_goals><allergies>none</allergies></health_profile>'),

('Jacob Turner', 'jacob.turner@email.com, (555) 901-4567', '2024-10-15',
 JSON_ARRAY(
     JSON_OBJECT('date', '2024-10-20', 'exercise_type', 'obstacle_course', 'duration_minutes', 120, 'calories_burned', 700)
 ),
 '<health_profile><age>30</age><weight>178</weight><height>174</height><medical_conditions>none</medical_conditions><fitness_goals><goal>adventure_fitness</goal><goal>endurance</goal></fitness_goals><allergies>none</allergies></health_profile>');

-- Insert Trainers (15 records)
INSERT INTO Trainer (name, specialty, contact, trainer_schedule, certifications_xml) VALUES
('Alex Thompson', 'Personal Training', 'alex.thompson@gym.com, (555) 100-1001', 'Monday-Friday 6AM-2PM',
 '<certifications><cert><name>NASM-CPT</name><issued_date>2022-03-15</issued_date><expires>2025-03-15</expires><issuer>NASM</issuer></cert><cert><name>Nutrition Specialist</name><issued_date>2023-01-10</issued_date><expires>2026-01-10</expires><issuer>NASM</issuer></cert><specializations><spec>Weight Loss</spec><spec>Strength Training</spec></specializations></certifications>'),

('Maria Rodriguez', 'Yoga', 'maria.rodriguez@gym.com, (555) 100-1002', 'Tuesday-Saturday 8AM-4PM',
 '<certifications><cert><name>RYT-500</name><issued_date>2021-05-20</issued_date><expires>2024-05-20</expires><issuer>Yoga Alliance</issuer></cert><cert><name>Meditation Teacher</name><issued_date>2022-08-15</issued_date><expires>2025-08-15</expires><issuer>Mindfulness Institute</issuer></cert><specializations><spec>Hatha Yoga</spec><spec>Vinyasa</spec><spec>Meditation</spec></specializations></certifications>'),

('James Wilson', 'CrossFit', 'james.wilson@gym.com, (555) 100-1003', 'Monday-Friday 5AM-1PM',
 '<certifications><cert><name>CrossFit Level 2</name><issued_date>2022-11-30</issued_date><expires>2025-11-30</expires><issuer>CrossFit Inc</issuer></cert><cert><name>Olympic Weightlifting</name><issued_date>2023-02-28</issued_date><expires>2026-02-28</expires><issuer>USA Weightlifting</issuer></cert><specializations><spec>Functional Fitness</spec><spec>Competition Training</spec></specializations></certifications>'),

('Sophie Chen', 'Pilates', 'sophie.chen@gym.com, (555) 100-1004', 'Wednesday-Sunday 9AM-5PM',
 '<certifications><cert><name>PMA-CPT</name><issued_date>2021-09-12</issued_date><expires>2024-09-12</expires><issuer>Pilates Method Alliance</issuer></cert><cert><name>Reformer Instructor</name><issued_date>2022-04-18</issued_date><expires>2025-04-18</expires><issuer>Romana Pilates</issuer></cert><specializations><spec>Rehabilitation</spec><spec>Prenatal Pilates</spec></specializations></certifications>'),

('Michael Davis', 'Swimming', 'michael.davis@gym.com, (555) 100-1005', 'Monday-Friday 6AM-2PM, Saturday 8AM-12PM',
 '<certifications><cert><name>Water Safety Instructor</name><issued_date>2020-06-01</issued_date><expires>2024-06-01</expires><issuer>American Red Cross</issuer></cert><cert><name>Swim Coach Level 3</name><issued_date>2021-12-10</issued_date><expires>2024-12-10</expires><issuer>USA Swimming</issuer></cert><specializations><spec>Stroke Technique</spec><spec>Aqua Fitness</spec></specializations></certifications>'),

('Rachel Green', 'Dance Fitness', 'rachel.green@gym.com, (555) 100-1006', 'Tuesday-Saturday 4PM-9PM',
 '<certifications><cert><name>Zumba Instructor</name><issued_date>2022-07-22</issued_date><expires>2025-07-22</expires><issuer>Zumba Fitness</issuer></cert><cert><name>Dance Movement Therapy</name><issued_date>2023-03-30</issued_date><expires>2026-03-30</expires><issuer>ADTA</issuer></cert><specializations><spec>Latin Dance</spec><spec>Hip Hop Fitness</spec></specializations></certifications>'),

('David Kim', 'Martial Arts', 'david.kim@gym.com, (555) 100-1007', 'Monday-Friday 5PM-9PM',
 '<certifications><cert><name>Black Belt Taekwondo</name><issued_date>2018-11-15</issued_date><expires>never</expires><issuer>World Taekwondo Federation</issuer></cert><cert><name>Boxing Coach</name><issued_date>2021-08-20</issued_date><expires>2024-08-20</expires><issuer>USA Boxing</issuer></cert><specializations><spec>Self Defense</spec><spec>Competition Training</spec></specializations></certifications>'),

('Laura Johnson', 'Cycling', 'laura.johnson@gym.com, (555) 100-1008', 'Monday-Friday 6AM-10AM, 5PM-7PM',
 '<certifications><cert><name>Spinning Instructor</name><issued_date>2022-02-14</issued_date><expires>2025-02-14</expires><issuer>Mad Dogg Athletics</issuer></cert><cert><name>Indoor Cycling Coach</name><issued_date>2022-10-05</issued_date><expires>2025-10-05</expires><issuer>CyclingFusion</issuer></cert><specializations><spec>HIIT Cycling</spec><spec>Endurance Training</spec></specializations></certifications>'),

('Ryan Martinez', 'Strength Training', 'ryan.martinez@gym.com, (555) 100-1009', 'Tuesday-Saturday 7AM-3PM',
 '<certifications><cert><name>CSCS</name><issued_date>2021-04-25</issued_date><expires>2024-04-25</expires><issuer>NSCA</issuer></cert><cert><name>Powerlifting Coach</name><issued_date>2022-09-18</issued_date><expires>2025-09-18</expires><issuer>USA Powerlifting</issuer></cert><specializations><spec>Powerlifting</spec><spec>Bodybuilding</spec></specializations></certifications>'),

('Emily White', 'Barre', 'emily.white@gym.com, (555) 100-1010', 'Monday-Friday 9AM-1PM, 6PM-8PM',
 '<certifications><cert><name>Barre Instructor</name><issued_date>2022-06-30</issued_date><expires>2025-06-30</expires><issuer>Pure Barre</issuer></cert><cert><name>Ballet Fitness</name><issued_date>2023-01-15</issued_date><expires>2026-01-15</expires><issuer>BarreAmped</issuer></cert><specializations><spec>Classical Barre</spec><spec>Barre HIIT</spec></specializations></certifications>'),

('Carlos Lopez', 'Functional Training', 'carlos.lopez@gym.com, (555) 100-1011', 'Wednesday-Sunday 6AM-2PM',
 '<certifications><cert><name>FMS Level 2</name><issued_date>2021-11-08</issued_date><expires>2024-11-08</expires><issuer>Functional Movement Systems</issuer></cert><cert><name>TRX Instructor</name><issued_date>2022-05-12</issued_date><expires>2025-05-12</expires><issuer>TRX</issuer></cert><specializations><spec>Movement Screening</spec><spec>Injury Prevention</spec></specializations></certifications>'),

('Jennifer Brown', 'Rehabilitation', 'jennifer.brown@gym.com, (555) 100-1012', 'Monday-Friday 8AM-4PM',
 '<certifications><cert><name>ACSM-CEP</name><issued_date>2020-12-20</issued_date><expires>2023-12-20</expires><issuer>ACSM</issuer></cert><cert><name>Medical Exercise Specialist</name><issued_date>2021-07-30</issued_date><expires>2024-07-30</expires><issuer>Medical Fitness Association</issuer></cert><specializations><spec>Cardiac Rehabilitation</spec><spec>Post-Injury Training</spec></specializations></certifications>'),

('Kevin Taylor', 'Boxing', 'kevin.taylor@gym.com, (555) 100-1013', 'Tuesday-Saturday 4PM-10PM',
 '<certifications><cert><name>USA Boxing Coach</name><issued_date>2021-03-18</issued_date><expires>2024-03-18</expires><issuer>USA Boxing</issuer></cert><cert><name>Kickboxing Instructor</name><issued_date>2022-12-05</issued_date><expires>2025-12-05</expires><issuer>World Kickboxing Association</issuer></cert><specializations><spec>Technical Boxing</spec><spec>Fitness Boxing</spec></specializations></certifications>'),

('Amanda Garcia', 'Aqua Fitness', 'amanda.garcia@gym.com, (555) 100-1014', 'Monday-Friday 9AM-1PM, 3PM-5PM',
 '<certifications><cert><name>AEA Aquatic Fitness</name><issued_date>2022-01-28</issued_date><expires>2025-01-28</expires><issuer>Aquatic Exercise Association</issuer></cert><cert><name>Arthritis Foundation Aquatic</name><issued_date>2022-08-10</issued_date><expires>2025-08-10</expires><issuer>Arthritis Foundation</issuer></cert><specializations><spec>Senior Aqua Fitness</spec><spec>Aqua Rehabilitation</spec></specializations></certifications>'),

('Brian Anderson', 'HIIT', 'brian.anderson@gym.com, (555) 100-1015', 'Monday-Friday 5:30AM-9:30AM, 5:30PM-7:30PM',
 '<certifications><cert><name>HIIT Specialist</name><issued_date>2022-04-12</issued_date><expires>2025-04-12</expires><issuer>NASM</issuer></cert><cert><name>Metabolic Conditioning</name><issued_date>2023-02-20</issued_date><expires>2026-02-20</expires><issuer>Precision Nutrition</issuer></cert><specializations><spec>Fat Loss</spec><spec>Athletic Performance</spec></specializations></certifications>');
-- Insert Members (Corrected 200+ records)
INSERT INTO Member (name, contact_info, date_joined, workout_history, health_profile) VALUES
('Avery Smith', 'avery.smith@email.com, (555) 480-2714', '2024-01-17', JSON_ARRAY(JSON_OBJECT('date', '2024-01-24', 'exercise_type', 'swimming', 'duration_minutes', 69, 'calories_burned', 317), JSON_OBJECT('date', '2024-02-14', 'exercise_type', 'strength', 'duration_minutes', 31, 'calories_burned', 375)), '<health_profile><age>51</age><weight>190</weight><height>151</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>stress_relief</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Riley Anderson', 'riley.anderson@email.com, (555) 823-1093', '2024-05-06', JSON_ARRAY(JSON_OBJECT('date', '2024-05-14', 'exercise_type', 'cycling', 'duration_minutes', 43, 'calories_burned', 252), JSON_OBJECT('date', '2024-05-16', 'exercise_type', 'cardio', 'duration_minutes', 36, 'calories_burned', 380)), '<health_profile><age>40</age><weight>160</weight><height>170</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>flexibility</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Avery Moore', 'avery.moore@email.com, (555) 407-8132', '2024-04-16', JSON_ARRAY(JSON_OBJECT('date', '2024-05-11', 'exercise_type', 'yoga', 'duration_minutes', 33, 'calories_burned', 432), JSON_OBJECT('date', '2024-05-09', 'exercise_type', 'strength', 'duration_minutes', 39, 'calories_burned', 314), JSON_OBJECT('date', '2024-05-04', 'exercise_type', 'yoga', 'duration_minutes', 72, 'calories_burned', 483)), '<health_profile><age>23</age><weight>178</weight><height>185</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>flexibility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Jamie Thomas', 'jamie.thomas@email.com, (555) 535-9734', '2024-03-29', JSON_ARRAY(JSON_OBJECT('date', '2024-04-21', 'exercise_type', 'yoga', 'duration_minutes', 90, 'calories_burned', 554), JSON_OBJECT('date', '2024-04-22', 'exercise_type', 'swimming', 'duration_minutes', 68, 'calories_burned', 468), JSON_OBJECT('date', '2024-03-30', 'exercise_type', 'strength', 'duration_minutes', 48, 'calories_burned', 439)), '<health_profile><age>43</age><weight>174</weight><height>190</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>flexibility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Jordan Lee', 'jordan.lee@email.com, (555) 388-4982', '2024-02-07', JSON_ARRAY(JSON_OBJECT('date', '2024-03-07', 'exercise_type', 'zumba', 'duration_minutes', 46, 'calories_burned', 542)), '<health_profile><age>47</age><weight>141</weight><height>167</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>strength</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Avery Brown', 'avery.brown@email.com, (555) 152-4257', '2024-05-20', JSON_ARRAY(JSON_OBJECT('date', '2024-05-31', 'exercise_type', 'hiit', 'duration_minutes', 72, 'calories_burned', 488)), '<health_profile><age>48</age><weight>183</weight><height>171</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Reese Thomas', 'reese.thomas@email.com, (555) 614-4363', '2024-02-20', JSON_ARRAY(JSON_OBJECT('date', '2024-03-17', 'exercise_type', 'yoga', 'duration_minutes', 65, 'calories_burned', 308), JSON_OBJECT('date', '2024-03-03', 'exercise_type', 'hiit', 'duration_minutes', 81, 'calories_burned', 310)), '<health_profile><age>24</age><weight>167</weight><height>173</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>strength</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Casey Wilson', 'casey.wilson@email.com, (555) 597-1920', '2024-02-06', JSON_ARRAY(JSON_OBJECT('date', '2024-02-20', 'exercise_type', 'strength', 'duration_minutes', 39, 'calories_burned', 353), JSON_OBJECT('date', '2024-02-23', 'exercise_type', 'swimming', 'duration_minutes', 66, 'calories_burned', 514), JSON_OBJECT('date', '2024-03-07', 'exercise_type', 'yoga', 'duration_minutes', 87, 'calories_burned', 501)), '<health_profile><age>21</age><weight>125</weight><height>181</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>weight_loss</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Alex Lee', 'alex.lee@email.com, (555) 444-2161', '2024-05-05', JSON_ARRAY(JSON_OBJECT('date', '2024-05-16', 'exercise_type', 'cardio', 'duration_minutes', 75, 'calories_burned', 208)), '<health_profile><age>52</age><weight>147</weight><height>151</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>endurance</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Alex Davis', 'alex.davis@email.com, (555) 155-3439', '2024-05-27', JSON_ARRAY(JSON_OBJECT('date', '2024-06-21', 'exercise_type', 'yoga', 'duration_minutes', 59, 'calories_burned', 581), JSON_OBJECT('date', '2024-06-24', 'exercise_type', 'cardio', 'duration_minutes', 73, 'calories_burned', 253)), '<health_profile><age>55</age><weight>122</weight><height>181</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>mobility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jordan Johnson', 'jordan.johnson@email.com, (555) 901-8054', '2024-05-09', JSON_ARRAY(JSON_OBJECT('date', '2024-06-05', 'exercise_type', 'yoga', 'duration_minutes', 51, 'calories_burned', 408), JSON_OBJECT('date', '2024-06-05', 'exercise_type', 'zumba', 'duration_minutes', 37, 'calories_burned', 589)), '<health_profile><age>36</age><weight>123</weight><height>174</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>strength</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Jordan Brown', 'jordan.brown@email.com, (555) 261-3187', '2024-03-02', JSON_ARRAY(JSON_OBJECT('date', '2024-03-24', 'exercise_type', 'swimming', 'duration_minutes', 79, 'calories_burned', 484), JSON_OBJECT('date', '2024-03-16', 'exercise_type', 'strength', 'duration_minutes', 55, 'calories_burned', 480), JSON_OBJECT('date', '2024-03-11', 'exercise_type', 'cycling', 'duration_minutes', 36, 'calories_burned', 331)), '<health_profile><age>35</age><weight>187</weight><height>169</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Morgan Wilson', 'morgan.wilson@email.com, (555) 267-3233', '2024-02-11', JSON_ARRAY(JSON_OBJECT('date', '2024-03-08', 'exercise_type', 'zumba', 'duration_minutes', 54, 'calories_burned', 541), JSON_OBJECT('date', '2024-03-02', 'exercise_type', 'zumba', 'duration_minutes', 46, 'calories_burned', 384)), '<health_profile><age>31</age><weight>121</weight><height>154</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>endurance</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Casey Davis', 'casey.davis@email.com, (555) 578-7712', '2024-01-04', JSON_ARRAY(JSON_OBJECT('date', '2024-01-15', 'exercise_type', 'swimming', 'duration_minutes', 52, 'calories_burned', 268), JSON_OBJECT('date', '2024-01-28', 'exercise_type', 'yoga', 'duration_minutes', 60, 'calories_burned', 588), JSON_OBJECT('date', '2024-01-09', 'exercise_type', 'yoga', 'duration_minutes', 75, 'calories_burned', 256)), '<health_profile><age>44</age><weight>146</weight><height>154</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>mobility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Riley Miller', 'riley.miller@email.com, (555) 886-2829', '2024-05-24', JSON_ARRAY(JSON_OBJECT('date', '2024-06-15', 'exercise_type', 'cycling', 'duration_minutes', 86, 'calories_burned', 224)), '<health_profile><age>19</age><weight>139</weight><height>167</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>endurance</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Reese Johnson', 'reese.johnson@email.com, (555) 365-6983', '2024-04-06', JSON_ARRAY(JSON_OBJECT('date', '2024-04-28', 'exercise_type', 'hiit', 'duration_minutes', 73, 'calories_burned', 227)), '<health_profile><age>21</age><weight>178</weight><height>158</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>mobility</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Jordan Davis', 'jordan.davis@email.com, (555) 798-9874', '2024-04-08', JSON_ARRAY(JSON_OBJECT('date', '2024-04-09', 'exercise_type', 'cardio', 'duration_minutes', 48, 'calories_burned', 532), JSON_OBJECT('date', '2024-04-13', 'exercise_type', 'cardio', 'duration_minutes', 58, 'calories_burned', 411)), '<health_profile><age>40</age><weight>131</weight><height>177</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>stress_relief</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Jamie Moore', 'jamie.moore@email.com, (555) 744-2426', '2024-02-14', JSON_ARRAY(JSON_OBJECT('date', '2024-02-21', 'exercise_type', 'hiit', 'duration_minutes', 49, 'calories_burned', 533), JSON_OBJECT('date', '2024-03-06', 'exercise_type', 'swimming', 'duration_minutes', 36, 'calories_burned', 205)), '<health_profile><age>37</age><weight>187</weight><height>187</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>flexibility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Alex Wilson', 'alex.wilson@email.com, (555) 304-7295', '2024-05-30', JSON_ARRAY(JSON_OBJECT('date', '2024-06-22', 'exercise_type', 'cycling', 'duration_minutes', 33, 'calories_burned', 485), JSON_OBJECT('date', '2024-06-04', 'exercise_type', 'strength', 'duration_minutes', 58, 'calories_burned', 346)), '<health_profile><age>50</age><weight>187</weight><height>158</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>stress_relief</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Jamie Wilson', 'jamie.wilson@email.com, (555) 239-5403', '2024-01-09', JSON_ARRAY(JSON_OBJECT('date', '2024-01-11', 'exercise_type', 'cardio', 'duration_minutes', 34, 'calories_burned', 507), JSON_OBJECT('date', '2024-02-08', 'exercise_type', 'hiit', 'duration_minutes', 83, 'calories_burned', 287)), '<health_profile><age>53</age><weight>167</weight><height>190</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>weight_loss</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Alex Wilson', 'alex.wilson@email.com, (555) 325-5776', '2024-04-04', JSON_ARRAY(JSON_OBJECT('date', '2024-04-08', 'exercise_type', 'swimming', 'duration_minutes', 59, 'calories_burned', 269), JSON_OBJECT('date', '2024-04-15', 'exercise_type', 'cycling', 'duration_minutes', 82, 'calories_burned', 485), JSON_OBJECT('date', '2024-04-08', 'exercise_type', 'hiit', 'duration_minutes', 84, 'calories_burned', 516)), '<health_profile><age>40</age><weight>140</weight><height>171</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>weight_loss</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Jordan Anderson', 'jordan.anderson@email.com, (555) 517-7104', '2024-04-20', JSON_ARRAY(JSON_OBJECT('date', '2024-05-03', 'exercise_type', 'cardio', 'duration_minutes', 80, 'calories_burned', 275)), '<health_profile><age>43</age><weight>122</weight><height>182</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>stress_relief</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jordan Smith', 'jordan.smith@email.com, (555) 591-1923', '2024-01-19', JSON_ARRAY(JSON_OBJECT('date', '2024-01-23', 'exercise_type', 'swimming', 'duration_minutes', 65, 'calories_burned', 530), JSON_OBJECT('date', '2024-02-16', 'exercise_type', 'zumba', 'duration_minutes', 61, 'calories_burned', 411), JSON_OBJECT('date', '2024-02-10', 'exercise_type', 'swimming', 'duration_minutes', 64, 'calories_burned', 267)), '<health_profile><age>54</age><weight>165</weight><height>169</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>mobility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Morgan Miller', 'morgan.miller@email.com, (555) 355-5263', '2024-03-30', JSON_ARRAY(JSON_OBJECT('date', '2024-04-10', 'exercise_type', 'yoga', 'duration_minutes', 90, 'calories_burned', 565)), '<health_profile><age>47</age><weight>131</weight><height>188</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>mobility</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Jamie Johnson', 'jamie.johnson@email.com, (555) 996-7779', '2024-03-28', JSON_ARRAY(JSON_OBJECT('date', '2024-04-26', 'exercise_type', 'zumba', 'duration_minutes', 59, 'calories_burned', 254)), '<health_profile><age>43</age><weight>152</weight><height>155</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jordan Davis', 'jordan.davis@email.com, (555) 377-4859', '2024-01-03', JSON_ARRAY(JSON_OBJECT('date', '2024-01-07', 'exercise_type', 'hiit', 'duration_minutes', 89, 'calories_burned', 236), JSON_OBJECT('date', '2024-01-21', 'exercise_type', 'cardio', 'duration_minutes', 46, 'calories_burned', 600)), '<health_profile><age>21</age><weight>167</weight><height>157</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>stress_relief</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Reese Miller', 'reese.miller@email.com, (555) 597-2483', '2024-03-27', JSON_ARRAY(JSON_OBJECT('date', '2024-04-25', 'exercise_type', 'cycling', 'duration_minutes', 84, 'calories_burned', 480)), '<health_profile><age>21</age><weight>180</weight><height>175</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>stress_relief</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Taylor Davis', 'taylor.davis@email.com, (555) 129-4195', '2024-04-26', JSON_ARRAY(JSON_OBJECT('date', '2024-04-29', 'exercise_type', 'yoga', 'duration_minutes', 79, 'calories_burned', 340), JSON_OBJECT('date', '2024-05-14', 'exercise_type', 'cycling', 'duration_minutes', 76, 'calories_burned', 419)), '<health_profile><age>20</age><weight>133</weight><height>177</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>flexibility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Taylor Brown', 'taylor.brown@email.com, (555) 643-7716', '2024-02-09', JSON_ARRAY(JSON_OBJECT('date', '2024-02-18', 'exercise_type', 'swimming', 'duration_minutes', 77, 'calories_burned', 536)), '<health_profile><age>44</age><weight>142</weight><height>185</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>weight_loss</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Alex Miller', 'alex.miller@email.com, (555) 879-4066', '2024-04-15', JSON_ARRAY(JSON_OBJECT('date', '2024-04-18', 'exercise_type', 'zumba', 'duration_minutes', 43, 'calories_burned', 413)), '<health_profile><age>29</age><weight>156</weight><height>153</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>flexibility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Emerson Smith', 'emerson.smith@email.com, (555) 548-3766', '2024-03-22', JSON_ARRAY(JSON_OBJECT('date', '2024-04-12', 'exercise_type', 'strength', 'duration_minutes', 68, 'calories_burned', 548), JSON_OBJECT('date', '2024-04-08', 'exercise_type', 'yoga', 'duration_minutes', 87, 'calories_burned', 348)), '<health_profile><age>51</age><weight>185</weight><height>190</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>endurance</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jamie Davis', 'jamie.davis@email.com, (555) 249-6126', '2024-03-12', JSON_ARRAY(JSON_OBJECT('date', '2024-04-10', 'exercise_type', 'hiit', 'duration_minutes', 80, 'calories_burned', 536)), '<health_profile><age>30</age><weight>142</weight><height>163</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>endurance</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Emerson Davis', 'emerson.davis@email.com, (555) 983-1328', '2024-01-09', JSON_ARRAY(JSON_OBJECT('date', '2024-01-27', 'exercise_type', 'swimming', 'duration_minutes', 32, 'calories_burned', 442)), '<health_profile><age>46</age><weight>141</weight><height>161</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>stress_relief</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Morgan Brown', 'morgan.brown@email.com, (555) 863-3780', '2024-05-08', JSON_ARRAY(JSON_OBJECT('date', '2024-06-03', 'exercise_type', 'swimming', 'duration_minutes', 74, 'calories_burned', 404), JSON_OBJECT('date', '2024-05-09', 'exercise_type', 'hiit', 'duration_minutes', 89, 'calories_burned', 366)), '<health_profile><age>21</age><weight>177</weight><height>179</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>stress_relief</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jamie Moore', 'jamie.moore@email.com, (555) 229-9156', '2024-03-28', JSON_ARRAY(JSON_OBJECT('date', '2024-04-15', 'exercise_type', 'strength', 'duration_minutes', 90, 'calories_burned', 261), JSON_OBJECT('date', '2024-04-04', 'exercise_type', 'yoga', 'duration_minutes', 77, 'calories_burned', 401), JSON_OBJECT('date', '2024-04-27', 'exercise_type', 'hiit', 'duration_minutes', 41, 'calories_burned', 519)), '<health_profile><age>51</age><weight>161</weight><height>183</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>weight_loss</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Emerson Smith', 'emerson.smith@email.com, (555) 778-7654', '2024-03-10', JSON_ARRAY(JSON_OBJECT('date', '2024-03-19', 'exercise_type', 'yoga', 'duration_minutes', 90, 'calories_burned', 277), JSON_OBJECT('date', '2024-03-19', 'exercise_type', 'hiit', 'duration_minutes', 34, 'calories_burned', 597), JSON_OBJECT('date', '2024-03-22', 'exercise_type', 'strength', 'duration_minutes', 59, 'calories_burned', 514)), '<health_profile><age>44</age><weight>145</weight><height>186</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>mobility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Morgan Davis', 'morgan.davis@email.com, (555) 825-3503', '2024-03-22', JSON_ARRAY(JSON_OBJECT('date', '2024-04-01', 'exercise_type', 'strength', 'duration_minutes', 72, 'calories_burned', 470)), '<health_profile><age>48</age><weight>195</weight><height>173</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>endurance</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Riley Moore', 'riley.moore@email.com, (555) 927-2928', '2024-01-25', JSON_ARRAY(JSON_OBJECT('date', '2024-02-05', 'exercise_type', 'zumba', 'duration_minutes', 56, 'calories_burned', 479), JSON_OBJECT('date', '2024-02-21', 'exercise_type', 'yoga', 'duration_minutes', 41, 'calories_burned', 555)), '<health_profile><age>53</age><weight>141</weight><height>152</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>stress_relief</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Emerson Lee', 'emerson.lee@email.com, (555) 645-7415', '2024-02-13', JSON_ARRAY(JSON_OBJECT('date', '2024-03-08', 'exercise_type', 'hiit', 'duration_minutes', 61, 'calories_burned', 536), JSON_OBJECT('date', '2024-02-21', 'exercise_type', 'yoga', 'duration_minutes', 86, 'calories_burned', 299), JSON_OBJECT('date', '2024-02-18', 'exercise_type', 'cardio', 'duration_minutes', 71, 'calories_burned', 231)), '<health_profile><age>46</age><weight>142</weight><height>178</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>strength</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Avery Moore', 'avery.moore@email.com, (555) 400-4980', '2024-01-31', JSON_ARRAY(JSON_OBJECT('date', '2024-02-24', 'exercise_type', 'zumba', 'duration_minutes', 54, 'calories_burned', 418), JSON_OBJECT('date', '2024-02-20', 'exercise_type', 'swimming', 'duration_minutes', 66, 'calories_burned', 295)), '<health_profile><age>31</age><weight>161</weight><height>165</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>stress_relief</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Casey Smith', 'casey.smith@email.com, (555) 228-4951', '2024-01-27', JSON_ARRAY(JSON_OBJECT('date', '2024-02-14', 'exercise_type', 'swimming', 'duration_minutes', 39, 'calories_burned', 459), JSON_OBJECT('date', '2024-02-06', 'exercise_type', 'swimming', 'duration_minutes', 57, 'calories_burned', 243)), '<health_profile><age>33</age><weight>157</weight><height>170</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Alex Johnson', 'alex.johnson@email.com, (555) 806-6533', '2024-03-30', JSON_ARRAY(JSON_OBJECT('date', '2024-04-23', 'exercise_type', 'hiit', 'duration_minutes', 51, 'calories_burned', 514), JSON_OBJECT('date', '2024-04-24', 'exercise_type', 'strength', 'duration_minutes', 65, 'calories_burned', 445)), '<health_profile><age>30</age><weight>168</weight><height>177</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>mobility</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Riley Johnson', 'riley.johnson@email.com, (555) 331-8332', '2024-05-22', JSON_ARRAY(JSON_OBJECT('date', '2024-06-04', 'exercise_type', 'cycling', 'duration_minutes', 73, 'calories_burned', 290), JSON_OBJECT('date', '2024-05-25', 'exercise_type', 'swimming', 'duration_minutes', 86, 'calories_burned', 389), JSON_OBJECT('date', '2024-05-26', 'exercise_type', 'zumba', 'duration_minutes', 52, 'calories_burned', 443)), '<health_profile><age>29</age><weight>148</weight><height>190</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>strength</goal><goal>flexibility</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Alex Anderson', 'alex.anderson@email.com, (555) 848-9797', '2024-04-16', JSON_ARRAY(JSON_OBJECT('date', '2024-04-23', 'exercise_type', 'hiit', 'duration_minutes', 87, 'calories_burned', 297)), '<health_profile><age>41</age><weight>132</weight><height>187</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>strength</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Reese Moore', 'reese.moore@email.com, (555) 275-8437', '2024-05-28', JSON_ARRAY(JSON_OBJECT('date', '2024-06-23', 'exercise_type', 'yoga', 'duration_minutes', 67, 'calories_burned', 276), JSON_OBJECT('date', '2024-06-11', 'exercise_type', 'zumba', 'duration_minutes', 79, 'calories_burned', 271), JSON_OBJECT('date', '2024-06-09', 'exercise_type', 'swimming', 'duration_minutes', 72, 'calories_burned', 260)), '<health_profile><age>21</age><weight>133</weight><height>151</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>endurance</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jamie Miller', 'jamie.miller@email.com, (555) 160-9892', '2024-01-08', JSON_ARRAY(JSON_OBJECT('date', '2024-01-15', 'exercise_type', 'strength', 'duration_minutes', 68, 'calories_burned', 307), JSON_OBJECT('date', '2024-02-02', 'exercise_type', 'zumba', 'duration_minutes', 71, 'calories_burned', 554), JSON_OBJECT('date', '2024-01-20', 'exercise_type', 'strength', 'duration_minutes', 55, 'calories_burned', 472)), '<health_profile><age>23</age><weight>194</weight><height>180</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Emerson Moore', 'emerson.moore@email.com, (555) 470-5861', '2024-02-15', JSON_ARRAY(JSON_OBJECT('date', '2024-02-29', 'exercise_type', 'zumba', 'duration_minutes', 79, 'calories_burned', 241)), '<health_profile><age>35</age><weight>175</weight><height>166</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>endurance</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Riley Anderson', 'riley.anderson@email.com, (555) 802-6726', '2024-02-04', JSON_ARRAY(JSON_OBJECT('date', '2024-02-10', 'exercise_type', 'hiit', 'duration_minutes', 48, 'calories_burned', 323), JSON_OBJECT('date', '2024-02-26', 'exercise_type', 'zumba', 'duration_minutes', 32, 'calories_burned', 223), JSON_OBJECT('date', '2024-02-24', 'exercise_type', 'cardio', 'duration_minutes', 54, 'calories_burned', 302)), '<health_profile><age>43</age><weight>198</weight><height>160</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>endurance</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Morgan Anderson', 'morgan.anderson@email.com, (555) 998-2542', '2024-01-20', JSON_ARRAY(JSON_OBJECT('date', '2024-02-07', 'exercise_type', 'swimming', 'duration_minutes', 82, 'calories_burned', 546), JSON_OBJECT('date', '2024-02-16', 'exercise_type', 'cardio', 'duration_minutes', 67, 'calories_burned', 457)), '<health_profile><age>41</age><weight>160</weight><height>169</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>weight_loss</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Jordan Miller', 'jordan.miller@email.com, (555) 123-6914', '2024-03-28', JSON_ARRAY(JSON_OBJECT('date', '2024-04-25', 'exercise_type', 'cycling', 'duration_minutes', 56, 'calories_burned', 246), JSON_OBJECT('date', '2024-04-26', 'exercise_type', 'zumba', 'duration_minutes', 52, 'calories_burned', 449), JSON_OBJECT('date', '2024-04-05', 'exercise_type', 'yoga', 'duration_minutes', 33, 'calories_burned', 508)), '<health_profile><age>53</age><weight>187</weight><height>176</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>weight_loss</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Jamie Anderson', 'jamie.anderson@email.com, (555) 519-1710', '2024-05-18', JSON_ARRAY(JSON_OBJECT('date', '2024-05-23', 'exercise_type', 'zumba', 'duration_minutes', 49, 'calories_burned', 451), JSON_OBJECT('date', '2024-05-20', 'exercise_type', 'hiit', 'duration_minutes', 69, 'calories_burned', 421)), '<health_profile><age>40</age><weight>179</weight><height>185</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>weight_loss</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Riley Davis', 'riley.davis@email.com, (555) 789-3277', '2024-03-03', JSON_ARRAY(JSON_OBJECT('date', '2024-04-02', 'exercise_type', 'yoga', 'duration_minutes', 85, 'calories_burned', 503)), '<health_profile><age>18</age><weight>193</weight><height>155</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>strength</goal><goal>strength</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Riley Johnson', 'riley.johnson@email.com, (555) 686-8459', '2024-04-05', JSON_ARRAY(JSON_OBJECT('date', '2024-04-09', 'exercise_type', 'strength', 'duration_minutes', 70, 'calories_burned', 244)), '<health_profile><age>18</age><weight>127</weight><height>159</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>weight_loss</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Reese Thomas', 'reese.thomas@email.com, (555) 444-8247', '2024-05-28', JSON_ARRAY(JSON_OBJECT('date', '2024-06-22', 'exercise_type', 'cycling', 'duration_minutes', 77, 'calories_burned', 579), JSON_OBJECT('date', '2024-06-22', 'exercise_type', 'hiit', 'duration_minutes', 87, 'calories_burned', 505), JSON_OBJECT('date', '2024-06-14', 'exercise_type', 'strength', 'duration_minutes', 70, 'calories_burned', 349)), '<health_profile><age>54</age><weight>127</weight><height>170</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>mobility</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Reese Brown', 'reese.brown@email.com, (555) 985-4952', '2024-05-01', JSON_ARRAY(JSON_OBJECT('date', '2024-05-31', 'exercise_type', 'zumba', 'duration_minutes', 63, 'calories_burned', 406), JSON_OBJECT('date', '2024-05-16', 'exercise_type', 'hiit', 'duration_minutes', 71, 'calories_burned', 332), JSON_OBJECT('date', '2024-05-28', 'exercise_type', 'swimming', 'duration_minutes', 66, 'calories_burned', 474)), '<health_profile><age>36</age><weight>194</weight><height>156</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>strength</goal><goal>stress_relief</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Casey Wilson', 'casey.wilson@email.com, (555) 151-9340', '2024-03-02', JSON_ARRAY(JSON_OBJECT('date', '2024-03-25', 'exercise_type', 'yoga', 'duration_minutes', 70, 'calories_burned', 456), JSON_OBJECT('date', '2024-03-10', 'exercise_type', 'cardio', 'duration_minutes', 76, 'calories_burned', 599)), '<health_profile><age>43</age><weight>197</weight><height>188</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>mobility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Casey Johnson', 'casey.johnson@email.com, (555) 578-5839', '2024-03-26', JSON_ARRAY(JSON_OBJECT('date', '2024-03-31', 'exercise_type', 'strength', 'duration_minutes', 82, 'calories_burned', 525), JSON_OBJECT('date', '2024-04-25', 'exercise_type', 'yoga', 'duration_minutes', 43, 'calories_burned', 418), JSON_OBJECT('date', '2024-04-11', 'exercise_type', 'swimming', 'duration_minutes', 76, 'calories_burned', 555)), '<health_profile><age>18</age><weight>136</weight><height>165</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>flexibility</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Jordan Johnson', 'jordan.johnson@email.com, (555) 345-4343', '2024-01-01', JSON_ARRAY(JSON_OBJECT('date', '2024-01-02', 'exercise_type', 'cardio', 'duration_minutes', 39, 'calories_burned', 597), JSON_OBJECT('date', '2024-01-18', 'exercise_type', 'zumba', 'duration_minutes', 57, 'calories_burned', 328)), '<health_profile><age>28</age><weight>181</weight><height>174</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>mobility</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Casey Davis', 'casey.davis@email.com, (555) 757-2614', '2024-04-06', JSON_ARRAY(JSON_OBJECT('date', '2024-04-18', 'exercise_type', 'cardio', 'duration_minutes', 77, 'calories_burned', 314), JSON_OBJECT('date', '2024-04-16', 'exercise_type', 'cycling', 'duration_minutes', 88, 'calories_burned', 559), JSON_OBJECT('date', '2024-04-27', 'exercise_type', 'cycling', 'duration_minutes', 39, 'calories_burned', 266)), '<health_profile><age>19</age><weight>159</weight><height>157</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>mobility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Riley Miller', 'riley.miller@email.com, (555) 752-9656', '2024-03-05', JSON_ARRAY(JSON_OBJECT('date', '2024-03-26', 'exercise_type', 'zumba', 'duration_minutes', 59, 'calories_burned', 343)), '<health_profile><age>22</age><weight>177</weight><height>156</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>strength</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Reese Moore', 'reese.moore@email.com, (555) 720-4558', '2024-05-12', JSON_ARRAY(JSON_OBJECT('date', '2024-06-11', 'exercise_type', 'yoga', 'duration_minutes', 45, 'calories_burned', 417)), '<health_profile><age>22</age><weight>188</weight><height>161</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>mobility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Emerson Anderson', 'emerson.anderson@email.com, (555) 784-6792', '2024-01-05', JSON_ARRAY(JSON_OBJECT('date', '2024-01-10', 'exercise_type', 'yoga', 'duration_minutes', 76, 'calories_burned', 210)), '<health_profile><age>26</age><weight>158</weight><height>190</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>strength</goal><goal>weight_loss</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Avery Lee', 'avery.lee@email.com, (555) 186-7680', '2024-02-24', JSON_ARRAY(JSON_OBJECT('date', '2024-03-16', 'exercise_type', 'cardio', 'duration_minutes', 88, 'calories_burned', 440)), '<health_profile><age>35</age><weight>165</weight><height>162</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>stress_relief</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Taylor Wilson', 'taylor.wilson@email.com, (555) 457-5905', '2024-04-18', JSON_ARRAY(JSON_OBJECT('date', '2024-04-19', 'exercise_type', 'cycling', 'duration_minutes', 63, 'calories_burned', 395)), '<health_profile><age>31</age><weight>144</weight><height>172</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>stress_relief</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Reese Lee', 'reese.lee@email.com, (555) 119-4466', '2024-03-16', JSON_ARRAY(JSON_OBJECT('date', '2024-03-21', 'exercise_type', 'hiit', 'duration_minutes', 54, 'calories_burned', 286)), '<health_profile><age>49</age><weight>165</weight><height>176</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>stress_relief</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Emerson Davis', 'emerson.davis@email.com, (555) 404-1927', '2024-05-19', JSON_ARRAY(JSON_OBJECT('date', '2024-05-30', 'exercise_type', 'swimming', 'duration_minutes', 43, 'calories_burned', 397)), '<health_profile><age>48</age><weight>200</weight><height>183</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>stress_relief</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Emerson Wilson', 'emerson.wilson@email.com, (555) 282-7287', '2024-01-03', JSON_ARRAY(JSON_OBJECT('date', '2024-01-28', 'exercise_type', 'cardio', 'duration_minutes', 63, 'calories_burned', 466)), '<health_profile><age>21</age><weight>169</weight><height>189</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>flexibility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Morgan Miller', 'morgan.miller@email.com, (555) 746-2945', '2024-03-24', JSON_ARRAY(JSON_OBJECT('date', '2024-04-07', 'exercise_type', 'strength', 'duration_minutes', 37, 'calories_burned', 567), JSON_OBJECT('date', '2024-04-08', 'exercise_type', 'swimming', 'duration_minutes', 37, 'calories_burned', 414)), '<health_profile><age>42</age><weight>148</weight><height>165</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>flexibility</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Emerson Thomas', 'emerson.thomas@email.com, (555) 194-5154', '2024-01-25', JSON_ARRAY(JSON_OBJECT('date', '2024-01-28', 'exercise_type', 'swimming', 'duration_minutes', 39, 'calories_burned', 426)), '<health_profile><age>36</age><weight>134</weight><height>187</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>mobility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Casey Smith', 'casey.smith@email.com, (555) 191-2195', '2024-04-14', JSON_ARRAY(JSON_OBJECT('date', '2024-04-22', 'exercise_type', 'yoga', 'duration_minutes', 87, 'calories_burned', 529), JSON_OBJECT('date', '2024-04-19', 'exercise_type', 'swimming', 'duration_minutes', 46, 'calories_burned', 387)), '<health_profile><age>25</age><weight>175</weight><height>166</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>endurance</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Jordan Johnson', 'jordan.johnson@email.com, (555) 669-8918', '2024-05-07', JSON_ARRAY(JSON_OBJECT('date', '2024-05-22', 'exercise_type', 'swimming', 'duration_minutes', 81, 'calories_burned', 321), JSON_OBJECT('date', '2024-05-27', 'exercise_type', 'cardio', 'duration_minutes', 45, 'calories_burned', 230), JSON_OBJECT('date', '2024-06-05', 'exercise_type', 'zumba', 'duration_minutes', 67, 'calories_burned', 523)), '<health_profile><age>27</age><weight>139</weight><height>180</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>mobility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Reese Brown', 'reese.brown@email.com, (555) 406-8767', '2024-03-29', JSON_ARRAY(JSON_OBJECT('date', '2024-04-23', 'exercise_type', 'cardio', 'duration_minutes', 70, 'calories_burned', 474), JSON_OBJECT('date', '2024-04-05', 'exercise_type', 'zumba', 'duration_minutes', 50, 'calories_burned', 210)), '<health_profile><age>53</age><weight>145</weight><height>163</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Casey Anderson', 'casey.anderson@email.com, (555) 992-3227', '2024-03-29', JSON_ARRAY(JSON_OBJECT('date', '2024-04-17', 'exercise_type', 'strength', 'duration_minutes', 67, 'calories_burned', 402), JSON_OBJECT('date', '2024-04-23', 'exercise_type', 'cardio', 'duration_minutes', 50, 'calories_burned', 437), JSON_OBJECT('date', '2024-04-10', 'exercise_type', 'yoga', 'duration_minutes', 63, 'calories_burned', 450)), '<health_profile><age>41</age><weight>166</weight><height>167</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>mobility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Emerson Davis', 'emerson.davis@email.com, (555) 541-3858', '2024-02-12', JSON_ARRAY(JSON_OBJECT('date', '2024-02-19', 'exercise_type', 'strength', 'duration_minutes', 67, 'calories_burned', 479), JSON_OBJECT('date', '2024-02-19', 'exercise_type', 'swimming', 'duration_minutes', 37, 'calories_burned', 403), JSON_OBJECT('date', '2024-03-02', 'exercise_type', 'swimming', 'duration_minutes', 65, 'calories_burned', 285)), '<health_profile><age>21</age><weight>192</weight><height>162</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>flexibility</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Riley Davis', 'riley.davis@email.com, (555) 997-1071', '2024-01-31', JSON_ARRAY(JSON_OBJECT('date', '2024-02-20', 'exercise_type', 'zumba', 'duration_minutes', 41, 'calories_burned', 398)), '<health_profile><age>26</age><weight>178</weight><height>175</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>flexibility</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Jordan Anderson', 'jordan.anderson@email.com, (555) 259-9694', '2024-04-10', JSON_ARRAY(JSON_OBJECT('date', '2024-04-20', 'exercise_type', 'strength', 'duration_minutes', 37, 'calories_burned', 552)), '<health_profile><age>29</age><weight>154</weight><height>176</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Alex Brown', 'alex.brown@email.com, (555) 137-8307', '2024-01-17', JSON_ARRAY(JSON_OBJECT('date', '2024-02-16', 'exercise_type', 'yoga', 'duration_minutes', 37, 'calories_burned', 522)), '<health_profile><age>19</age><weight>179</weight><height>150</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>weight_loss</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Avery Miller', 'avery.miller@email.com, (555) 870-7322', '2024-03-16', JSON_ARRAY(JSON_OBJECT('date', '2024-04-01', 'exercise_type', 'strength', 'duration_minutes', 76, 'calories_burned', 436), JSON_OBJECT('date', '2024-04-12', 'exercise_type', 'hiit', 'duration_minutes', 64, 'calories_burned', 314), JSON_OBJECT('date', '2024-03-26', 'exercise_type', 'strength', 'duration_minutes', 43, 'calories_burned', 446)), '<health_profile><age>25</age><weight>144</weight><height>173</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jamie Lee', 'jamie.lee@email.com, (555) 258-4238', '2024-01-30', JSON_ARRAY(JSON_OBJECT('date', '2024-02-21', 'exercise_type', 'hiit', 'duration_minutes', 78, 'calories_burned', 572)), '<health_profile><age>28</age><weight>158</weight><height>174</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Avery Smith', 'avery.smith@email.com, (555) 181-9334', '2024-03-17', JSON_ARRAY(JSON_OBJECT('date', '2024-03-18', 'exercise_type', 'cycling', 'duration_minutes', 84, 'calories_burned', 276)), '<health_profile><age>45</age><weight>169</weight><height>172</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Taylor Brown', 'taylor.brown@email.com, (555) 580-2198', '2024-02-08', JSON_ARRAY(JSON_OBJECT('date', '2024-02-18', 'exercise_type', 'zumba', 'duration_minutes', 57, 'calories_burned', 283)), '<health_profile><age>46</age><weight>148</weight><height>183</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>weight_loss</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Alex Miller', 'alex.miller@email.com, (555) 813-5576', '2024-04-12', JSON_ARRAY(JSON_OBJECT('date', '2024-04-18', 'exercise_type', 'strength', 'duration_minutes', 54, 'calories_burned', 287)), '<health_profile><age>31</age><weight>200</weight><height>166</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jamie Johnson', 'jamie.johnson@email.com, (555) 206-7150', '2024-03-24', JSON_ARRAY(JSON_OBJECT('date', '2024-04-18', 'exercise_type', 'cardio', 'duration_minutes', 89, 'calories_burned', 356)), '<health_profile><age>53</age><weight>158</weight><height>175</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>strength</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Taylor Lee', 'taylor.lee@email.com, (555) 917-6671', '2024-03-12', JSON_ARRAY(JSON_OBJECT('date', '2024-04-04', 'exercise_type', 'strength', 'duration_minutes', 83, 'calories_burned', 473)), '<health_profile><age>54</age><weight>184</weight><height>168</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>endurance</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Reese Lee', 'reese.lee@email.com, (555) 108-6181', '2024-01-02', JSON_ARRAY(JSON_OBJECT('date', '2024-01-31', 'exercise_type', 'yoga', 'duration_minutes', 90, 'calories_burned', 348), JSON_OBJECT('date', '2024-01-23', 'exercise_type', 'strength', 'duration_minutes', 32, 'calories_burned', 401)), '<health_profile><age>22</age><weight>147</weight><height>183</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>endurance</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Morgan Miller', 'morgan.miller@email.com, (555) 497-2680', '2024-05-06', JSON_ARRAY(JSON_OBJECT('date', '2024-05-08', 'exercise_type', 'hiit', 'duration_minutes', 37, 'calories_burned', 379), JSON_OBJECT('date', '2024-05-18', 'exercise_type', 'cardio', 'duration_minutes', 87, 'calories_burned', 312), JSON_OBJECT('date', '2024-05-11', 'exercise_type', 'hiit', 'duration_minutes', 59, 'calories_burned', 311)), '<health_profile><age>24</age><weight>168</weight><height>159</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jamie Davis', 'jamie.davis@email.com, (555) 730-3261', '2024-05-21', JSON_ARRAY(JSON_OBJECT('date', '2024-05-22', 'exercise_type', 'yoga', 'duration_minutes', 61, 'calories_burned', 459)), '<health_profile><age>20</age><weight>200</weight><height>161</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>flexibility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Casey Miller', 'casey.miller@email.com, (555) 396-5224', '2024-05-23', JSON_ARRAY(JSON_OBJECT('date', '2024-06-12', 'exercise_type', 'swimming', 'duration_minutes', 78, 'calories_burned', 523), JSON_OBJECT('date', '2024-05-29', 'exercise_type', 'strength', 'duration_minutes', 58, 'calories_burned', 292)), '<health_profile><age>25</age><weight>135</weight><height>173</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>stress_relief</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Taylor Anderson', 'taylor.anderson@email.com, (555) 117-4289', '2024-05-18', JSON_ARRAY(JSON_OBJECT('date', '2024-06-06', 'exercise_type', 'cycling', 'duration_minutes', 80, 'calories_burned', 346), JSON_OBJECT('date', '2024-06-15', 'exercise_type', 'swimming', 'duration_minutes', 39, 'calories_burned', 295)), '<health_profile><age>33</age><weight>197</weight><height>179</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>mobility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Emerson Smith', 'emerson.smith@email.com, (555) 360-2076', '2024-02-28', JSON_ARRAY(JSON_OBJECT('date', '2024-03-23', 'exercise_type', 'zumba', 'duration_minutes', 40, 'calories_burned', 283), JSON_OBJECT('date', '2024-03-01', 'exercise_type', 'hiit', 'duration_minutes', 36, 'calories_burned', 364), JSON_OBJECT('date', '2024-03-24', 'exercise_type', 'swimming', 'duration_minutes', 73, 'calories_burned', 493)), '<health_profile><age>36</age><weight>172</weight><height>159</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>stress_relief</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Emerson Wilson', 'emerson.wilson@email.com, (555) 850-5901', '2024-05-18', JSON_ARRAY(JSON_OBJECT('date', '2024-06-10', 'exercise_type', 'zumba', 'duration_minutes', 34, 'calories_burned', 376)), '<health_profile><age>36</age><weight>186</weight><height>186</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Avery Moore', 'avery.moore@email.com, (555) 138-8044', '2024-05-17', JSON_ARRAY(JSON_OBJECT('date', '2024-05-30', 'exercise_type', 'swimming', 'duration_minutes', 71, 'calories_burned', 360), JSON_OBJECT('date', '2024-05-30', 'exercise_type', 'zumba', 'duration_minutes', 89, 'calories_burned', 591), JSON_OBJECT('date', '2024-06-12', 'exercise_type', 'yoga', 'duration_minutes', 56, 'calories_burned', 334)), '<health_profile><age>55</age><weight>144</weight><height>188</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>endurance</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Avery Brown', 'avery.brown@email.com, (555) 996-8113', '2024-03-26', JSON_ARRAY(JSON_OBJECT('date', '2024-04-11', 'exercise_type', 'swimming', 'duration_minutes', 31, 'calories_burned', 434), JSON_OBJECT('date', '2024-04-03', 'exercise_type', 'cardio', 'duration_minutes', 48, 'calories_burned', 414), JSON_OBJECT('date', '2024-04-04', 'exercise_type', 'cardio', 'duration_minutes', 42, 'calories_burned', 415)), '<health_profile><age>27</age><weight>175</weight><height>172</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jamie Davis', 'jamie.davis@email.com, (555) 792-3123', '2024-03-03', JSON_ARRAY(JSON_OBJECT('date', '2024-03-18', 'exercise_type', 'strength', 'duration_minutes', 77, 'calories_burned', 399)), '<health_profile><age>31</age><weight>134</weight><height>171</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>stress_relief</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Riley Anderson', 'riley.anderson@email.com, (555) 678-2165', '2024-02-19', JSON_ARRAY(JSON_OBJECT('date', '2024-03-14', 'exercise_type', 'yoga', 'duration_minutes', 84, 'calories_burned', 507), JSON_OBJECT('date', '2024-03-01', 'exercise_type', 'hiit', 'duration_minutes', 32, 'calories_burned', 412), JSON_OBJECT('date', '2024-03-09', 'exercise_type', 'cardio', 'duration_minutes', 57, 'calories_burned', 583)), '<health_profile><age>37</age><weight>140</weight><height>156</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>weight_loss</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Reese Brown', 'reese.brown@email.com, (555) 716-6009', '2024-02-24', JSON_ARRAY(JSON_OBJECT('date', '2024-02-25', 'exercise_type', 'cycling', 'duration_minutes', 78, 'calories_burned', 237)), '<health_profile><age>52</age><weight>191</weight><height>172</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>flexibility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Riley Thomas', 'riley.thomas@email.com, (555) 835-5356', '2024-03-28', JSON_ARRAY(JSON_OBJECT('date', '2024-04-24', 'exercise_type', 'strength', 'duration_minutes', 87, 'calories_burned', 501), JSON_OBJECT('date', '2024-04-04', 'exercise_type', 'cardio', 'duration_minutes', 35, 'calories_burned', 245)), '<health_profile><age>45</age><weight>188</weight><height>175</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>endurance</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Jordan Johnson', 'jordan.johnson@email.com, (555) 874-2390', '2024-05-25', JSON_ARRAY(JSON_OBJECT('date', '2024-06-20', 'exercise_type', 'cardio', 'duration_minutes', 74, 'calories_burned', 537), JSON_OBJECT('date', '2024-06-15', 'exercise_type', 'zumba', 'duration_minutes', 44, 'calories_burned', 273), JSON_OBJECT('date', '2024-06-24', 'exercise_type', 'swimming', 'duration_minutes', 51, 'calories_burned', 304)), '<health_profile><age>46</age><weight>126</weight><height>177</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>mobility</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Casey Brown', 'casey.brown@email.com, (555) 756-9519', '2024-01-23', JSON_ARRAY(JSON_OBJECT('date', '2024-01-31', 'exercise_type', 'yoga', 'duration_minutes', 82, 'calories_burned', 543), JSON_OBJECT('date', '2024-02-07', 'exercise_type', 'cardio', 'duration_minutes', 39, 'calories_burned', 502)), '<health_profile><age>39</age><weight>150</weight><height>169</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>mobility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Reese Moore', 'reese.moore@email.com, (555) 282-8905', '2024-05-26', JSON_ARRAY(JSON_OBJECT('date', '2024-06-25', 'exercise_type', 'cycling', 'duration_minutes', 35, 'calories_burned', 269)), '<health_profile><age>45</age><weight>184</weight><height>177</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>flexibility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Emerson Thomas', 'emerson.thomas@email.com, (555) 732-2360', '2024-04-12', JSON_ARRAY(JSON_OBJECT('date', '2024-04-24', 'exercise_type', 'strength', 'duration_minutes', 44, 'calories_burned', 572), JSON_OBJECT('date', '2024-04-24', 'exercise_type', 'cycling', 'duration_minutes', 88, 'calories_burned', 591), JSON_OBJECT('date', '2024-05-04', 'exercise_type', 'zumba', 'duration_minutes', 61, 'calories_burned', 389)), '<health_profile><age>33</age><weight>154</weight><height>162</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>endurance</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Casey Moore', 'casey.moore@email.com, (555) 470-1015', '2024-01-22', JSON_ARRAY(JSON_OBJECT('date', '2024-01-23', 'exercise_type', 'hiit', 'duration_minutes', 39, 'calories_burned', 436), JSON_OBJECT('date', '2024-02-16', 'exercise_type', 'zumba', 'duration_minutes', 79, 'calories_burned', 336)), '<health_profile><age>55</age><weight>153</weight><height>173</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>endurance</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Avery Wilson', 'avery.wilson@email.com, (555) 134-3807', '2024-02-01', JSON_ARRAY(JSON_OBJECT('date', '2024-02-05', 'exercise_type', 'cardio', 'duration_minutes', 50, 'calories_burned', 236), JSON_OBJECT('date', '2024-02-26', 'exercise_type', 'strength', 'duration_minutes', 85, 'calories_burned', 356)), '<health_profile><age>49</age><weight>139</weight><height>188</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Alex Johnson', 'alex.johnson@email.com, (555) 141-7007', '2024-05-21', JSON_ARRAY(JSON_OBJECT('date', '2024-06-18', 'exercise_type', 'cycling', 'duration_minutes', 30, 'calories_burned', 556)), '<health_profile><age>45</age><weight>151</weight><height>158</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>mobility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Avery Lee', 'avery.lee@email.com, (555) 506-7926', '2024-01-16', JSON_ARRAY(JSON_OBJECT('date', '2024-01-25', 'exercise_type', 'yoga', 'duration_minutes', 38, 'calories_burned', 563), JSON_OBJECT('date', '2024-02-10', 'exercise_type', 'zumba', 'duration_minutes', 37, 'calories_burned', 425)), '<health_profile><age>44</age><weight>188</weight><height>151</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>weight_loss</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Jamie Wilson', 'jamie.wilson@email.com, (555) 352-7509', '2024-01-01', JSON_ARRAY(JSON_OBJECT('date', '2024-01-14', 'exercise_type', 'zumba', 'duration_minutes', 40, 'calories_burned', 569), JSON_OBJECT('date', '2024-01-21', 'exercise_type', 'zumba', 'duration_minutes', 37, 'calories_burned', 228), JSON_OBJECT('date', '2024-01-16', 'exercise_type', 'zumba', 'duration_minutes', 65, 'calories_burned', 493)), '<health_profile><age>55</age><weight>125</weight><height>183</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>stress_relief</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Reese Wilson', 'reese.wilson@email.com, (555) 875-9816', '2024-01-16', JSON_ARRAY(JSON_OBJECT('date', '2024-02-03', 'exercise_type', 'strength', 'duration_minutes', 56, 'calories_burned', 256)), '<health_profile><age>55</age><weight>155</weight><height>170</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>strength</goal><goal>strength</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Jamie Smith', 'jamie.smith@email.com, (555) 841-1273', '2024-03-20', JSON_ARRAY(JSON_OBJECT('date', '2024-03-22', 'exercise_type', 'cardio', 'duration_minutes', 30, 'calories_burned', 492), JSON_OBJECT('date', '2024-03-28', 'exercise_type', 'zumba', 'duration_minutes', 72, 'calories_burned', 438)), '<health_profile><age>43</age><weight>200</weight><height>187</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>weight_loss</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Alex Moore', 'alex.moore@email.com, (555) 139-1678', '2024-03-10', JSON_ARRAY(JSON_OBJECT('date', '2024-03-11', 'exercise_type', 'cycling', 'duration_minutes', 32, 'calories_burned', 405), JSON_OBJECT('date', '2024-04-08', 'exercise_type', 'swimming', 'duration_minutes', 36, 'calories_burned', 552)), '<health_profile><age>54</age><weight>190</weight><height>164</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Taylor Smith', 'taylor.smith@email.com, (555) 615-7212', '2024-04-30', JSON_ARRAY(JSON_OBJECT('date', '2024-05-11', 'exercise_type', 'cycling', 'duration_minutes', 33, 'calories_burned', 408)), '<health_profile><age>30</age><weight>161</weight><height>184</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>weight_loss</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Jamie Davis', 'jamie.davis@email.com, (555) 453-4285', '2024-04-05', JSON_ARRAY(JSON_OBJECT('date', '2024-04-06', 'exercise_type', 'swimming', 'duration_minutes', 70, 'calories_burned', 388), JSON_OBJECT('date', '2024-04-17', 'exercise_type', 'hiit', 'duration_minutes', 67, 'calories_burned', 273), JSON_OBJECT('date', '2024-04-24', 'exercise_type', 'hiit', 'duration_minutes', 31, 'calories_burned', 415)), '<health_profile><age>41</age><weight>186</weight><height>169</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>stress_relief</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Reese Lee', 'reese.lee@email.com, (555) 602-2732', '2024-03-24', JSON_ARRAY(JSON_OBJECT('date', '2024-04-10', 'exercise_type', 'strength', 'duration_minutes', 65, 'calories_burned', 518), JSON_OBJECT('date', '2024-04-23', 'exercise_type', 'yoga', 'duration_minutes', 73, 'calories_burned', 571), JSON_OBJECT('date', '2024-03-30', 'exercise_type', 'strength', 'duration_minutes', 59, 'calories_burned', 568)), '<health_profile><age>33</age><weight>126</weight><height>153</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>endurance</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Jamie Miller', 'jamie.miller@email.com, (555) 760-1872', '2024-03-12', JSON_ARRAY(JSON_OBJECT('date', '2024-03-25', 'exercise_type', 'strength', 'duration_minutes', 71, 'calories_burned', 532), JSON_OBJECT('date', '2024-04-04', 'exercise_type', 'cardio', 'duration_minutes', 86, 'calories_burned', 296)), '<health_profile><age>26</age><weight>194</weight><height>155</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jamie Miller', 'jamie.miller@email.com, (555) 280-5076', '2024-05-20', JSON_ARRAY(JSON_OBJECT('date', '2024-06-04', 'exercise_type', 'zumba', 'duration_minutes', 74, 'calories_burned', 206), JSON_OBJECT('date', '2024-06-03', 'exercise_type', 'cycling', 'duration_minutes', 35, 'calories_burned', 420)), '<health_profile><age>24</age><weight>170</weight><height>151</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>weight_loss</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Taylor Smith', 'taylor.smith@email.com, (555) 734-4390', '2024-03-06', JSON_ARRAY(JSON_OBJECT('date', '2024-03-25', 'exercise_type', 'cardio', 'duration_minutes', 32, 'calories_burned', 407)), '<health_profile><age>28</age><weight>194</weight><height>152</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>stress_relief</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Reese Moore', 'reese.moore@email.com, (555) 614-6734', '2024-03-03', JSON_ARRAY(JSON_OBJECT('date', '2024-03-12', 'exercise_type', 'cardio', 'duration_minutes', 60, 'calories_burned', 258), JSON_OBJECT('date', '2024-04-02', 'exercise_type', 'yoga', 'duration_minutes', 51, 'calories_burned', 317), JSON_OBJECT('date', '2024-03-09', 'exercise_type', 'hiit', 'duration_minutes', 73, 'calories_burned', 281)), '<health_profile><age>52</age><weight>150</weight><height>176</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>weight_loss</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Reese Davis', 'reese.davis@email.com, (555) 259-7456', '2024-01-15', JSON_ARRAY(JSON_OBJECT('date', '2024-02-03', 'exercise_type', 'cardio', 'duration_minutes', 53, 'calories_burned', 267), JSON_OBJECT('date', '2024-01-21', 'exercise_type', 'cycling', 'duration_minutes', 86, 'calories_burned', 303), JSON_OBJECT('date', '2024-01-23', 'exercise_type', 'strength', 'duration_minutes', 31, 'calories_burned', 239)), '<health_profile><age>45</age><weight>171</weight><height>181</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>flexibility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Reese Wilson', 'reese.wilson@email.com, (555) 833-2566', '2024-01-20', JSON_ARRAY(JSON_OBJECT('date', '2024-02-17', 'exercise_type', 'cardio', 'duration_minutes', 53, 'calories_burned', 274)), '<health_profile><age>49</age><weight>161</weight><height>170</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>weight_loss</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Taylor Davis', 'taylor.davis@email.com, (555) 216-3700', '2024-02-20', JSON_ARRAY(JSON_OBJECT('date', '2024-02-22', 'exercise_type', 'hiit', 'duration_minutes', 88, 'calories_burned', 256)), '<health_profile><age>34</age><weight>181</weight><height>182</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jamie Wilson', 'jamie.wilson@email.com, (555) 762-9362', '2024-05-23', JSON_ARRAY(JSON_OBJECT('date', '2024-06-02', 'exercise_type', 'cardio', 'duration_minutes', 64, 'calories_burned', 508), JSON_OBJECT('date', '2024-05-28', 'exercise_type', 'yoga', 'duration_minutes', 39, 'calories_burned', 547), JSON_OBJECT('date', '2024-05-30', 'exercise_type', 'cycling', 'duration_minutes', 59, 'calories_burned', 274)), '<health_profile><age>21</age><weight>178</weight><height>165</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>strength</goal><goal>stress_relief</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Jordan Thomas', 'jordan.thomas@email.com, (555) 166-6995', '2024-05-02', JSON_ARRAY(JSON_OBJECT('date', '2024-05-19', 'exercise_type', 'yoga', 'duration_minutes', 32, 'calories_burned', 470), JSON_OBJECT('date', '2024-05-14', 'exercise_type', 'swimming', 'duration_minutes', 64, 'calories_burned', 250)), '<health_profile><age>29</age><weight>157</weight><height>154</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>flexibility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Reese Lee', 'reese.lee@email.com, (555) 549-2878', '2024-01-24', JSON_ARRAY(JSON_OBJECT('date', '2024-02-03', 'exercise_type', 'cycling', 'duration_minutes', 30, 'calories_burned', 292), JSON_OBJECT('date', '2024-02-23', 'exercise_type', 'zumba', 'duration_minutes', 60, 'calories_burned', 484)), '<health_profile><age>42</age><weight>156</weight><height>171</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Taylor Brown', 'taylor.brown@email.com, (555) 517-8316', '2024-05-28', JSON_ARRAY(JSON_OBJECT('date', '2024-06-02', 'exercise_type', 'yoga', 'duration_minutes', 87, 'calories_burned', 468)), '<health_profile><age>22</age><weight>142</weight><height>185</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Emerson Miller', 'emerson.miller@email.com, (555) 442-4069', '2024-01-28', JSON_ARRAY(JSON_OBJECT('date', '2024-02-23', 'exercise_type', 'cardio', 'duration_minutes', 47, 'calories_burned', 525), JSON_OBJECT('date', '2024-02-05', 'exercise_type', 'yoga', 'duration_minutes', 55, 'calories_burned', 319)), '<health_profile><age>31</age><weight>122</weight><height>166</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>endurance</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Alex Anderson', 'alex.anderson@email.com, (555) 243-5946', '2024-01-29', JSON_ARRAY(JSON_OBJECT('date', '2024-02-02', 'exercise_type', 'cycling', 'duration_minutes', 58, 'calories_burned', 500)), '<health_profile><age>50</age><weight>186</weight><height>178</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>weight_loss</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jordan Davis', 'jordan.davis@email.com, (555) 104-1190', '2024-01-29', JSON_ARRAY(JSON_OBJECT('date', '2024-02-02', 'exercise_type', 'cycling', 'duration_minutes', 45, 'calories_burned', 374), JSON_OBJECT('date', '2024-02-13', 'exercise_type', 'hiit', 'duration_minutes', 81, 'calories_burned', 354), JSON_OBJECT('date', '2024-02-03', 'exercise_type', 'strength', 'duration_minutes', 89, 'calories_burned', 528)), '<health_profile><age>30</age><weight>158</weight><height>177</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>flexibility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Jamie Anderson', 'jamie.anderson@email.com, (555) 229-3140', '2024-01-06', JSON_ARRAY(JSON_OBJECT('date', '2024-01-15', 'exercise_type', 'zumba', 'duration_minutes', 83, 'calories_burned', 205), JSON_OBJECT('date', '2024-01-10', 'exercise_type', 'cycling', 'duration_minutes', 41, 'calories_burned', 589), JSON_OBJECT('date', '2024-01-30', 'exercise_type', 'strength', 'duration_minutes', 39, 'calories_burned', 502)), '<health_profile><age>19</age><weight>167</weight><height>168</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>strength</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Jamie Johnson', 'jamie.johnson@email.com, (555) 835-6832', '2024-02-12', JSON_ARRAY(JSON_OBJECT('date', '2024-03-09', 'exercise_type', 'cycling', 'duration_minutes', 68, 'calories_burned', 301), JSON_OBJECT('date', '2024-03-06', 'exercise_type', 'strength', 'duration_minutes', 42, 'calories_burned', 329)), '<health_profile><age>46</age><weight>133</weight><height>156</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>mobility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jordan Anderson', 'jordan.anderson@email.com, (555) 782-3241', '2024-02-21', JSON_ARRAY(JSON_OBJECT('date', '2024-03-16', 'exercise_type', 'zumba', 'duration_minutes', 32, 'calories_burned', 479), JSON_OBJECT('date', '2024-02-22', 'exercise_type', 'swimming', 'duration_minutes', 53, 'calories_burned', 206), JSON_OBJECT('date', '2024-03-12', 'exercise_type', 'yoga', 'duration_minutes', 45, 'calories_burned', 572)), '<health_profile><age>18</age><weight>164</weight><height>168</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>flexibility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Morgan Smith', 'morgan.smith@email.com, (555) 311-9700', '2024-04-07', JSON_ARRAY(JSON_OBJECT('date', '2024-04-08', 'exercise_type', 'strength', 'duration_minutes', 74, 'calories_burned', 555), JSON_OBJECT('date', '2024-05-01', 'exercise_type', 'strength', 'duration_minutes', 37, 'calories_burned', 204), JSON_OBJECT('date', '2024-04-19', 'exercise_type', 'yoga', 'duration_minutes', 88, 'calories_burned', 467)), '<health_profile><age>51</age><weight>183</weight><height>186</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>weight_loss</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jordan Johnson', 'jordan.johnson@email.com, (555) 158-2895', '2024-03-28', JSON_ARRAY(JSON_OBJECT('date', '2024-03-31', 'exercise_type', 'cycling', 'duration_minutes', 42, 'calories_burned', 434)), '<health_profile><age>18</age><weight>151</weight><height>154</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>strength</goal><goal>stress_relief</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Taylor Anderson', 'taylor.anderson@email.com, (555) 815-1449', '2024-03-26', JSON_ARRAY(JSON_OBJECT('date', '2024-03-27', 'exercise_type', 'zumba', 'duration_minutes', 53, 'calories_burned', 578), JSON_OBJECT('date', '2024-04-06', 'exercise_type', 'cardio', 'duration_minutes', 68, 'calories_burned', 426)), '<health_profile><age>33</age><weight>198</weight><height>166</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>flexibility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Jamie Moore', 'jamie.moore@email.com, (555) 171-9499', '2024-04-01', JSON_ARRAY(JSON_OBJECT('date', '2024-04-24', 'exercise_type', 'yoga', 'duration_minutes', 53, 'calories_burned', 513), JSON_OBJECT('date', '2024-04-08', 'exercise_type', 'swimming', 'duration_minutes', 33, 'calories_burned', 239), JSON_OBJECT('date', '2024-04-11', 'exercise_type', 'zumba', 'duration_minutes', 56, 'calories_burned', 594)), '<health_profile><age>20</age><weight>130</weight><height>176</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Emerson Johnson', 'emerson.johnson@email.com, (555) 986-2640', '2024-05-17', JSON_ARRAY(JSON_OBJECT('date', '2024-06-13', 'exercise_type', 'hiit', 'duration_minutes', 54, 'calories_burned', 484), JSON_OBJECT('date', '2024-05-18', 'exercise_type', 'swimming', 'duration_minutes', 60, 'calories_burned', 305), JSON_OBJECT('date', '2024-06-03', 'exercise_type', 'cardio', 'duration_minutes', 66, 'calories_burned', 404)), '<health_profile><age>47</age><weight>163</weight><height>190</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Alex Davis', 'alex.davis@email.com, (555) 112-2911', '2024-01-15', JSON_ARRAY(JSON_OBJECT('date', '2024-01-18', 'exercise_type', 'zumba', 'duration_minutes', 41, 'calories_burned', 314)), '<health_profile><age>38</age><weight>175</weight><height>159</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>stress_relief</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Morgan Johnson', 'morgan.johnson@email.com, (555) 316-4838', '2024-01-14', JSON_ARRAY(JSON_OBJECT('date', '2024-01-24', 'exercise_type', 'cardio', 'duration_minutes', 41, 'calories_burned', 354)), '<health_profile><age>35</age><weight>123</weight><height>187</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>weight_loss</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Reese Davis', 'reese.davis@email.com, (555) 489-5277', '2024-01-16', JSON_ARRAY(JSON_OBJECT('date', '2024-02-05', 'exercise_type', 'cycling', 'duration_minutes', 85, 'calories_burned', 395)), '<health_profile><age>41</age><weight>171</weight><height>150</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>strength</goal><goal>flexibility</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Avery Thomas', 'avery.thomas@email.com, (555) 757-4091', '2024-05-15', JSON_ARRAY(JSON_OBJECT('date', '2024-06-06', 'exercise_type', 'zumba', 'duration_minutes', 83, 'calories_burned', 501), JSON_OBJECT('date', '2024-06-05', 'exercise_type', 'hiit', 'duration_minutes', 51, 'calories_burned', 596)), '<health_profile><age>44</age><weight>134</weight><height>181</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>flexibility</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Jamie Anderson', 'jamie.anderson@email.com, (555) 331-6397', '2024-04-10', JSON_ARRAY(JSON_OBJECT('date', '2024-04-18', 'exercise_type', 'zumba', 'duration_minutes', 44, 'calories_burned', 399), JSON_OBJECT('date', '2024-04-11', 'exercise_type', 'hiit', 'duration_minutes', 33, 'calories_burned', 558)), '<health_profile><age>48</age><weight>144</weight><height>166</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>strength</goal><goal>weight_loss</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Avery Miller', 'avery.miller@email.com, (555) 116-3040', '2024-04-05', JSON_ARRAY(JSON_OBJECT('date', '2024-04-26', 'exercise_type', 'strength', 'duration_minutes', 72, 'calories_burned', 329)), '<health_profile><age>27</age><weight>139</weight><height>171</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>weight_loss</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Casey Anderson', 'casey.anderson@email.com, (555) 789-5606', '2024-05-13', JSON_ARRAY(JSON_OBJECT('date', '2024-06-05', 'exercise_type', 'strength', 'duration_minutes', 47, 'calories_burned', 531)), '<health_profile><age>33</age><weight>187</weight><height>169</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>endurance</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Jordan Moore', 'jordan.moore@email.com, (555) 678-9419', '2024-04-20', JSON_ARRAY(JSON_OBJECT('date', '2024-05-10', 'exercise_type', 'zumba', 'duration_minutes', 58, 'calories_burned', 214), JSON_OBJECT('date', '2024-05-12', 'exercise_type', 'hiit', 'duration_minutes', 34, 'calories_burned', 368)), '<health_profile><age>29</age><weight>183</weight><height>158</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Reese Moore', 'reese.moore@email.com, (555) 109-8905', '2024-01-27', JSON_ARRAY(JSON_OBJECT('date', '2024-02-13', 'exercise_type', 'yoga', 'duration_minutes', 41, 'calories_burned', 255), JSON_OBJECT('date', '2024-02-03', 'exercise_type', 'cardio', 'duration_minutes', 47, 'calories_burned', 452)), '<health_profile><age>34</age><weight>131</weight><height>164</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>strength</goal><goal>strength</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Reese Smith', 'reese.smith@email.com, (555) 783-4270', '2024-01-10', JSON_ARRAY(JSON_OBJECT('date', '2024-02-04', 'exercise_type', 'cycling', 'duration_minutes', 38, 'calories_burned', 379)), '<health_profile><age>27</age><weight>182</weight><height>159</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>endurance</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Taylor Johnson', 'taylor.johnson@email.com, (555) 642-5922', '2024-03-02', JSON_ARRAY(JSON_OBJECT('date', '2024-03-24', 'exercise_type', 'cycling', 'duration_minutes', 34, 'calories_burned', 522), JSON_OBJECT('date', '2024-03-07', 'exercise_type', 'hiit', 'duration_minutes', 44, 'calories_burned', 396)), '<health_profile><age>48</age><weight>162</weight><height>171</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>mobility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Morgan Lee', 'morgan.lee@email.com, (555) 267-2101', '2024-01-01', JSON_ARRAY(JSON_OBJECT('date', '2024-01-20', 'exercise_type', 'yoga', 'duration_minutes', 41, 'calories_burned', 308)), '<health_profile><age>18</age><weight>196</weight><height>155</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>strength</goal><goal>endurance</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Casey Miller', 'casey.miller@email.com, (555) 753-3283', '2024-02-09', JSON_ARRAY(JSON_OBJECT('date', '2024-03-03', 'exercise_type', 'zumba', 'duration_minutes', 80, 'calories_burned', 202), JSON_OBJECT('date', '2024-03-10', 'exercise_type', 'swimming', 'duration_minutes', 57, 'calories_burned', 594), JSON_OBJECT('date', '2024-02-16', 'exercise_type', 'swimming', 'duration_minutes', 85, 'calories_burned', 205)), '<health_profile><age>31</age><weight>130</weight><height>179</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>stress_relief</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Jamie Davis', 'jamie.davis@email.com, (555) 677-7448', '2024-02-22', JSON_ARRAY(JSON_OBJECT('date', '2024-02-25', 'exercise_type', 'hiit', 'duration_minutes', 61, 'calories_burned', 250)), '<health_profile><age>41</age><weight>173</weight><height>160</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>endurance</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Reese Lee', 'reese.lee@email.com, (555) 122-7113', '2024-02-08', JSON_ARRAY(JSON_OBJECT('date', '2024-03-05', 'exercise_type', 'yoga', 'duration_minutes', 53, 'calories_burned', 518)), '<health_profile><age>42</age><weight>196</weight><height>183</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>endurance</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Reese Thomas', 'reese.thomas@email.com, (555) 342-9106', '2024-05-02', JSON_ARRAY(JSON_OBJECT('date', '2024-05-10', 'exercise_type', 'yoga', 'duration_minutes', 44, 'calories_burned', 210)), '<health_profile><age>18</age><weight>195</weight><height>165</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>mobility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Reese Smith', 'reese.smith@email.com, (555) 588-8613', '2024-05-27', JSON_ARRAY(JSON_OBJECT('date', '2024-06-21', 'exercise_type', 'yoga', 'duration_minutes', 84, 'calories_burned', 231)), '<health_profile><age>43</age><weight>165</weight><height>169</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>mobility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Avery Miller', 'avery.miller@email.com, (555) 294-6221', '2024-05-29', JSON_ARRAY(JSON_OBJECT('date', '2024-06-04', 'exercise_type', 'cardio', 'duration_minutes', 79, 'calories_burned', 590)), '<health_profile><age>47</age><weight>138</weight><height>156</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>strength</goal><goal>mobility</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Avery Smith', 'avery.smith@email.com, (555) 648-4269', '2024-05-08', JSON_ARRAY(JSON_OBJECT('date', '2024-05-23', 'exercise_type', 'cycling', 'duration_minutes', 51, 'calories_burned', 235), JSON_OBJECT('date', '2024-05-14', 'exercise_type', 'cardio', 'duration_minutes', 79, 'calories_burned', 451), JSON_OBJECT('date', '2024-05-18', 'exercise_type', 'cycling', 'duration_minutes', 87, 'calories_burned', 445)), '<health_profile><age>39</age><weight>167</weight><height>168</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>endurance</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Taylor Moore', 'taylor.moore@email.com, (555) 387-4740', '2024-05-27', JSON_ARRAY(JSON_OBJECT('date', '2024-06-13', 'exercise_type', 'hiit', 'duration_minutes', 80, 'calories_burned', 257), JSON_OBJECT('date', '2024-06-07', 'exercise_type', 'cardio', 'duration_minutes', 65, 'calories_burned', 349), JSON_OBJECT('date', '2024-06-05', 'exercise_type', 'cardio', 'duration_minutes', 78, 'calories_burned', 438)), '<health_profile><age>18</age><weight>171</weight><height>179</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>mobility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Avery Davis', 'avery.davis@email.com, (555) 738-3711', '2024-03-09', JSON_ARRAY(JSON_OBJECT('date', '2024-03-31', 'exercise_type', 'yoga', 'duration_minutes', 43, 'calories_burned', 521), JSON_OBJECT('date', '2024-03-23', 'exercise_type', 'yoga', 'duration_minutes', 83, 'calories_burned', 334), JSON_OBJECT('date', '2024-03-11', 'exercise_type', 'swimming', 'duration_minutes', 30, 'calories_burned', 200)), '<health_profile><age>32</age><weight>182</weight><height>175</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>stress_relief</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Avery Brown', 'avery.brown@email.com, (555) 565-5340', '2024-04-20', JSON_ARRAY(JSON_OBJECT('date', '2024-05-03', 'exercise_type', 'hiit', 'duration_minutes', 70, 'calories_burned', 243), JSON_OBJECT('date', '2024-05-19', 'exercise_type', 'strength', 'duration_minutes', 89, 'calories_burned', 350)), '<health_profile><age>22</age><weight>175</weight><height>153</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>endurance</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Taylor Brown', 'taylor.brown@email.com, (555) 393-5779', '2024-05-24', JSON_ARRAY(JSON_OBJECT('date', '2024-06-07', 'exercise_type', 'hiit', 'duration_minutes', 62, 'calories_burned', 331), JSON_OBJECT('date', '2024-05-30', 'exercise_type', 'strength', 'duration_minutes', 54, 'calories_burned', 491)), '<health_profile><age>35</age><weight>155</weight><height>183</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>mobility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Avery Miller', 'avery.miller@email.com, (555) 282-3440', '2024-01-14', JSON_ARRAY(JSON_OBJECT('date', '2024-01-30', 'exercise_type', 'swimming', 'duration_minutes', 89, 'calories_burned', 597)), '<health_profile><age>19</age><weight>177</weight><height>162</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>weight_loss</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Jordan Smith', 'jordan.smith@email.com, (555) 548-2443', '2024-01-18', JSON_ARRAY(JSON_OBJECT('date', '2024-01-30', 'exercise_type', 'zumba', 'duration_minutes', 90, 'calories_burned', 331)), '<health_profile><age>50</age><weight>172</weight><height>189</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>endurance</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Alex Moore', 'alex.moore@email.com, (555) 735-4230', '2024-04-26', JSON_ARRAY(JSON_OBJECT('date', '2024-05-25', 'exercise_type', 'strength', 'duration_minutes', 79, 'calories_burned', 308)), '<health_profile><age>30</age><weight>125</weight><height>174</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>weight_loss</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Reese Davis', 'reese.davis@email.com, (555) 338-8191', '2024-03-23', JSON_ARRAY(JSON_OBJECT('date', '2024-04-10', 'exercise_type', 'hiit', 'duration_minutes', 80, 'calories_burned', 438), JSON_OBJECT('date', '2024-04-07', 'exercise_type', 'cycling', 'duration_minutes', 45, 'calories_burned', 411), JSON_OBJECT('date', '2024-04-07', 'exercise_type', 'zumba', 'duration_minutes', 83, 'calories_burned', 585)), '<health_profile><age>48</age><weight>130</weight><height>185</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>flexibility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Avery Moore', 'avery.moore@email.com, (555) 609-3249', '2024-01-12', JSON_ARRAY(JSON_OBJECT('date', '2024-01-18', 'exercise_type', 'zumba', 'duration_minutes', 41, 'calories_burned', 533), JSON_OBJECT('date', '2024-01-27', 'exercise_type', 'cardio', 'duration_minutes', 50, 'calories_burned', 252), JSON_OBJECT('date', '2024-01-20', 'exercise_type', 'swimming', 'duration_minutes', 90, 'calories_burned', 384)), '<health_profile><age>30</age><weight>199</weight><height>152</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Taylor Moore', 'taylor.moore@email.com, (555) 368-9534', '2024-02-17', JSON_ARRAY(JSON_OBJECT('date', '2024-03-07', 'exercise_type', 'swimming', 'duration_minutes', 64, 'calories_burned', 560), JSON_OBJECT('date', '2024-02-21', 'exercise_type', 'swimming', 'duration_minutes', 56, 'calories_burned', 491)), '<health_profile><age>41</age><weight>167</weight><height>187</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>stress_relief</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Emerson Brown', 'emerson.brown@email.com, (555) 289-9945', '2024-01-21', JSON_ARRAY(JSON_OBJECT('date', '2024-01-31', 'exercise_type', 'cardio', 'duration_minutes', 43, 'calories_burned', 390), JSON_OBJECT('date', '2024-01-28', 'exercise_type', 'cycling', 'duration_minutes', 72, 'calories_burned', 280), JSON_OBJECT('date', '2024-02-11', 'exercise_type', 'hiit', 'duration_minutes', 37, 'calories_burned', 464)), '<health_profile><age>26</age><weight>144</weight><height>165</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>endurance</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Avery Miller', 'avery.miller@email.com, (555) 465-8645', '2024-03-03', JSON_ARRAY(JSON_OBJECT('date', '2024-03-26', 'exercise_type', 'yoga', 'duration_minutes', 40, 'calories_burned', 462), JSON_OBJECT('date', '2024-03-16', 'exercise_type', 'yoga', 'duration_minutes', 50, 'calories_burned', 497)), '<health_profile><age>50</age><weight>173</weight><height>173</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>endurance</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Avery Wilson', 'avery.wilson@email.com, (555) 907-6954', '2024-04-10', JSON_ARRAY(JSON_OBJECT('date', '2024-05-03', 'exercise_type', 'strength', 'duration_minutes', 76, 'calories_burned', 563), JSON_OBJECT('date', '2024-04-18', 'exercise_type', 'hiit', 'duration_minutes', 60, 'calories_burned', 454)), '<health_profile><age>43</age><weight>188</weight><height>162</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>endurance</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Morgan Lee', 'morgan.lee@email.com, (555) 626-7777', '2024-05-27', JSON_ARRAY(JSON_OBJECT('date', '2024-06-19', 'exercise_type', 'zumba', 'duration_minutes', 44, 'calories_burned', 290), JSON_OBJECT('date', '2024-06-23', 'exercise_type', 'hiit', 'duration_minutes', 46, 'calories_burned', 387), JSON_OBJECT('date', '2024-05-30', 'exercise_type', 'cycling', 'duration_minutes', 34, 'calories_burned', 524)), '<health_profile><age>27</age><weight>158</weight><height>183</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>mobility</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Jamie Moore', 'jamie.moore@email.com, (555) 194-7083', '2024-03-23', JSON_ARRAY(JSON_OBJECT('date', '2024-03-29', 'exercise_type', 'cycling', 'duration_minutes', 82, 'calories_burned', 354), JSON_OBJECT('date', '2024-04-19', 'exercise_type', 'yoga', 'duration_minutes', 89, 'calories_burned', 329), JSON_OBJECT('date', '2024-04-14', 'exercise_type', 'cardio', 'duration_minutes', 30, 'calories_burned', 554)), '<health_profile><age>44</age><weight>189</weight><height>162</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>weight_loss</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Taylor Johnson', 'taylor.johnson@email.com, (555) 937-4272', '2024-04-16', JSON_ARRAY(JSON_OBJECT('date', '2024-05-01', 'exercise_type', 'yoga', 'duration_minutes', 41, 'calories_burned', 482), JSON_OBJECT('date', '2024-05-13', 'exercise_type', 'cycling', 'duration_minutes', 89, 'calories_burned', 369)), '<health_profile><age>54</age><weight>196</weight><height>185</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Riley Lee', 'riley.lee@email.com, (555) 610-7289', '2024-01-31', JSON_ARRAY(JSON_OBJECT('date', '2024-02-15', 'exercise_type', 'hiit', 'duration_minutes', 48, 'calories_burned', 254), JSON_OBJECT('date', '2024-02-24', 'exercise_type', 'zumba', 'duration_minutes', 45, 'calories_burned', 427)), '<health_profile><age>33</age><weight>130</weight><height>173</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>mobility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Casey Anderson', 'casey.anderson@email.com, (555) 422-8268', '2024-05-24', JSON_ARRAY(JSON_OBJECT('date', '2024-06-15', 'exercise_type', 'strength', 'duration_minutes', 35, 'calories_burned', 486), JSON_OBJECT('date', '2024-06-05', 'exercise_type', 'cycling', 'duration_minutes', 46, 'calories_burned', 253)), '<health_profile><age>20</age><weight>188</weight><height>183</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>flexibility</goal><goal>endurance</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Casey Thomas', 'casey.thomas@email.com, (555) 673-9967', '2024-05-09', JSON_ARRAY(JSON_OBJECT('date', '2024-06-06', 'exercise_type', 'swimming', 'duration_minutes', 75, 'calories_burned', 471), JSON_OBJECT('date', '2024-06-02', 'exercise_type', 'swimming', 'duration_minutes', 73, 'calories_burned', 569), JSON_OBJECT('date', '2024-05-24', 'exercise_type', 'yoga', 'duration_minutes', 76, 'calories_burned', 514)), '<health_profile><age>38</age><weight>193</weight><height>180</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>mobility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Casey Thomas', 'casey.thomas@email.com, (555) 387-6719', '2024-05-13', JSON_ARRAY(JSON_OBJECT('date', '2024-05-17', 'exercise_type', 'strength', 'duration_minutes', 76, 'calories_burned', 315), JSON_OBJECT('date', '2024-06-03', 'exercise_type', 'zumba', 'duration_minutes', 79, 'calories_burned', 232), JSON_OBJECT('date', '2024-06-07', 'exercise_type', 'strength', 'duration_minutes', 85, 'calories_burned', 329)), '<health_profile><age>51</age><weight>144</weight><height>166</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Riley Anderson', 'riley.anderson@email.com, (555) 834-4865', '2024-03-21', JSON_ARRAY(JSON_OBJECT('date', '2024-03-28', 'exercise_type', 'yoga', 'duration_minutes', 48, 'calories_burned', 381), JSON_OBJECT('date', '2024-03-31', 'exercise_type', 'yoga', 'duration_minutes', 59, 'calories_burned', 216)), '<health_profile><age>35</age><weight>155</weight><height>181</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>weight_loss</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Morgan Lee', 'morgan.lee@email.com, (555) 931-9099', '2024-04-16', JSON_ARRAY(JSON_OBJECT('date', '2024-05-02', 'exercise_type', 'strength', 'duration_minutes', 64, 'calories_burned', 369), JSON_OBJECT('date', '2024-05-09', 'exercise_type', 'zumba', 'duration_minutes', 30, 'calories_burned', 471)), '<health_profile><age>44</age><weight>176</weight><height>180</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>endurance</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Jordan Smith', 'jordan.smith@email.com, (555) 773-8353', '2024-02-16', JSON_ARRAY(JSON_OBJECT('date', '2024-03-13', 'exercise_type', 'strength', 'duration_minutes', 61, 'calories_burned', 315), JSON_OBJECT('date', '2024-02-23', 'exercise_type', 'yoga', 'duration_minutes', 75, 'calories_burned', 422), JSON_OBJECT('date', '2024-02-23', 'exercise_type', 'cycling', 'duration_minutes', 49, 'calories_burned', 392)), '<health_profile><age>32</age><weight>124</weight><height>154</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>strength</goal><goal>stress_relief</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Jordan Davis', 'jordan.davis@email.com, (555) 912-1781', '2024-02-14', JSON_ARRAY(JSON_OBJECT('date', '2024-02-27', 'exercise_type', 'zumba', 'duration_minutes', 61, 'calories_burned', 531), JSON_OBJECT('date', '2024-03-15', 'exercise_type', 'cardio', 'duration_minutes', 31, 'calories_burned', 454)), '<health_profile><age>50</age><weight>178</weight><height>184</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>flexibility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Jamie Brown', 'jamie.brown@email.com, (555) 669-8667', '2024-01-01', JSON_ARRAY(JSON_OBJECT('date', '2024-01-20', 'exercise_type', 'cycling', 'duration_minutes', 53, 'calories_burned', 496)), '<health_profile><age>52</age><weight>132</weight><height>154</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Casey Johnson', 'casey.johnson@email.com, (555) 830-6202', '2024-04-12', JSON_ARRAY(JSON_OBJECT('date', '2024-04-16', 'exercise_type', 'yoga', 'duration_minutes', 54, 'calories_burned', 434), JSON_OBJECT('date', '2024-05-01', 'exercise_type', 'yoga', 'duration_minutes', 71, 'calories_burned', 321)), '<health_profile><age>41</age><weight>195</weight><height>156</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>mobility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Alex Johnson', 'alex.johnson@email.com, (555) 858-3068', '2024-03-29', JSON_ARRAY(JSON_OBJECT('date', '2024-04-13', 'exercise_type', 'hiit', 'duration_minutes', 62, 'calories_burned', 339), JSON_OBJECT('date', '2024-04-14', 'exercise_type', 'strength', 'duration_minutes', 43, 'calories_burned', 496), JSON_OBJECT('date', '2024-04-01', 'exercise_type', 'cycling', 'duration_minutes', 80, 'calories_burned', 540)), '<health_profile><age>22</age><weight>197</weight><height>157</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>stress_relief</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Jamie Smith', 'jamie.smith@email.com, (555) 524-5068', '2024-03-30', JSON_ARRAY(JSON_OBJECT('date', '2024-04-24', 'exercise_type', 'swimming', 'duration_minutes', 37, 'calories_burned', 555), JSON_OBJECT('date', '2024-04-15', 'exercise_type', 'swimming', 'duration_minutes', 43, 'calories_burned', 573), JSON_OBJECT('date', '2024-04-02', 'exercise_type', 'cardio', 'duration_minutes', 40, 'calories_burned', 528)), '<health_profile><age>53</age><weight>172</weight><height>166</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>strength</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Morgan Moore', 'morgan.moore@email.com, (555) 247-2087', '2024-04-02', JSON_ARRAY(JSON_OBJECT('date', '2024-05-01', 'exercise_type', 'cycling', 'duration_minutes', 88, 'calories_burned', 594), JSON_OBJECT('date', '2024-04-16', 'exercise_type', 'cardio', 'duration_minutes', 63, 'calories_burned', 553), JSON_OBJECT('date', '2024-04-25', 'exercise_type', 'hiit', 'duration_minutes', 42, 'calories_burned', 205)), '<health_profile><age>24</age><weight>158</weight><height>178</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>endurance</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Reese Wilson', 'reese.wilson@email.com, (555) 146-6017', '2024-04-07', JSON_ARRAY(JSON_OBJECT('date', '2024-05-06', 'exercise_type', 'strength', 'duration_minutes', 82, 'calories_burned', 597), JSON_OBJECT('date', '2024-04-23', 'exercise_type', 'hiit', 'duration_minutes', 30, 'calories_burned', 459), JSON_OBJECT('date', '2024-04-30', 'exercise_type', 'cardio', 'duration_minutes', 78, 'calories_burned', 258)), '<health_profile><age>36</age><weight>131</weight><height>175</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>endurance</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Avery Lee', 'avery.lee@email.com, (555) 963-5373', '2024-01-14', JSON_ARRAY(JSON_OBJECT('date', '2024-02-03', 'exercise_type', 'swimming', 'duration_minutes', 72, 'calories_burned', 574)), '<health_profile><age>50</age><weight>193</weight><height>157</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>weight_loss</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Casey Wilson', 'casey.wilson@email.com, (555) 675-2375', '2024-04-26', JSON_ARRAY(JSON_OBJECT('date', '2024-05-04', 'exercise_type', 'cycling', 'duration_minutes', 85, 'calories_burned', 221), JSON_OBJECT('date', '2024-05-06', 'exercise_type', 'cycling', 'duration_minutes', 66, 'calories_burned', 545)), '<health_profile><age>19</age><weight>166</weight><height>167</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>weight_loss</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Avery Thomas', 'avery.thomas@email.com, (555) 315-4735', '2024-01-23', JSON_ARRAY(JSON_OBJECT('date', '2024-02-03', 'exercise_type', 'zumba', 'duration_minutes', 31, 'calories_burned', 368)), '<health_profile><age>31</age><weight>121</weight><height>163</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>stress_relief</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Casey Davis', 'casey.davis@email.com, (555) 215-8231', '2024-02-23', JSON_ARRAY(JSON_OBJECT('date', '2024-03-08', 'exercise_type', 'hiit', 'duration_minutes', 57, 'calories_burned', 286)), '<health_profile><age>39</age><weight>162</weight><height>157</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>flexibility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Taylor Anderson', 'taylor.anderson@email.com, (555) 907-5448', '2024-05-17', JSON_ARRAY(JSON_OBJECT('date', '2024-05-31', 'exercise_type', 'hiit', 'duration_minutes', 43, 'calories_burned', 227), JSON_OBJECT('date', '2024-06-02', 'exercise_type', 'yoga', 'duration_minutes', 56, 'calories_burned', 253)), '<health_profile><age>52</age><weight>154</weight><height>178</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>mobility</goal></fitness_goals>
<allergies>pollen</allergies></health_profile>'),
('Reese Miller', 'reese.miller@email.com, (555) 462-1796', '2024-01-15', JSON_ARRAY(JSON_OBJECT('date', '2024-01-23', 'exercise_type', 'strength', 'duration_minutes', 58, 'calories_burned', 468), JSON_OBJECT('date', '2024-01-30', 'exercise_type', 'yoga', 'duration_minutes', 32, 'calories_burned', 280)), '<health_profile><age>29</age><weight>153</weight><height>181</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>strength</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Casey Moore', 'casey.moore@email.com, (555) 204-1507', '2024-01-24', JSON_ARRAY(JSON_OBJECT('date', '2024-02-12', 'exercise_type', 'yoga', 'duration_minutes', 83, 'calories_burned', 373), JSON_OBJECT('date', '2024-01-29', 'exercise_type', 'yoga', 'duration_minutes', 78, 'calories_burned', 365)), '<health_profile><age>46</age><weight>154</weight><height>184</height>
<medical_conditions>hypertension</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>flexibility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Alex Smith', 'alex.smith@email.com, (555) 623-9190', '2024-04-09', JSON_ARRAY(JSON_OBJECT('date', '2024-05-03', 'exercise_type', 'zumba', 'duration_minutes', 74, 'calories_burned', 586)), '<health_profile><age>18</age><weight>170</weight><height>174</height>
<medical_conditions>asthma</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>endurance</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Avery Miller', 'avery.miller@email.com, (555) 333-7137', '2024-04-27', JSON_ARRAY(JSON_OBJECT('date', '2024-05-09', 'exercise_type', 'cardio', 'duration_minutes', 82, 'calories_burned', 214)), '<health_profile><age>31</age><weight>152</weight><height>168</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>stress_relief</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Morgan Johnson', 'morgan.johnson@email.com, (555) 337-1812', '2024-05-10', JSON_ARRAY(JSON_OBJECT('date', '2024-05-28', 'exercise_type', 'cardio', 'duration_minutes', 72, 'calories_burned', 237), JSON_OBJECT('date', '2024-06-09', 'exercise_type', 'cardio', 'duration_minutes', 52, 'calories_burned', 593)), '<health_profile><age>18</age><weight>130</weight><height>181</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>weight_loss</goal><goal>mobility</goal></fitness_goals>
<allergies>soy</allergies></health_profile>'),
('Reese Brown', 'reese.brown@email.com, (555) 282-2616', '2024-02-02', JSON_ARRAY(JSON_OBJECT('date', '2024-02-09', 'exercise_type', 'zumba', 'duration_minutes', 90, 'calories_burned', 440)), '<health_profile><age>53</age><weight>138</weight><height>176</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>endurance</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Emerson Brown', 'emerson.brown@email.com, (555) 638-7083', '2024-04-21', JSON_ARRAY(JSON_OBJECT('date', '2024-04-25', 'exercise_type', 'hiit', 'duration_minutes', 79, 'calories_burned', 535), JSON_OBJECT('date', '2024-04-29', 'exercise_type', 'swimming', 'duration_minutes', 38, 'calories_burned', 444), JSON_OBJECT('date', '2024-04-29', 'exercise_type', 'strength', 'duration_minutes', 37, 'calories_burned', 282)), '<health_profile><age>35</age><weight>173</weight><height>153</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>endurance</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Jamie Miller', 'jamie.miller@email.com, (555) 197-3913', '2024-03-19', JSON_ARRAY(JSON_OBJECT('date', '2024-03-26', 'exercise_type', 'cardio', 'duration_minutes', 89, 'calories_burned', 412)), '<health_profile><age>20</age><weight>185</weight><height>182</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>mobility</goal></fitness_goals>
<allergies>latex</allergies></health_profile>'),
('Avery Moore', 'avery.moore@email.com, (555) 475-8915', '2024-01-23', JSON_ARRAY(JSON_OBJECT('date', '2024-02-21', 'exercise_type', 'hiit', 'duration_minutes', 83, 'calories_burned', 493), JSON_OBJECT('date', '2024-02-05', 'exercise_type', 'cycling', 'duration_minutes', 75, 'calories_burned', 230), JSON_OBJECT('date', '2024-02-02', 'exercise_type', 'hiit', 'duration_minutes', 79, 'calories_burned', 386)), '<health_profile><age>48</age><weight>181</weight><height>168</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>mobility</goal><goal>strength</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Alex Brown', 'alex.brown@email.com, (555) 384-2462', '2024-02-07', JSON_ARRAY(JSON_OBJECT('date', '2024-03-03', 'exercise_type', 'cardio', 'duration_minutes', 37, 'calories_burned', 559)), '<health_profile><age>52</age><weight>169</weight><height>157</height>
<medical_conditions>none</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>stress_relief</goal></fitness_goals>
<allergies>nuts</allergies></health_profile>'),
('Taylor Thomas', 'taylor.thomas@email.com, (555) 438-9296', '2024-05-02', JSON_ARRAY(JSON_OBJECT('date', '2024-05-30', 'exercise_type', 'hiit', 'duration_minutes', 71, 'calories_burned', 516), JSON_OBJECT('date', '2024-05-29', 'exercise_type', 'cardio', 'duration_minutes', 83, 'calories_burned', 410)), '<health_profile><age>27</age><weight>163</weight><height>179</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>endurance</goal><goal>mobility</goal></fitness_goals>
<allergies>none</allergies></health_profile>'),
('Reese Johnson', 'reese.johnson@email.com, (555) 449-6585', '2024-05-09', JSON_ARRAY(JSON_OBJECT('date', '2024-05-20', 'exercise_type', 'strength', 'duration_minutes', 71, 'calories_burned', 542)), '<health_profile><age>36</age><weight>183</weight><height>168</height>
<medical_conditions>diabetes</medical_conditions>
<fitness_goals><goal>stress_relief</goal><goal>weight_loss</goal></fitness_goals>
<allergies>none</allergies></health_profile>');
-- Insert Equipment (25 records)
INSERT INTO Equipment (name, type, status, location, specifications_xml) VALUES
('Treadmill Pro X1', 'Cardio', 'working', 'Cardio Zone A',
 '<specifications><manufacturer>FitnessTech</manufacturer><model>Pro X1</model><year>2023</year><max_speed>20</max_speed><max_incline>15</max_incline><programs>20</programs><warranty_expires>2025-12-31</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>2450</usage_hours></specifications>'),

('Elliptical Elite 200', 'Cardio', 'working', 'Cardio Zone A',
 '<specifications><manufacturer>CardioMax</manufacturer><model>Elite 200</model><year>2023</year><resistance_levels>25</resistance_levels><stride_length>21</stride_length><programs>15</programs><warranty_expires>2025-06-30</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>1980</usage_hours></specifications>'),

('Rowing Machine R500', 'Cardio', 'working', 'Cardio Zone B',
 '<specifications><manufacturer>RowTech</manufacturer><model>R500</model><year>2022</year><resistance_type>magnetic</resistance_type><max_resistance>10</max_resistance><programs>12</programs><warranty_expires>2024-08-15</warranty_expires><maintenance_schedule>quarterly</maintenance_schedule><usage_hours>1560</usage_hours></specifications>'),

('Spin Bike SB300', 'Cardio', 'working', 'Cycling Studio',
 '<specifications><manufacturer>SpinCycle</manufacturer><model>SB300</model><year>2023</year><resistance_type>magnetic</resistance_type><flywheel_weight>40</flywheel_weight><adjustable_seat>yes</adjustable_seat><warranty_expires>2026-01-31</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>3200</usage_hours></specifications>'),

('Cable Machine CM400', 'Strength', 'working', 'Strength Zone A',
 '<specifications><manufacturer>StrengthMax</manufacturer><model>CM400</model><year>2022</year><weight_stack>200</weight_stack><stations>4</stations><cable_type>aircraft</cable_type><warranty_expires>2024-11-30</warranty_expires><maintenance_schedule>quarterly</maintenance_schedule><usage_hours>2890</usage_hours></specifications>'),

('Smith Machine SM200', 'Strength', 'working', 'Free Weight Area',
 '<specifications><manufacturer>IronForge</manufacturer><model>SM200</model><year>2023</year><bar_weight>20</bar_weight><safety_stops>yes</safety_stops><max_weight>500</max_weight><warranty_expires>2025-09-15</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>2100</usage_hours></specifications>'),

('Leg Press LP300', 'Strength', 'working', 'Strength Zone B',
 '<specifications><manufacturer>LegPower</manufacturer><model>LP300</model><year>2022</year><weight_capacity>1000</weight_capacity><angle>45</angle><safety_locks>yes</safety_locks><warranty_expires>2024-12-20</warranty_expires><maintenance_schedule>quarterly</maintenance_schedule><usage_hours>1750</usage_hours></specifications>'),

('Chest Press CP150', 'Strength', 'working', 'Strength Zone A',
 '<specifications><manufacturer>ChestMax</manufacturer><model>CP150</model><year>2023</year><weight_stack>150</weight_stack><pneumatic_assistance>yes</pneumatic_assistance><adjustable_seat>yes</adjustable_seat><warranty_expires>2025-07-10</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>1420</usage_hours></specifications>'),

('Lat Pulldown LD250', 'Strength', 'working', 'Strength Zone B',
 '<specifications><manufacturer>BackBuilder</manufacturer><model>LD250</model><year>2022</year><weight_stack>250</weight_stack><wide_grip_bar>yes</wide_grip_bar><knee_pads>adjustable</knee_pads><warranty_expires>2024-10-05</warranty_expires><maintenance_schedule>quarterly</maintenance_schedule><usage_hours>2200</usage_hours></specifications>'),

('Shoulder Press SP180', 'Strength', 'working', 'Strength Zone A',
 '<specifications><manufacturer>ShoulderForce</manufacturer><model>SP180</model><year>2023</year><weight_stack>180</weight_stack><seat_adjustment>pneumatic</seat_adjustment><back_support>yes</back_support><warranty_expires>2025-04-22</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>1680</usage_hours></specifications>'),

('Dumbbells Set 5-100lbs', 'Free Weights', 'working', 'Free Weight Area',
 '<specifications><manufacturer>IronGrip</manufacturer><model>Pro Series</model><year>2023</year><weight_range>5-100</weight_range><increment>5</increment><material>rubber_coated</material><warranty_expires>2028-01-01</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>4500</usage_hours></specifications>'),

('Barbell Olympic Set', 'Free Weights', 'working', 'Free Weight Area',
 '<specifications><manufacturer>OlympicPro</manufacturer><model>Competition</model><year>2022</year><bar_weight>45</bar_weight><plate_set>2.5-45lbs</plate_set><material>steel</material><warranty_expires>2027-03-15</warranty_expires><maintenance_schedule>weekly</maintenance_schedule><usage_hours>3800</usage_hours></specifications>'),

('Kettlebell Set 10-80lbs', 'Free Weights', 'working', 'Functional Training Area',
 '<specifications><manufacturer>KettlePro</manufacturer><model>Cast Iron</model><year>2023</year><weight_range>10-80</weight_range><increment>5</increment><material>cast_iron</material><warranty_expires>2026-08-30</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>2900</usage_hours></specifications>'),

('Battle Ropes 2inch 50ft', 'Functional', 'working', 'Functional Training Area',
 '<specifications><manufacturer>FunctionalFit</manufacturer><model>Heavy Duty</model><year>2022</year><diameter>2</diameter><length>50</length><material>manila</material><warranty_expires>2024-06-15</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>1200</usage_hours></specifications>'),

('TRX Suspension Trainer', 'Functional', 'working', 'Group Fitness Room',
 '<specifications><manufacturer>TRX</manufacturer><model>Professional</model><year>2023</year><length>7</length><weight_capacity>350</weight_capacity><accessories>door_anchor,ceiling_mount</accessories><warranty_expires>2025-11-20</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>950</usage_hours></specifications>'),

('Medicine Ball Set 6-30lbs', 'Functional', 'working', 'Functional Training Area',
 '<specifications><manufacturer>MedBall Pro</manufacturer><model>Rubber Grip</model><year>2022</year><weight_range>6-30</weight_range><increment>2</increment><material>rubber</material><warranty_expires>2025-02-28</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>1800</usage_hours></specifications>'),

('Yoga Mats Premium 20pcs', 'Yoga/Pilates', 'working', 'Yoga Studio',
 '<specifications><manufacturer>YogaComfort</manufacturer><model>Premium Plus</model><year>2023</year><thickness>6mm</thickness><material>eco_friendly</material><quantity>20</quantity><warranty_expires>2025-12-31</warranty_expires><maintenance_schedule>weekly</maintenance_schedule><usage_hours>2600</usage_hours></specifications>'),

('Pilates Reformer PR400', 'Yoga/Pilates', 'working', 'Pilates Studio',
 '<specifications><manufacturer>PilatesPro</manufacturer><model>PR400</model><year>2022</year><spring_system>5_springs</spring_system><carriage_wheels>ball_bearing</carriage_wheels><adjustable_footbar>yes</adjustable_footbar><warranty_expires>2024-09-10</warranty_expires><maintenance_schedule>quarterly</maintenance_schedule><usage_hours>1350</usage_hours></specifications>'),

('Boxing Heavy Bag 100lbs', 'Boxing', 'working', 'Boxing Area',
 '<specifications><manufacturer>BoxPro</manufacturer><model>Heavy Duty</model><year>2023</year><weight>100</weight><height>48</height><material>leather</material><warranty_expires>2026-03-31</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>2400</usage_hours></specifications>'),

('Speed Bag Platform', 'Boxing', 'working', 'Boxing Area',
 '<specifications><manufacturer>SpeedBox</manufacturer><model>Adjustable Pro</model><year>2022</year><height_range>60-72</height_range><platform_size>24x16</platform_size><swivel_type>double_end</swivel_type><warranty_expires>2024-07-25</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>980</usage_hours></specifications>'),

('Pool Noodles 30pcs', 'Aqua Fitness', 'working', 'Pool Area',
 '<specifications><manufacturer>AquaFit</manufacturer><model>Foam Pro</model><year>2023</year><length>60</length><diameter>2.5</diameter><material>closed_cell_foam</material><warranty_expires>2025-10-15</warranty_expires><maintenance_schedule>weekly</maintenance_schedule><usage_hours>1100</usage_hours></specifications>'),

('Aqua Dumbbells 15pairs', 'Aqua Fitness', 'working', 'Pool Area',
 '<specifications><manufacturer>WaterWeight</manufacturer><model>Resistance Pro</model><year>2022</year><resistance_type>water</resistance_type><adjustable>yes</adjustable><material>foam_EVA</material><warranty_expires>2024-12-05</warranty_expires><maintenance_schedule>weekly</maintenance_schedule><usage_hours>850</usage_hours></specifications>'),

('Sound System Premium', 'Audio/Visual', 'working', 'Group Fitness Room',
 '<specifications><manufacturer>AudioMax</manufacturer><model>Fitness Sound Pro</model><year>2023</year><watts>500</watts><speakers>6</speakers><wireless>bluetooth</wireless><warranty_expires>2025-08-20</warranty_expires><maintenance_schedule>quarterly</maintenance_schedule><usage_hours>3600</usage_hours></specifications>'),

('Mirrors Wall Mounted', 'Accessories', 'working', 'Dance Studio',
 '<specifications><manufacturer>ReflectPro</manufacturer><model>Shatterproof</model><year>2022</year><size>4x8</size><quantity>8</quantity><safety_backing>yes</safety_backing><warranty_expires>2027-01-10</warranty_expires><maintenance_schedule>monthly</maintenance_schedule><usage_hours>5000</usage_hours></specifications>'),

('Air Conditioning Unit', 'HVAC', 'under_maintenance', 'Main Gym Floor',
 '<specifications><manufacturer>CoolAir</manufacturer><model>Industrial 5000</model><year>2021</year><btu>60000</btu><coverage_area>5000</coverage_area><energy_rating>A</energy_rating><warranty_expires>2023-05-30</warranty_expires><maintenance_schedule>quarterly</maintenance_schedule><usage_hours>8760</usage_hours></specifications>');

-- Insert Subscriptions (35 records)
INSERT INTO Subscription (member_id, start_date, end_date, status, subscription_details) VALUES
(1, '2024-01-15', '2025-01-15', 'active', '<subscription><plan>Premium Annual</plan><features><feature>All Equipment Access</feature><feature>Personal Training 2x/month</feature><feature>Guest Privileges</feature></features><price>1200</price><billing_cycle>annual</billing_cycle></subscription>'),
(2, '2024-01-20', '2024-07-20', 'active', '<subscription><plan>Basic 6-Month</plan><features><feature>Equipment Access</feature><feature>Group Classes</feature></features><price>300</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(3, '2024-02-01', '2024-05-01', 'active', '<subscription><plan>Monthly Premium</plan><features><feature>All Access</feature><feature>Personal Training</feature></features><price>120</price><billing_cycle>monthly</billing_cycle></subscription>'),
(4, '2024-02-10', '2025-02-10', 'active', '<subscription><plan>Swimming Annual</plan><features><feature>Pool Access</feature><feature>Aqua Classes</feature></features><price>800</price><billing_cycle>annual</billing_cycle></subscription>'),
(5, '2024-02-15', '2024-08-15', 'active', '<subscription><plan>Strength 6-Month</plan><features><feature>Weight Room</feature><feature>Strength Classes</feature></features><price>400</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(6, '2024-03-01', '2025-03-01', 'active', '<subscription><plan>Dance Annual</plan><features><feature>Group Classes</feature><feature>Zumba Access</feature></features><price>600</price><billing_cycle>annual</billing_cycle></subscription>'),
(7, '2024-03-10', '2024-09-10', 'active', '<subscription><plan>Cycling 6-Month</plan><features><feature>Bike Access</feature><feature>Spinning Classes</feature></features><price>350</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(8, '2024-03-15', '2024-06-15', 'inactive', '<subscription><plan>Boxing 3-Month</plan><features><feature>Boxing Ring</feature><feature>Boxing Classes</feature></features><price>200</price><billing_cycle>quarterly</billing_cycle></subscription>'),
(9, '2024-04-01', '2025-04-01', 'active', '<subscription><plan>Basketball Annual</plan><features><feature>Court Access</feature><feature>Team Practice</feature></features><price>500</price><billing_cycle>annual</billing_cycle></subscription>'),
(10, '2024-04-10', '2024-10-10', 'active', '<subscription><plan>Dance 6-Month</plan><features><feature>Studio Access</feature><feature>Dance Classes</feature></features><price>420</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(11, '2024-04-20', '2025-04-20', 'active', '<subscription><plan>Climbing Annual</plan><features><feature>Wall Access</feature><feature>Equipment Rental</feature></features><price>900</price><billing_cycle>annual</billing_cycle></subscription>'),
(12, '2024-05-01', '2024-08-01', 'active', '<subscription><plan>Wellness 3-Month</plan><features><feature>Meditation Room</feature><feature>Tai Chi Classes</feature></features><price>180</price><billing_cycle>quarterly</billing_cycle></subscription>'),
(13, '2024-05-10', '2025-05-10', 'active', '<subscription><plan>Rowing Annual</plan><features><feature>Equipment Access</feature><feature>Endurance Training</feature></features><price>750</price><billing_cycle>annual</billing_cycle></subscription>'),
(14, '2024-05-15', '2024-11-15', 'active', '<subscription><plan>Cardio 6-Month</plan><features><feature>Cardio Equipment</feature><feature>Spinning Classes</feature></features><price>380</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(15, '2024-06-01', '2025-06-01', 'active', '<subscription><plan>Martial Arts Annual</plan><features><feature>Dojo Access</feature><feature>Training Classes</feature></features><price>850</price><billing_cycle>annual</billing_cycle></subscription>'),
(16, '2024-06-10', '2024-12-10', 'active', '<subscription><plan>Barre 6-Month</plan><features><feature>Studio Access</feature><feature>Barre Classes</feature></features><price>420</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(17, '2024-06-15', '2025-06-15', 'active', '<subscription><plan>Functional Training Annual</plan><features><feature>Equipment Access</feature><feature>Personal Training</feature></features><price>1000</price><billing_cycle>annual</billing_cycle></subscription>'),
(18, '2024-07-01', '2025-07-01', 'active', '<subscription><plan>Aqua Fitness Annual</plan><features><feature>Pool Access</feature><feature>Water Classes</feature></features><price>650</price><billing_cycle>annual</billing_cycle></subscription>'),
(19, '2024-07-10', '2024-10-10', 'active', '<subscription><plan>HIIT 3-Month</plan><features><feature>Group Classes</feature><feature>Equipment Access</feature></features><price>220</price><billing_cycle>quarterly</billing_cycle></subscription>'),
(20, '2024-07-15', '2025-01-15', 'active', '<subscription><plan>Flexibility 6-Month</plan><features><feature>Stretching Classes</feature><feature>Yoga Access</feature></features><price>300</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(21, '2024-08-01', '2025-08-01', 'active', '<subscription><plan>Powerlifting Annual</plan><features><feature>Heavy Equipment</feature><feature>Competition Training</feature></features><price>950</price><billing_cycle>annual</billing_cycle></subscription>'),
(22, '2024-08-10', '2025-02-10', 'active', '<subscription><plan>Mindfulness 6-Month</plan><features><feature>Meditation Classes</feature><feature>Wellness Programs</feature></features><price>250</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(23, '2024-08-15', '2025-08-15', 'active', '<subscription><plan>CrossFit Annual</plan><features><feature>Box Access</feature><feature>WOD Classes</feature></features><price>1100</price><billing_cycle>annual</billing_cycle></subscription>'),
(24, '2024-09-01', '2025-09-01', 'active', '<subscription><plan>Aerial Yoga Annual</plan><features><feature>Studio Access</feature><feature>Silk Equipment</feature></features><price>800</price><billing_cycle>annual</billing_cycle></subscription>'),
(25, '2024-09-10', '2025-03-10', 'active', '<subscription><plan>Tennis 6-Month</plan><features><feature>Court Access</feature><feature>Equipment Rental</feature></features><price>450</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(26, '2024-09-15', '2024-12-15', 'active', '<subscription><plan>Kickboxing 3-Month</plan><features><feature>Ring Access</feature><feature>Training Classes</feature></features><price>180</price><billing_cycle>quarterly</billing_cycle></subscription>'),
(27, '2024-10-01', '2025-10-01', 'active', '<subscription><plan>Calisthenics Annual</plan><features><feature>Bodyweight Area</feature><feature>Outdoor Training</feature></features><price>550</price><billing_cycle>annual</billing_cycle></subscription>'),
(28, '2024-10-10', '2025-04-10', 'active', '<subscription><plan>Reformer Pilates 6-Month</plan><features><feature>Equipment Access</feature><feature>Private Sessions</feature></features><price>600</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(29, '2024-10-15', '2025-10-15', 'active', '<subscription><plan>Obstacle Course Annual</plan><features><feature>Course Access</feature><feature>Adventure Training</feature></features><price>750</price><billing_cycle>annual</billing_cycle></subscription>'),
(30, '2024-11-01', '2025-05-01', 'active', '<subscription><plan>All Access 6-Month</plan><features><feature>Full Gym Access</feature><feature>All Classes</feature><feature>Guest Privileges</feature></features><price>700</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(1, '2023-12-01', '2024-12-01', 'inactive', '<subscription><plan>Previous Annual</plan><features><feature>Basic Access</feature></features><price>800</price><billing_cycle>annual</billing_cycle></subscription>'),
(15, '2023-10-01', '2024-04-01', 'inactive', '<subscription><plan>Previous 6-Month</plan><features><feature>Limited Access</feature></features><price>300</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(20, '2023-08-15', '2024-02-15', 'inactive', '<subscription><plan>Previous 6-Month</plan><features><feature>Cardio Only</feature></features><price>250</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(8, '2023-11-01', '2024-05-01', 'inactive', '<subscription><plan>Previous 6-Month</plan><features><feature>Basic Gym</feature></features><price>280</price><billing_cycle>semi_annual</billing_cycle></subscription>'),
(25, '2023-09-01', '2024-03-01', 'inactive', '<subscription><plan>Previous 6-Month</plan><features><feature>Tennis Only</feature></features><price>320</price><billing_cycle>semi_annual</billing_cycle></subscription>');

-- Insert Sessions (50 records)
INSERT INTO Session (trainer_id, session_type, start_time, end_time, date, capacity, session_plan) VALUES
(1, 'Personal Training', '07:00:00', '08:00:00', '2024-12-02', 1, '<session_plan><warm_up>Dynamic stretching - 10 minutes</warm_up><main_workout><exercise>Squats</exercise><sets>4</sets><reps>10-12</reps><exercise>Bench Press</exercise><sets>4</sets><reps>8-10</reps></main_workout><cool_down>Static stretching - 10 minutes</cool_down><equipment><item>Barbell</item><item>Bench</item></equipment></session_plan>'),
(2, 'Yoga Flow', '09:00:00', '10:30:00', '2024-12-02', 15, '<session_plan><warm_up>Breathing exercises - 5 minutes</warm_up><main_workout><pose>Sun Salutation</pose><duration>20 minutes</duration><pose>Warrior Sequence</pose><duration>30 minutes</duration></main_workout><cool_down>Savasana - 15 minutes</cool_down><equipment><item>Yoga Mats</item><item>Blocks</item></equipment></session_plan>'),
(3, 'CrossFit WOD', '06:00:00', '07:00:00', '2024-12-02', 12, '<session_plan><warm_up>Dynamic movements - 15 minutes</warm_up><main_workout><exercise>EMOM 20 minutes</exercise><rounds>20</rounds><exercise_details>5 Pull-ups, 10 Push-ups, 15 Squats</exercise_details></main_workout><cool_down>Mobility work - 10 minutes</cool_down><equipment><item>Pull-up Bar</item><item>Floor Space</item></equipment></session_plan>'),
(4, 'Pilates', '10:00:00', '11:00:00', '2024-12-02', 10, '<session_plan><warm_up>Breathing exercises - 8 minutes</warm_up><main_workout><exercise>Core Stabilization</exercise><duration>25 minutes</duration><exercise>Flexibility Work</exercise><duration>20 minutes</duration></main_workout><cool_down>Relaxation - 7 minutes</cool_down><equipment><item>Mats</item><item>Resistance Bands</item></equipment></session_plan>'),
(5, 'Swimming Technique', '08:00:00', '09:00:00', '2024-12-02', 8, '<session_plan><warm_up>Pool walking - 10 minutes</warm_up><main_workout><exercise>Freestyle Technique</exercise><sets>8</sets><distance>50m</distance><exercise>Backstroke Practice</exercise><sets>6</sets><distance>50m</distance></main_workout><cool_down>Easy swimming - 10 minutes</cool_down><equipment><item>Pool</item><item>Kickboards</item></equipment></session_plan>'),
(6, 'Zumba', '07:00:00', '08:00:00', '2024-12-02', 20, '<session_plan><warm_up>Light dancing - 10 minutes</warm_up><main_workout><song>Salsa Rhythm</song><duration>15 minutes</duration><song>Reggaeton Beat</song><duration>15 minutes</duration><song>Merengue Flow</song><duration>15 minutes</duration></main_workout><cool_down>Stretching dance - 5 minutes</cool_down><equipment><item>Sound System</item><item>Dance Floor</item></equipment></session_plan>'),
(1, 'Strength Training', '08:30:00', '09:30:00', '2024-12-03', 1, '<session_plan><warm_up>Joint mobility - 10 minutes</warm_up><main_workout><exercise>Deadlifts</exercise><sets>4</sets><reps>6-8</reps><exercise>Overhead Press</exercise><sets>3</sets><reps>8-10</reps></main_workout><cool_down>Static stretching - 10 minutes</cool_down><equipment><item>Barbell</item><item>Plates</item></equipment></session_plan>'),
(2, 'Vinyasa Yoga', '09:30:00', '11:00:00', '2024-12-03', 15, '<session_plan><warm_up>Centering breath - 5 minutes</warm_up><main_workout><sequence>Sun Salutation A</sequence><rounds>5</rounds><sequence>Standing Poses Flow</sequence><duration>30 minutes</duration></main_workout><cool_down>Restorative poses - 20 minutes</cool_down><equipment><item>Yoga Mats</item><item>Props</item></equipment></session_plan>'),
(3, 'Metcon', '06:30:00', '07:30:00', '2024-12-03', 12, '<session_plan><warm_up>Movement prep - 15 minutes</warm_up><main_workout><exercise>21-15-9 Reps</exercise><movements>Thrusters, Pull-ups</movements><time_cap>15 minutes</time_cap></main_workout><cool_down>Recovery walk - 10 minutes</cool_down><equipment><item>Barbells</item><item>Pull-up Bar</item></equipment></session_plan>'),
(4, 'Mat Pilates', '11:30:00', '12:30:00', '2024-12-03', 12, '<session_plan><warm_up>Spinal mobility - 8 minutes</warm_up><main_workout><exercise>The Hundred</exercise><reps>100</reps><exercise>Roll Up</exercise><reps>10</reps><exercise>Single Leg Stretch</exercise><reps>10 each</reps></main_workout><cool_down>Hip stretches - 10 minutes</cool_down><equipment><item>Mats</item></equipment></session_plan>'),
(5, 'Aqua Aerobics', '09:30:00', '10:30:00', '2024-12-03', 15, '<session_plan><warm_up>Water walking - 10 minutes</warm_up><main_workout><exercise>Water Jogging</exercise><duration>15 minutes</duration><exercise>Resistance Exercises</exercise><duration>20 minutes</duration></main_workout><cool_down>Floating relaxation - 5 minutes</cool_down><equipment><item>Pool</item><item>Water Weights</item></equipment></session_plan>'),
(6, 'Hip Hop Dance', '07:30:00', '08:30:00', '2024-12-03', 18, '<session_plan><warm_up>Freestyle movement - 10 minutes</warm_up><main_workout><routine>Basic Hip Hop Steps</routine><duration>20 minutes</duration><routine>Choreography Practice</routine><duration>20 minutes</duration></main_workout><cool_down>Cool down dance - 10 minutes</cool_down><equipment><item>Sound System</item><item>Mirrors</item></equipment></session_plan>'),
(1, 'Personal Training', '10:00:00', '11:00:00', '2024-12-04', 1, '<session_plan><warm_up>Dynamic stretching - 10 minutes</warm_up><main_workout><exercise>Squats</exercise><sets>4</sets><reps>12-15</reps><exercise>Bench Press</exercise><sets>4</sets><reps>8-12</reps></main_workout><cool_down>Foam rolling - 10 minutes</cool_down><equipment><item>Barbell</item><item>Bench</item><item>Foam Roller</item></equipment></session_plan>'),
(7, 'Boxing Fundamentals', '18:00:00', '19:00:00', '2024-12-04', 8, '<session_plan><warm_up>Shadow boxing - 10 minutes</warm_up><main_workout><drill>Jab-Cross Combinations</drill><rounds>6</rounds><duration>3 minutes each</duration><drill>Heavy Bag Work</drill><rounds>4</rounds></main_workout><cool_down>Stretching - 10 minutes</cool_down><equipment><item>Boxing Gloves</item><item>Heavy Bags</item></equipment></session_plan>'),
(8, 'Spinning', '06:00:00', '07:00:00', '2024-12-04', 16, '<session_plan><warm_up>Easy pedaling - 10 minutes</warm_up><main_workout><interval>High Intensity</interval><duration>2 minutes</duration><recovery>1 minute</recovery><repeats>8</repeats></main_workout><cool_down>Cool down ride - 10 minutes</cool_down><equipment><item>Spin Bikes</item><item>Music System</item></equipment></session_plan>'),
(9, 'Kickboxing', '19:00:00', '20:00:00', '2024-12-04', 12, '<session_plan><warm_up>Joint mobility - 10 minutes</warm_up><main_workout><combination>Jab-Cross-Hook</combination><rounds>6</rounds><combination>Kicks and Knees</combination><rounds>6</rounds></main_workout><cool_down>Flexibility - 10 minutes</cool_down><equipment><item>Pads</item><item>Gloves</item></equipment></session_plan>'),
(10, 'Functional Training', '08:00:00', '09:00:00', '2024-12-04', 10, '<session_plan><warm_up>Movement patterns - 15 minutes</warm_up><main_workout><exercise>Kettlebell Swings</exercise><sets>4</sets><reps>20</reps><exercise>TRX Rows</exercise><sets>3</sets><reps>15</reps></main_workout><cool_down>Mobility work - 10 minutes</cool_down><equipment><item>Kettlebells</item><item>TRX</item></equipment></session_plan>'),
(11, 'Tai Chi', '07:00:00', '08:00:00', '2024-12-05', 15, '<session_plan><warm_up>Breathing meditation - 10 minutes</warm_up><main_workout><form>24-Form Yang Style</form><repetitions>3</repetitions><focus>Balance and flow</focus></main_workout><cool_down>Standing meditation - 10 minutes</cool_down><equipment><item>Open Space</item></equipment></session_plan>'),
(12, 'Rowing Technique', '06:30:00', '07:30:00', '2024-12-05', 8, '<session_plan><warm_up>Easy rowing - 10 minutes</warm_up><main_workout><drill>Catch Position</drill><duration>10 minutes</duration><drill>Power Application</drill><duration>15 minutes</duration><drill>Full Stroke</drill><duration>15 minutes</duration></main_workout><cool_down>Stretching - 10 minutes</cool_down><equipment><item>Rowing Machines</item></equipment></session_plan>'),
(13, 'Spin Class', '18:30:00', '19:30:00', '2024-12-05', 20, '<session_plan><warm_up>Easy spinning - 10 minutes</warm_up><main_workout><climb>Hill Simulation</climb><duration>15 minutes</duration><sprint>Interval Sprints</sprint><intervals>8x30 seconds</intervals></main_workout><cool_down>Recovery spin - 10 minutes</cool_down><equipment><item>Spin Bikes</item><item>Heart Rate Monitors</item></equipment></session_plan>'),
(14, 'Martial Arts', '19:30:00', '20:30:00', '2024-12-05', 12, '<session_plan><warm_up>Forms practice - 15 minutes</warm_up><main_workout><technique>Basic Strikes</technique><repetitions>50 each</repetitions><technique>Blocking Drills</technique><duration>20 minutes</duration></main_workout><cool_down>Meditation - 10 minutes</cool_down><equipment><item>Training Mats</item></equipment></session_plan>'),
(15, 'Barre Workout', '10:00:00', '11:00:00', '2024-12-05', 15, '<session_plan><warm_up>Posture alignment - 10 minutes</warm_up><main_workout><exercise>Plie Squats</exercise><reps>40</reps><exercise>Arm Toning</exercise><duration>15 minutes</duration><exercise>Core Work</exercise><duration>15 minutes</duration></main_workout><cool_down>Stretching - 10 minutes</cool_down><equipment><item>Ballet Barre</item><item>Light Weights</item></equipment></session_plan>'),
(1, 'Advanced Strength', '14:00:00', '15:00:00', '2024-12-06', 1, '<session_plan><warm_up>Activation exercises - 15 minutes</warm_up><main_workout><exercise>Romanian Deadlifts</exercise><sets>4</sets><reps>6-8</reps><exercise>Weighted Pull-ups</exercise><sets>3</sets><reps>5-8</reps></main_workout><cool_down>Deep stretching - 15 minutes</cool_down><equipment><item>Olympic Bar</item><item>Weight Plates</item><item>Pull-up Bar</item></equipment></session_plan>'),
(2, 'Restorative Yoga', '18:00:00', '19:30:00', '2024-12-06', 12, '<session_plan><warm_up>Gentle breathing - 10 minutes</warm_up><main_workout><pose>Supported Child Pose</pose><duration>8 minutes</duration><pose>Legs Up Wall</pose><duration>15 minutes</duration><pose>Savasana</pose><duration>20 minutes</duration></main_workout><cool_down>Meditation - 20 minutes</cool_down><equipment><item>Bolsters</item><item>Blankets</item><item>Blocks</item></equipment></session_plan>'),
(3, 'CrossFit Strength', '05:30:00', '06:30:00', '2024-12-06', 10, '<session_plan><warm_up>Joint prep - 15 minutes</warm_up><main_workout><exercise>Back Squat</exercise><sets>5</sets><reps>3</reps><percentage>85% 1RM</percentage><exercise>Push Press</exercise><sets>5</sets><reps>3</reps></main_workout><cool_down>Mobility - 15 minutes</cool_down><equipment><item>Squat Racks</item><item>Olympic Bars</item></equipment></session_plan>'),
(4, 'Pilates Reformer', '12:00:00', '13:00:00', '2024-12-06', 6, '<session_plan><warm_up>Reformer footwork - 10 minutes</warm_up><main_workout><exercise>Long Box Series</exercise><duration>20 minutes</duration><exercise>Short Box Series</exercise><duration>15 minutes</duration></main_workout><cool_down>Stretches on reformer - 15 minutes</cool_down><equipment><item>Pilates Reformers</item></equipment></session_plan>'),
(5, 'Water Polo Practice', '16:00:00', '17:30:00', '2024-12-06', 12, '<session_plan><warm_up>Swimming laps - 15 minutes</warm_up><main_workout><drill>Ball Handling</drill><duration>30 minutes</duration><scrimmage>Game Practice</scrimmage><duration>30 minutes</duration></main_workout><cool_down>Easy swimming - 15 minutes</cool_down><equipment><item>Pool</item><item>Water Polo Balls</item><item>Goals</item></equipment></session_plan>'),
(6, 'Latin Dance', '20:00:00', '21:00:00', '2024-12-06', 16, '<session_plan><warm_up>Basic steps - 10 minutes</warm_up><main_workout><dance>Salsa</dance><duration>20 minutes</duration><dance>Bachata</dance><duration>20 minutes</duration></main_workout><cool_down>Partner stretching - 10 minutes</cool_down><equipment><item>Dance Floor</item><item>Sound System</item></equipment></session_plan>'),
(7, 'Boxing Circuit', '17:00:00', '18:00:00', '2024-12-07', 10, '<session_plan><warm_up>Jump rope - 10 minutes</warm_up><main_workout><station>Heavy Bag</station><duration>3 minutes</duration><station>Speed Bag</station><duration>3 minutes</duration><station>Mitt Work</station><duration>3 minutes</duration><rounds>4</rounds></main_workout><cool_down>Core work - 10 minutes</cool_down><equipment><item>Boxing Equipment</item></equipment></session_plan>'),
(8, 'Indoor Cycling', '07:00:00', '08:00:00', '2024-12-07', 18, '<session_plan><warm_up>Easy pace - 10 minutes</warm_up><main_workout><phase>Endurance Ride</phase><duration>25 minutes</duration><phase>Sprint Intervals</phase><intervals>6x1 minute</intervals></main_workout><cool_down>Recovery ride - 10 minutes</cool_down><equipment><item>Stationary Bikes</item></equipment></session_plan>'),
(9, 'Combat Training', '20:30:00', '21:30:00', '2024-12-07', 8, '<session_plan><warm_up>Shadow fighting - 15 minutes</warm_up><main_workout><technique>Striking Combinations</technique><rounds>8</rounds><technique>Grappling Basics</technique><duration>20 minutes</duration></main_workout><cool_down>Flexibility work - 10 minutes</cool_down><equipment><item>Mats</item><item>Pads</item></equipment></session_plan>'),
(10, 'Core Conditioning', '12:00:00', '13:00:00', '2024-12-07', 12, '<session_plan><warm_up>Joint mobility - 10 minutes</warm_up><main_workout><exercise>Planks</exercise><duration>5 minutes</duration><exercise>Russian Twists</exercise><reps>100</reps><exercise>Mountain Climbers</exercise><duration>3 minutes</duration></main_workout><cool_down>Hip flexor stretches - 10 minutes</cool_down><equipment><item>Mats</item><item>Medicine Balls</item></equipment></session_plan>'),
(11, 'Senior Fitness', '10:00:00', '11:00:00', '2024-12-08', 10, '<session_plan><warm_up>Gentle movements - 15 minutes</warm_up><main_workout><exercise>Chair Exercises</exercise><duration>20 minutes</duration><exercise>Balance Training</exercise><duration>15 minutes</duration></main_workout><cool_down>Relaxation - 10 minutes</cool_down><equipment><item>Chairs</item><item>Light Weights</item></equipment></session_plan>'),
(12, 'Power Rowing', '06:00:00', '07:00:00', '2024-12-08', 6, '<session_plan><warm_up>Technique review - 10 minutes</warm_up><main_workout><interval>Power Pieces</interval><distance>500m</distance><rest>2 minutes</rest><repeats>6</repeats></main_workout><cool_down>Easy rowing - 10 minutes</cool_down><equipment><item>Rowing Machines</item><item>Heart Rate Monitors</item></equipment></session_plan>'),
(13, 'Cardio Blast', '19:00:00', '20:00:00', '2024-12-08', 15, '<session_plan><warm_up>Dynamic warm-up - 10 minutes</warm_up><main_workout><station>Burpees</station><duration>45 seconds</duration><station>Jump Squats</station><duration>45 seconds</duration><station>High Knees</station><duration>45 seconds</duration><rounds>6</rounds></main_workout><cool_down>Static stretching - 10 minutes</cool_down><equipment><item>Timer</item><item>Mats</item></equipment></session_plan>'),
(14, 'Self Defense', '18:00:00', '19:00:00', '2024-12-08', 12, '<session_plan><warm_up>Basic movements - 15 minutes</warm_up><main_workout><technique>Escape Techniques</technique><practice>15 minutes</practice><technique>Basic Strikes</technique><practice>15 minutes</practice><technique>Situational Drills</technique><practice>10 minutes</practice></main_workout><cool_down>Discussion and Q&A - 5 minutes</cool_down><equipment><item>Mats</item></equipment></session_plan>'),
(15, 'Ballet Fitness', '11:00:00', '12:00:00', '2024-12-08', 12, '<session_plan><warm_up>Barre warm-up - 10 minutes</warm_up><main_workout><exercise>Plie Variations</exercise><duration>15 minutes</duration><exercise>Port de Bras</exercise><duration>10 minutes</duration><exercise>Center Floor Work</exercise><duration>15 minutes</duration></main_workout><cool_down>Ballet stretches - 10 minutes</cool_down><equipment><item>Ballet Barre</item><item>Mirrors</item></equipment></session_plan>'),
(1, 'Competition Prep', '15:30:00', '16:30:00', '2024-12-09', 1, '<session_plan><warm_up>Sport-specific movements - 15 minutes</warm_up><main_workout><exercise>Competition Lifts</exercise><sets>6</sets><reps>1-3</reps><percentage>90-95% 1RM</percentage></main_workout><cool_down>Recovery protocols - 15 minutes</cool_down><equipment><item>Competition Equipment</item><item>Spotting Platform</item></equipment></session_plan>'),
(2, 'Meditation Yoga', '17:00:00', '18:30:00', '2024-12-09', 20, '<session_plan><warm_up>Breath awareness - 15 minutes</warm_up><main_workout><meditation>Walking Meditation</meditation><duration>20 minutes</duration><meditation>Seated Meditation</meditation><duration>30 minutes</duration></main_workout><cool_down>Integration - 15 minutes</cool_down><equipment><item>Meditation Cushions</item><item>Quiet Space</item></equipment></session_plan>'),
(3, 'Team WOD', '08:00:00', '09:00:00', '2024-12-09', 16, '<session_plan><warm_up>Team building exercises - 15 minutes</warm_up><main_workout><exercise>Partner WOD</exercise><movements>Synchronized movements</movements><duration>30 minutes</duration></main_workout><cool_down>Team stretching - 15 minutes</cool_down><equipment><item>Various Equipment</item></equipment></session_plan>'),
(4, 'Advanced Pilates', '13:30:00', '14:30:00', '2024-12-09', 8, '<session_plan><warm_up>Advanced breathing - 10 minutes</warm_up><main_workout><exercise>Advanced Series</exercise><difficulty>Level 3</difficulty><duration>40 minutes</duration></main_workout><cool_down>Deep stretches - 10 minutes</cool_down><equipment><item>Pilates Equipment</item><item>Props</item></equipment></session_plan>'),
(5, 'Competitive Swimming', '05:30:00', '07:00:00', '2024-12-09', 6, '<session_plan><warm_up>Technical warm-up - 20 minutes</warm_up><main_workout><set>Sprint Set</set><distance>50m x 10</distance><rest>30 seconds</rest><set>Endurance Set</set><distance>400m x 3</distance></main_workout><cool_down>Easy swimming - 20 minutes</cool_down><equipment><item>Competition Pool</item><item>Timing Systems</item></equipment></session_plan>');

-- Insert Bookings (80 records)
INSERT INTO Booking (member_id, session_id, booking_date, status) VALUES
(1, 1, '2024-11-25', 'booked'), (2, 2, '2024-11-25', 'completed'), (3, 3, '2024-11-25', 'completed'),
(4, 1, '2024-11-26', 'booked'), (5, 2, '2024-11-26', 'cancelled'), (6, 3, '2024-11-26', 'completed'),
(7, 1, '2024-11-27', 'completed'), (8, 2, '2024-11-27', 'booked'), (9, 3, '2024-11-27', 'completed'),
(10, 1, '2024-11-28', 'booked'), (11, 2, '2024-11-28', 'completed'), (12, 3, '2024-11-28', 'completed'),
(13, 4, '2024-11-29', 'completed'), (14, 5, '2024-11-29', 'booked'), (15, 6, '2024-11-29', 'completed'),
(16, 7, '2024-11-29', 'completed'), (17, 8, '2024-11-29', 'cancelled'), (18, 9, '2024-11-29', 'booked'),
(19, 10, '2024-11-30', 'completed'), (20, 11, '2024-11-30', 'booked'), (21, 12, '2024-11-30', 'completed'),
(22, 13, '2024-11-30', 'completed'), (23, 14, '2024-11-30', 'booked'), (24, 15, '2024-11-30', 'cancelled'),
(25, 1, '2024-12-01', 'completed'), (26, 2, '2024-12-01', 'booked'), (27, 3, '2024-12-01', 'completed'),
(28, 4, '2024-12-01', 'completed'), (29, 5, '2024-12-01', 'booked'), (30, 6, '2024-12-01', 'completed'),
(1, 7, '2024-12-02', 'completed'), (2, 8, '2024-12-02', 'booked'), (3, 9, '2024-12-02', 'completed'),
(4, 10, '2024-12-02', 'completed'), (5, 11, '2024-12-02', 'cancelled'), (6, 12, '2024-12-02', 'booked'),
(7, 13, '2024-12-03', 'completed'), (8, 14, '2024-12-03', 'booked'), (9, 15, '2024-12-03', 'completed'),
(10, 1, '2024-12-03', 'completed'), (11, 2, '2024-12-03', 'booked'), (12, 3, '2024-12-03', 'cancelled'),
(13, 4, '2024-12-04', 'completed'), (14, 5, '2024-12-04', 'booked'), (15, 6, '2024-12-04', 'completed'),
(16, 7, '2024-12-04', 'completed'), (17, 8, '2024-12-04', 'cancelled'), (18, 9, '2024-12-04', 'booked'),
(19, 10, '2024-12-05', 'completed'), (20, 11, '2024-12-05', 'booked'), (21, 12, '2024-12-05', 'completed'),
(22, 13, '2024-12-05', 'completed'), (23, 14, '2024-12-05', 'booked'), (24, 15, '2024-12-05', 'cancelled'),
(25, 1, '2024-12-06', 'completed'), (26, 2, '2024-12-06', 'booked'), (27, 3, '2024-12-06', 'completed'),
(28, 4, '2024-12-06', 'completed'), (29, 5, '2024-12-06', 'cancelled'), (30, 6, '2024-12-06', 'booked'),
(1, 7, '2024-12-07', 'completed'), (2, 8, '2024-12-07', 'booked'), (3, 9, '2024-12-07', 'completed'),
(4, 10, '2024-12-07', 'completed'), (5, 11, '2024-12-07', 'booked'), (6, 12, '2024-12-07', 'cancelled'),
(7, 13, '2024-12-08', 'completed'), (8, 14, '2024-12-08', 'booked'), (9, 15, '2024-12-08', 'completed'),
(10, 1, '2024-12-08', 'completed'), (11, 2, '2024-12-08', 'cancelled'), (12, 3, '2024-12-08', 'booked'),
(13, 4, '2024-12-09', 'completed'), (14, 5, '2024-12-09', 'booked'), (15, 6, '2024-12-09', 'completed'),
(16, 7, '2024-12-09', 'completed'), (17, 8, '2024-12-09', 'booked'), (18, 9, '2024-12-09', 'cancelled'),
(19, 10, '2024-12-10', 'completed'), (20, 11, '2024-12-10', 'booked'), (21, 12, '2024-12-10', 'completed'),
(22, 13, '2024-12-10', 'completed'), (23, 14, '2024-12-10', 'cancelled'), (24, 15, '2024-12-10', 'booked'),
(25, 1, '2024-12-11', 'completed'), (26, 2, '2024-12-11', 'booked'), (27, 3, '2024-12-11', 'completed'),
(28, 4, '2024-12-11', 'completed'), (29, 5, '2024-12-11', 'booked'), (30, 6, '2024-12-11', 'cancelled'),
(1, 7, '2024-12-12', 'completed'), (2, 8, '2024-12-12', 'booked'), (3, 9, '2024-12-12', 'completed'),
(4, 10, '2024-12-12', 'completed'), (5, 11, '2024-12-12', 'booked'), (6, 12, '2024-12-12', 'cancelled'),
(7, 13, '2024-12-13', 'completed'), (8, 14, '2024-12-13', 'booked'), (9, 15, '2024-12-13', 'completed'),
(10, 1, '2024-12-13', 'completed'), (11, 2, '2024-12-13', 'cancelled'), (12, 3, '2024-12-13', 'booked'),
(13, 4, '2024-12-14', 'completed'), (14, 5, '2024-12-14', 'booked'), (15, 6, '2024-12-14', 'completed'),
(16, 7, '2024-12-14', 'completed'), (17, 8, '2024-12-14', 'booked'), (18, 9, '2024-12-14', 'cancelled'),
(19, 10, '2024-12-15', 'completed'), (20, 11, '2024-12-15', 'booked'), (21, 12, '2024-12-15', 'completed'),
(22, 13, '2024-12-15', 'completed'), (23, 14, '2024-12-15', 'cancelled'), (24, 15, '2024-12-15', 'booked');

-- Insert Attendance (60 records)
INSERT INTO Attendance (member_id, session_id, check_in_time, performance_data) VALUES
(2, 2, '2024-11-25 08:55:00', '<performance><heart_rate_avg>145</heart_rate_avg><calories_burned>280</calories_burned><exercises_completed>12</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Great flexibility improvement</notes></performance>'),
(3, 3, '2024-11-25 05:55:00', '<performance><heart_rate_avg>165</heart_rate_avg><calories_burned>420</calories_burned><rounds_completed>18</rounds_completed><difficulty_rating>high</difficulty_rating><notes>Excellent endurance today</notes></performance>'),
(6, 3, '2024-11-26 05:55:00', '<performance><heart_rate_avg>170</heart_rate_avg><calories_burned>450</calories_burned><rounds_completed>20</rounds_completed><difficulty_rating>high</difficulty_rating><notes>Personal best performance</notes></performance>'),
(7, 1, '2024-11-27 06:55:00', '<performance><heart_rate_avg>150</heart_rate_avg><calories_burned>320</calories_burned><exercises_completed>8</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Good form throughout</notes></performance>'),
(9, 3, '2024-11-27 05:55:00', '<performance><heart_rate_avg>160</heart_rate_avg><calories_burned>400</calories_burned><rounds_completed>19</rounds_completed><difficulty_rating>high</difficulty_rating><notes>Consistent performance</notes></performance>'),
(11, 2, '2024-11-28 08:55:00', '<performance><heart_rate_avg>135</heart_rate_avg><calories_burned>250</calories_burned><exercises_completed>15</exercises_completed><difficulty_rating>low</difficulty_rating><notes>Great relaxation session</notes></performance>'),
(12, 3, '2024-11-28 05:55:00', '<performance><heart_rate_avg>168</heart_rate_avg><calories_burned>435</calories_burned><rounds_completed>19</rounds_completed><difficulty_rating>high</difficulty_rating><notes>Strong finish</notes></performance>'),
(13, 4, '2024-11-29 09:55:00', '<performance><heart_rate_avg>140</heart_rate_avg><calories_burned>200</calories_burned><exercises_completed>12</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Improved flexibility</notes></performance>'),
(15, 6, '2024-11-29 06:55:00', '<performance><heart_rate_avg>155</heart_rate_avg><calories_burned>350</calories_burned><exercises_completed>20</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Great energy today</notes></performance>'),
(16, 7, '2024-11-29 17:55:00', '<performance><heart_rate_avg>175</heart_rate_avg><calories_burned>500</calories_burned><rounds_completed>12</rounds_completed><difficulty_rating>high</difficulty_rating><notes>Excellent boxing session</notes></performance>'),
(19, 10, '2024-11-30 07:55:00', '<performance><heart_rate_avg>165</heart_rate_avg><calories_burned>380</calories_burned><exercises_completed>15</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Great functional training</notes></performance>'),
(21, 12, '2024-11-30 05:55:00', '<performance><heart_rate_avg>145</heart_rate_avg><calories_burned>320</calories_burned><distance>5000</distance><difficulty_rating>moderate</difficulty_rating><notes>Solid rowing technique</notes></performance>'),
(22, 13, '2024-11-30 18:25:00', '<performance><heart_rate_avg>170</heart_rate_avg><calories_burned>420</calories_burned><distance>25000</distance><difficulty_rating>high</difficulty_rating><notes>Great spinning class</notes></performance>'),
(25, 1, '2024-12-01 06:55:00', '<performance><heart_rate_avg>155</heart_rate_avg><calories_burned>340</calories_burned><exercises_completed>10</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Strong lifting session</notes></performance>'),
(27, 3, '2024-12-01 05:55:00', '<performance><heart_rate_avg>172</heart_rate_avg><calories_burned>460</calories_burned><rounds_completed>20</rounds_completed><difficulty_rating>high</difficulty_rating><notes>New personal record</notes></performance>'),
(28, 4, '2024-12-01 09:55:00', '<performance><heart_rate_avg>138</heart_rate_avg><calories_burned>180</calories_burned><exercises_completed>14</exercises_completed><difficulty_rating>low</difficulty_rating><notes>Focused on breathing</notes></performance>'),
(30, 6, '2024-12-01 06:55:00', '<performance><heart_rate_avg>160</heart_rate_avg><calories_burned>370</calories_burned><exercises_completed>25</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Energetic dance session</notes></performance>'),
(1, 7, '2024-12-02 16:55:00', '<performance><heart_rate_avg>168</heart_rate_avg><calories_burned>480</calories_burned><rounds_completed>10</rounds_completed><difficulty_rating>high</difficulty_rating><notes>Improved boxing technique</notes></performance>'),
(3, 9, '2024-12-02 18:55:00', '<performance><heart_rate_avg>175</heart_rate_avg><calories_burned>520</calories_burned><rounds_completed>12</rounds_completed><difficulty_rating>high</difficulty_rating><notes>Excellent kickboxing form</notes></performance>'),
(4, 10, '2024-12-02 07:55:00', '<performance><heart_rate_avg>162</heart_rate_avg><calories_burned>390</calories_burned><exercises_completed>18</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Great functional workout</notes></performance>'),
(7, 13, '2024-12-03 18:25:00', '<performance><heart_rate_avg>165</heart_rate_avg><calories_burned>410</calories_burned><distance>22000</distance><difficulty_rating>moderate</difficulty_rating><notes>Steady performance</notes></performance>'),
(9, 15, '2024-12-03 09:55:00', '<performance><heart_rate_avg>148</heart_rate_avg><calories_burned>280</calories_burned><exercises_completed>20</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Great barre workout</notes></performance>'),
(10, 1, '2024-12-03 19:55:00', '<performance><heart_rate_avg>170</heart_rate_avg><calories_burned>450</calories_burned><exercises_completed>16</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Intense martial arts</notes></performance>'),
(13, 4, '2024-12-04 18:55:00', '<performance><heart_rate_avg>180</heart_rate_avg><calories_burned>550</calories_burned><exercises_completed>25</exercises_completed><difficulty_rating>high</difficulty_rating><notes>High intensity cardio</notes></performance>'),
(15, 6, '2024-12-04 07:55:00', '<performance><heart_rate_avg>152</heart_rate_avg><calories_burned>360</calories_burned><exercises_completed>12</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Good strength gains</notes></performance>'),
(16, 7, '2024-12-04 08:55:00', '<performance><heart_rate_avg>142</heart_rate_avg><calories_burned>220</calories_burned><exercises_completed>18</exercises_completed><difficulty_rating>low</difficulty_rating><notes>Mindful session</notes></performance>'),
(19, 10, '2024-12-05 06:25:00', '<performance><heart_rate_avg>140</heart_rate_avg><calories_burned>200</calories_burned><exercises_completed>15</exercises_completed><difficulty_rating>low</difficulty_rating><notes>Peaceful tai chi</notes></performance>'),
(21, 12, '2024-12-05 05:25:00', '<performance><heart_rate_avg>148</heart_rate_avg><calories_burned>340</calories_burned><distance>6000</distance><difficulty_rating>moderate</difficulty_rating><notes>Good rowing session</notes></performance>'),
(22, 13, '2024-12-05 18:25:00', '<performance><heart_rate_avg>172</heart_rate_avg><calories_burned>430</calories_burned><distance>28000</distance><difficulty_rating>high</difficulty_rating><notes>Challenging spin class</notes></performance>'),
(23, 14, '2024-12-05 19:25:00', '<performance><heart_rate_avg>165</heart_rate_avg><calories_burned>400</calories_burned><exercises_completed>20</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Great martial arts form</notes></performance>'),
(25, 1, '2024-12-06 14:25:00', '<performance><heart_rate_avg>160</heart_rate_avg><calories_burned>380</calories_burned><exercises_completed>8</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Competition ready</notes></performance>'),
(27, 3, '2024-12-06 07:55:00', '<performance><heart_rate_avg>170</heart_rate_avg><calories_burned>450</calories_burned><exercises_completed>16</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Team synergy excellent</notes></performance>'),
(28, 4, '2024-12-06 11:55:00', '<performance><heart_rate_avg>155</heart_rate_avg><calories_burned>320</calories_burned><exercises_completed>12</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Advanced pilates flow</notes></performance>'),
(1, 7, '2024-12-07 16:55:00', '<performance><heart_rate_avg>175</heart_rate_avg><calories_burned>520</calories_burned><rounds_completed>12</rounds_completed><difficulty_rating>high</difficulty_rating><notes>Perfect boxing circuit</notes></performance>'),
(3, 9, '2024-12-07 06:55:00', '<performance><heart_rate_avg>168</heart_rate_avg><calories_burned>440</calories_burned><distance>35000</distance><difficulty_rating>high</difficulty_rating><notes>Great cycling endurance</notes></performance>'),
(4, 10, '2024-12-07 20:25:00', '<performance><heart_rate_avg>180</heart_rate_avg><calories_burned>580</calories_burned><exercises_completed>20</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Excellent combat training</notes></performance>'),
(7, 13, '2024-12-08 09:55:00', '<performance><heart_rate_avg>135</heart_rate_avg><calories_burned>180</calories_burned><exercises_completed>12</exercises_completed><difficulty_rating>low</difficulty_rating><notes>Great senior fitness</notes></performance>'),
(9, 15, '2024-12-08 05:55:00', '<performance><heart_rate_avg>152</heart_rate_avg><calories_burned>380</calories_burned><distance>3000</distance><difficulty_rating>high</difficulty_rating><notes>Power rowing excellence</notes></performance>'),
(10, 1, '2024-12-08 18:55:00', '<performance><heart_rate_avg>185</heart_rate_avg><calories_burned>600</calories_burned><exercises_completed>30</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Cardio blast intense</notes></performance>'),
(13, 4, '2024-12-09 14:25:00', '<performance><heart_rate_avg>165</heart_rate_avg><calories_burned>420</calories_burned><exercises_completed>6</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Competition prep focused</notes></performance>'),
(15, 1, '2024-12-09 06:55:00', '<performance><heart_rate_avg>158</heart_rate_avg><calories_burned>350</calories_burned><exercises_completed>10</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Solid strength session</notes></performance>'),
(16, 2, '2024-12-09 08:55:00', '<performance><heart_rate_avg>140</heart_rate_avg><calories_burned>200</calories_burned><exercises_completed>8</exercises_completed><difficulty_rating>low</difficulty_rating><notes>Mindful yoga practice</notes></performance>'),
(19, 5, '2024-12-10 05:25:00', '<performance><heart_rate_avg>145</heart_rate_avg><calories_burned>380</calories_burned><distance>2000</distance><difficulty_rating>moderate</difficulty_rating><notes>Great swimming technique</notes></performance>'),
(21, 7, '2024-12-10 16:55:00', '<performance><heart_rate_avg>172</heart_rate_avg><calories_burned>490</calories_burned><rounds_completed>11</rounds_completed><difficulty_rating>high</difficulty_rating><notes>Boxing skills improved</notes></performance>'),
(22, 8, '2024-12-10 06:55:00', '<performance><heart_rate_avg>165</heart_rate_avg><calories_burned>420</calories_burned><distance>30000</distance><difficulty_rating>high</difficulty_rating><notes>Excellent cycling form</notes></performance>'),
(25, 11, '2024-12-11 06:55:00', '<performance><heart_rate_avg>142</heart_rate_avg><calories_burned>190</calories_burned><exercises_completed>12</exercises_completed><difficulty_rating>low</difficulty_rating><notes>Peaceful tai chi flow</notes></performance>'),
(27, 13, '2024-12-11 05:55:00', '<performance><heart_rate_avg>150</heart_rate_avg><calories_burned>360</calories_burned><distance>7000</distance><difficulty_rating>moderate</difficulty_rating><notes>Consistent rowing pace</notes></performance>'),
(28, 14, '2024-12-11 18:25:00', '<performance><heart_rate_avg>170</heart_rate_avg><calories_burned>440</calories_burned><distance>26000</distance><difficulty_rating>high</difficulty_rating><notes>Strong spinning finish</notes></performance>'),
(1, 2, '2024-12-12 14:55:00', '<performance><heart_rate_avg>162</heart_rate_avg><calories_burned>390</calories_burned><exercises_completed>8</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Advanced strength training</notes></performance>'),
(3, 4, '2024-12-12 16:55:00', '<performance><heart_rate_avg>148</heart_rate_avg><calories_burned>280</calories_burned><exercises_completed>15</exercises_completed><difficulty_rating>low</difficulty_rating><notes>Restorative yoga bliss</notes></performance>'),
(4, 5, '2024-12-12 05:25:00', '<performance><heart_rate_avg>175</heart_rate_avg><calories_burned>480</calories_burned><exercises_completed>10</exercises_completed><difficulty_rating>high</difficulty_rating><notes>CrossFit strength peak</notes></performance>'),
(7, 8, '2024-12-13 11:55:00', '<performance><heart_rate_avg>152</heart_rate_avg><calories_burned>320</calories_burned><exercises_completed>8</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Reformer pilates precision</notes></performance>'),
(9, 10, '2024-12-13 15:55:00', '<performance><heart_rate_avg>155</heart_rate_avg><calories_burned>450</calories_burned><distance>1500</distance><difficulty_rating>high</difficulty_rating><notes>Water polo excellence</notes></performance>'),
(10, 11, '2024-12-13 19:55:00', '<performance><heart_rate_avg>162</heart_rate_avg><calories_burned>380</calories_burned><exercises_completed>18</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Latin dance passion</notes></performance>'),
(13, 14, '2024-12-14 13:25:00', '<performance><heart_rate_avg>168</heart_rate_avg><calories_burned>430</calories_burned><exercises_completed>12</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Advanced pilates mastery</notes></performance>'),
(15, 1, '2024-12-14 05:25:00', '<performance><heart_rate_avg>150</heart_rate_avg><calories_burned>500</calories_burned><distance>3000</distance><difficulty_rating>high</difficulty_rating><notes>Competitive swimming strong</notes></performance>'),
(16, 2, '2024-12-14 19:55:00', '<performance><heart_rate_avg>165</heart_rate_avg><calories_burned>400</calories_burned><exercises_completed>20</exercises_completed><difficulty_rating>moderate</difficulty_rating><notes>Latin dance rhythm perfect</notes></performance>'),
(19, 5, '2024-12-15 16:55:00', '<performance><heart_rate_avg>178</heart_rate_avg><calories_burned>510</calories_burned><rounds_completed>10</rounds_completed><difficulty_rating>high</difficulty_rating><notes>Boxing circuit mastered</notes></performance>'),
(21, 7, '2024-12-15 06:55:00', '<performance><heart_rate_avg>170</heart_rate_avg><calories_burned>460</calories_burned><distance>32000</distance><difficulty_rating>high</difficulty_rating><notes>Indoor cycling peak</notes></performance>'),
(22, 8, '2024-12-15 20:25:00', '<performance><heart_rate_avg>182</heart_rate_avg><calories_burned>590</calories_burned><exercises_completed>22</exercises_completed><difficulty_rating>high</difficulty_rating><notes>Combat training intensity</notes></performance>');

-- Insert Payments (40 records)
INSERT INTO Payment (member_id, amount, payment_date, method, transaction_details) VALUES
(1, 1200.00, '2024-01-15', 'card', '<transaction><card_type>Visa</card_type><last_four>4532</last_four><authorization>AUTH123456</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(2, 300.00, '2024-01-20', 'online', '<transaction><payment_method>PayPal</payment_method><transaction_id>PP789012</transaction_id><email>sarah.j@email.com</email><receipt_sent>yes</receipt_sent></transaction>'),
(3, 120.00, '2024-02-01', 'card', '<transaction><card_type>MasterCard</card_type><last_four>8765</last_four><authorization>AUTH234567</authorization><processor>Square</processor><receipt_sent>yes</receipt_sent></transaction>'),
(4, 800.00, '2024-02-10', 'online', '<transaction><bank>Wells Fargo</bank><account_last_four>1234</account_last_four><reference>BT345678</reference><receipt_sent>yes</receipt_sent></transaction>'),
(5, 400.00, '2024-02-15', 'card', '<transaction><card_type>Visa</card_type><last_four>9876</last_four><authorization>AUTH345678</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(6, 600.00, '2024-03-01', 'online', '<transaction><payment_method>Apple Pay</payment_method><transaction_id>APL456789</transaction_id><email>lisa.garcia@email.com</email><receipt_sent>yes</receipt_sent></transaction>'),
(7, 350.00, '2024-03-10', 'card', '<transaction><card_type>American Express</card_type><last_four>5432</last_four><authorization>AUTH456789</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(8, 200.00, '2024-03-15', 'cash', '<transaction><cash_received>200.00</cash_received><change_given>0.00</change_given><receipt_number>CSH567890</receipt_number><receipt_sent>no</receipt_sent></transaction>'),
(9, 500.00, '2024-04-01', 'card', '<transaction><card_type>Visa</card_type><last_four>6543</last_four><authorization>AUTH567890</authorization><processor>Square</processor><receipt_sent>yes</receipt_sent></transaction>'),
(10, 420.00, '2024-04-10', 'online', '<transaction><payment_method>Google Pay</payment_method><transaction_id>GP678901</transaction_id><email>amanda.taylor@email.com</email><receipt_sent>yes</receipt_sent></transaction>'),
(11, 900.00, '2024-04-20', 'online', '<transaction><bank>Chase</bank><account_last_four>5678</account_last_four><reference>BT678901</reference><receipt_sent>yes</receipt_sent></transaction>'),
(12, 180.00, '2024-05-01', 'card', '<transaction><card_type>MasterCard</card_type><last_four>7654</last_four><authorization>AUTH678901</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(13, 750.00, '2024-05-10', 'online', '<transaction><payment_method>PayPal</payment_method><transaction_id>PP789012</transaction_id><email>steven.thomas@email.com</email><receipt_sent>yes</receipt_sent></transaction>'),
(14, 380.00, '2024-05-15', 'card', '<transaction><card_type>Visa</card_type><last_four>8765</last_four><authorization>AUTH789012</authorization><processor>Square</processor><receipt_sent>yes</receipt_sent></transaction>'),
(15, 850.00, '2024-06-01', 'online', '<transaction><bank>Bank of America</bank><account_last_four>9876</account_last_four><reference>BT890123</reference><receipt_sent>yes</receipt_sent></transaction>'),
(16, 420.00, '2024-06-10', 'card', '<transaction><card_type>American Express</card_type><last_four>0987</last_four><authorization>AUTH890123</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(17, 1000.00, '2024-06-15', 'online', '<transaction><payment_method>Apple Pay</payment_method><transaction_id>APL901234</transaction_id><email>daniel.rodriguez@email.com</email><receipt_sent>yes</receipt_sent></transaction>'),
(18, 650.00, '2024-07-01', 'card', '<transaction><card_type>Visa</card_type><last_four>1098</last_four><authorization>AUTH901234</authorization><processor>Square</processor><receipt_sent>yes</receipt_sent></transaction>'),
(19, 220.00, '2024-07-10', 'cash', '<transaction><cash_received>220.00</cash_received><change_given>0.00</change_given><receipt_number>CSH012345</receipt_number><receipt_sent>no</receipt_sent></transaction>'),
(20, 300.00, '2024-07-15', 'card', '<transaction><card_type>MasterCard</card_type><last_four>2109</last_four><authorization>AUTH012345</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(21, 950.00, '2024-08-01', 'online', '<transaction><bank>US Bank</bank><account_last_four>3210</account_last_four><reference>BT123456</reference><receipt_sent>yes</receipt_sent></transaction>'),
(22, 250.00, '2024-08-10', 'online', '<transaction><payment_method>Google Pay</payment_method><transaction_id>GP234567</transaction_id><email>melissa.adams@email.com</email><receipt_sent>yes</receipt_sent></transaction>'),
(23, 1100.00, '2024-08-15', 'card', '<transaction><card_type>Visa</card_type><last_four>4321</last_four><authorization>AUTH234567</authorization><processor>Square</processor><receipt_sent>yes</receipt_sent></transaction>'),
(24, 800.00, '2024-09-01', 'online', '<transaction><payment_method>PayPal</payment_method><transaction_id>PP345678</transaction_id><email>christina.king@email.com</email><receipt_sent>yes</receipt_sent></transaction>'),
(25, 450.00, '2024-09-10', 'card', '<transaction><card_type>American Express</card_type><last_four>5432</last_four><authorization>AUTH345678</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(26, 180.00, '2024-09-15', 'cash', '<transaction><cash_received>180.00</cash_received><change_given>0.00</change_given><receipt_number>CSH456789</receipt_number><receipt_sent>no</receipt_sent></transaction>'),
(27, 550.00, '2024-10-01', 'online', '<transaction><bank>TD Bank</bank><account_last_four>6543</account_last_four><reference>BT456789</reference><receipt_sent>yes</receipt_sent></transaction>'),
(28, 600.00, '2024-10-10', 'card', '<transaction><card_type>MasterCard</card_type><last_four>7654</last_four><authorization>AUTH456789</authorization><processor>Square</processor><receipt_sent>yes</receipt_sent></transaction>'),
(29, 750.00, '2024-10-15', 'online', '<transaction><payment_method>Apple Pay</payment_method><transaction_id>APL567890</transaction_id><email>jacob.turner@email.com</email><receipt_sent>yes</receipt_sent></transaction>'),
(30, 700.00, '2024-11-01', 'card', '<transaction><card_type>Visa</card_type><last_four>8765</last_four><authorization>AUTH567890</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(1, 800.00, '2023-12-01', 'card', '<transaction><card_type>Visa</card_type><last_four>4532</last_four><authorization>AUTH000001</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(15, 300.00, '2023-10-01', 'online', '<transaction><payment_method>PayPal</payment_method><transaction_id>PP000002</transaction_id><email>jason.miller@email.com</email><receipt_sent>yes</receipt_sent></transaction>'),
(20, 250.00, '2023-08-15', 'card', '<transaction><card_type>MasterCard</card_type><last_four>2109</last_four><authorization>AUTH000003</authorization><processor>Square</processor><receipt_sent>yes</receipt_sent></transaction>'),
(8, 280.00, '2023-11-01', 'online', '<transaction><bank>Capital One</bank><account_last_four>9876</account_last_four><reference>BT000004</reference><receipt_sent>yes</receipt_sent></transaction>'),
(25, 320.00, '2023-09-01', 'card', '<transaction><card_type>American Express</card_type><last_four>5432</last_four><authorization>AUTH000005</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(12, 90.00, '2024-08-01', 'card', '<transaction><card_type>Visa</card_type><last_four>7654</last_four><authorization>AUTH000006</authorization><processor>Square</processor><receipt_sent>yes</receipt_sent></transaction>'),
(18, 325.00, '2024-07-01', 'online', '<transaction><payment_method>Google Pay</payment_method><transaction_id>GP000007</transaction_id><email>stephanie.hall@email.com</email><receipt_sent>yes</receipt_sent></transaction>'),
(22, 125.00, '2024-08-10', 'cash', '<transaction><cash_received>125.00</cash_received><change_given>0.00</change_given><receipt_number>CSH000008</receipt_number><receipt_sent>no</receipt_sent></transaction>'),
(26, 90.00, '2024-09-15', 'card', '<transaction><card_type>MasterCard</card_type><last_four>0987</last_four><authorization>AUTH000009</authorization><processor>Stripe</processor><receipt_sent>yes</receipt_sent></transaction>'),
(30, 350.00, '2024-11-01', 'online', '<transaction><payment_method>Apple Pay</payment_method><transaction_id>APL000010</transaction_id><email>ashley.hill@email.com</email><receipt_sent>yes</receipt_sent></transaction>');

-- Insert Maintenance Logs (20 records)  
INSERT INTO Maintenance_Log (equipment_id, maintenance_date, performed_by, details, maintenance_report) VALUES
(25, '2024-11-15', 'HVAC Technician', 'Compressor replacement and coolant refill', '<maintenance_report><issue>Compressor failure</issue><parts_used><part>Compressor unit</part><cost>850</cost><part>Coolant</part><cost>45</cost></parts_used><labor_hours>4</labor_hours><labor_cost>200</labor_cost><total_cost>1095</total_cost><warranty_extension>6 months</warranty_extension></maintenance_report>'),
(1, '2024-10-05', 'Equipment Technician', 'Belt replacement and calibration', '<maintenance_report><issue>Worn belt</issue><parts_used><part>Drive belt</part><cost>45</cost></parts_used><labor_hours>1.5</labor_hours><labor_cost>75</labor_cost><total_cost>120</total_cost><warranty_extension>3 months</warranty_extension></maintenance_report>'),
(5, '2024-09-20', 'Cardio Specialist', 'Console repair and software update', '<maintenance_report><issue>Display malfunction</issue><parts_used><part>LCD screen</part><cost>200</cost><part>Control board</part><cost>150</cost></parts_used><labor_hours>3</labor_hours><labor_cost>150</labor_cost><total_cost>500</total_cost><warranty_extension>12 months</warranty_extension></maintenance_report>'),
(10, '2024-11-08', 'Strength Equipment Tech', 'Cable replacement and lubrication', '<maintenance_report><issue>Frayed cable</issue><parts_used><part>Steel cable</part><cost>80</cost><part>Lubricant</part><cost>15</cost></parts_used><labor_hours>2</labor_hours><labor_cost>100</labor_cost><total_cost>195</total_cost><warranty_extension>6 months</warranty_extension></maintenance_report>'),
(15, '2024-10-22', 'Bike Technician', 'Chain and gear maintenance', '<maintenance_report><issue>Chain wear</issue><parts_used><part>Bike chain</part><cost>35</cost><part>Gear oil</part><cost>20</cost></parts_used><labor_hours>1</labor_hours><labor_cost>50</labor_cost><total_cost>105</total_cost><warranty_extension>3 months</warranty_extension></maintenance_report>'),
(18, '2024-11-12', 'Pool Maintenance', 'Filter replacement and chemical balance', '<maintenance_report><issue>Clogged filter</issue><parts_used><part>Pool filter</part><cost>120</cost><part>Chemicals</part><cost>60</cost></parts_used><labor_hours>2.5</labor_hours><labor_cost>125</labor_cost><total_cost>305</total_cost><warranty_extension>6 months</warranty_extension></maintenance_report>'),
(20, '2024-09-15', 'Audio Tech', 'Speaker replacement and wiring', '<maintenance_report><issue>Blown speaker</issue><parts_used><part>Speaker unit</part><cost>180</cost><part>Audio cable</part><cost>25</cost></parts_used><labor_hours>2</labor_hours><labor_cost>100</labor_cost><total_cost>305</total_cost><warranty_extension>12 months</warranty_extension></maintenance_report>'),
(3, '2024-10-30', 'Equipment Technician', 'Motor servicing and belt adjustment', '<maintenance_report><issue>Motor noise</issue><parts_used><part>Motor oil</part><cost>30</cost><part>Drive belt</part><cost>45</cost></parts_used><labor_hours>2.5</labor_hours><labor_cost>125</labor_cost><total_cost>200</total_cost><warranty_extension>6 months</warranty_extension></maintenance_report>'),
(12, '2024-11-02', 'Strength Equipment Tech', 'Weight stack adjustment and inspection', '<maintenance_report><issue>Weight alignment</issue><parts_used><part>Guide rods</part><cost>60</cost><part>Bushings</part><cost>40</cost></parts_used><labor_hours>1.5</labor_hours><labor_cost>75</labor_cost><total_cost>175</total_cost><warranty_extension>3 months</warranty_extension></maintenance_report>'),
(8, '2024-09-28', 'Cardio Specialist', 'Pedal replacement and resistance calibration', '<maintenance_report><issue>Wobbly pedals</issue><parts_used><part>Pedal assembly</part><cost>90</cost><part>Resistance unit</part><cost>120</cost></parts_used><labor_hours>2</labor_hours><labor_cost>100</labor_cost><total_cost>310</total_cost><warranty_extension>9 months</warranty_extension></maintenance_report>'),
(22, '2024-11-18', 'Mirror Specialist', 'Safety backing inspection and cleaning', '<maintenance_report><issue>Mirror spots</issue><parts_used><part>Cleaning solution</part><cost>25</cost><part>Protective coating</part><cost>40</cost></parts_used><labor_hours>1</labor_hours><labor_cost>50</labor_cost><total_cost>115</total_cost><warranty_extension>6 months</warranty_extension></maintenance_report>'),
(6, '2024-10-18', 'Equipment Technician', 'Incline motor replacement', '<maintenance_report><issue>Motor failure</issue><parts_used><part>Incline motor</part><cost>250</cost><part>Motor controller</part><cost>100</cost></parts_used><labor_hours>3.5</labor_hours><labor_cost>175</labor_cost><total_cost>525</total_cost><warranty_extension>12 months</warranty_extension></maintenance_report>'),
(14, '2024-09-12', 'Pool Equipment Tech', 'Pump motor overhaul', '<maintenance_report><issue>Pump inefficiency</issue><parts_used><part>Motor bearings</part><cost>80</cost><part>Impeller</part><cost>60</cost><part>Seals</part><cost>40</cost></parts_used><labor_hours>4</labor_hours><labor_cost>200</labor_cost><total_cost>380</total_cost><warranty_extension>12 months</warranty_extension></maintenance_report>'),
(7, '2024-11-05', 'Cardio Specialist', 'Console software update and heart rate sensor calibration', '<maintenance_report><issue>Inaccurate readings</issue><parts_used><part>Heart rate sensors</part><cost>70</cost><part>Software license</part><cost>50</cost></parts_used><labor_hours>2</labor_hours><labor_cost>100</labor_cost><total_cost>220</total_cost><warranty_extension>6 months</warranty_extension></maintenance_report>'),
(16, '2024-10-25', 'Strength Equipment Tech', 'Hydraulic cylinder replacement', '<maintenance_report><issue>Hydraulic leak</issue><parts_used><part>Hydraulic cylinder</part><cost>180</cost><part>Hydraulic fluid</part><cost>30</cost><part>Seals</part><cost>25</cost></parts_used><labor_hours>3</labor_hours><labor_cost>150</labor_cost><total_cost>385</total_cost><warranty_extension>12 months</warranty_extension></maintenance_report>'),
(19, '2024-11-20', 'Pool Maintenance', 'Heater element replacement', '<maintenance_report><issue>No heating</issue><parts_used><part>Heating element</part><cost>300</cost><part>Thermostat</part><cost>80</cost></parts_used><labor_hours>3</labor_hours><labor_cost>150</labor_cost><total_cost>530</total_cost><warranty_extension>12 months</warranty_extension></maintenance_report>'),
(11, '2024-09-08', 'Equipment Technician', 'Flywheel balancing and bearing replacement', '<maintenance_report><issue>Vibration</issue><parts_used><part>Flywheel bearings</part><cost>110</cost><part>Balance weights</part><cost>40</cost></parts_used><labor_hours>2.5</labor_hours><labor_cost>125</labor_cost><total_cost>275</total_cost><warranty_extension>9 months</warranty_extension></maintenance_report>'),
(13, '2024-10-14', 'Cardio Specialist', 'Display panel replacement and calibration', '<maintenance_report><issue>Cracked display</issue><parts_used><part>LCD panel</part><cost>220</cost><part>Touch controller</part><cost>90</cost></parts_used><labor_hours>2</labor_hours><labor_cost>100</labor_cost><total_cost>410</total_cost><warranty_extension>12 months</warranty_extension></maintenance_report>'),
(24, '2024-11-10', 'Audio Tech', 'Amplifier repair and speaker recalibration', '<maintenance_report><issue>Audio distortion</issue><parts_used><part>Amplifier board</part><cost>150</cost><part>Speaker drivers</part><cost>100</cost></parts_used><labor_hours>2.5</labor_hours><labor_cost>125</labor_cost><total_cost>375</total_cost><warranty_extension>12 months</warranty_extension></maintenance_report>'),
(9, '2024-09-25', 'Equipment Technician', 'Brake pad replacement and adjustment', '<maintenance_report><issue>Brake wear</issue><parts_used><part>Brake pads</part><cost>65</cost><part>Brake fluid</part><cost>20</cost></parts_used><labor_hours>1.5</labor_hours><labor_cost>75</labor_cost><total_cost>160</total_cost><warranty_extension>6 months</warranty_extension></maintenance_report>');

-- Insert Feedback (25 records)
INSERT INTO Feedback (member_id, trainer_id, rating, comments, date, detailed_feedback) VALUES
(1, 1, 5, 'Alex is an amazing trainer! Very knowledgeable and motivating.', '2024-11-20', '<feedback><categories><technique_instruction>5</technique_instruction><motivation>5</motivation><punctuality>5</punctuality><knowledge>5</knowledge></categories><improvements><suggestion>Maybe include more variety in warm-up routines</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(2, 2, 4, 'Great yoga class, very relaxing and well-paced.', '2024-11-21', '<feedback><categories><class_structure>4</class_structure><instruction_clarity>5</instruction_clarity><atmosphere>4</atmosphere><difficulty_level>appropriate</difficulty_level></categories><improvements><suggestion>Could use softer background music</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(3, 3, 5, 'James pushes us to our limits but in a great way!', '2024-11-22', '<feedback><categories><intensity>5</intensity><instruction_clarity>5</instruction_clarity><motivation>5</motivation><safety>5</safety></categories><improvements><suggestion>None - perfect as is</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(4, 4, 4, 'Sophie has excellent technique and explains everything clearly.', '2024-11-23', '<feedback><categories><technique_instruction>5</technique_instruction><patience>4</patience><knowledge>5</knowledge><class_flow>4</class_flow></categories><improvements><suggestion>Could include more variety in exercises</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(5, 5, 5, 'Michael is fantastic with swimming technique correction.', '2024-11-24', '<feedback><categories><technique_instruction>5</technique_instruction><safety>5</safety><encouragement>5</encouragement><knowledge>5</knowledge></categories><improvements><suggestion>More advanced stroke workshops</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(6, 6, 4, 'Rachel makes Zumba so much fun and energetic!', '2024-11-25', '<feedback><categories><energy>5</energy><instruction_clarity>4</instruction_clarity><music_selection>5</music_selection><choreography>4</choreography></categories><improvements><suggestion>Longer sessions would be great</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(7, 7, 5, 'Best boxing trainer I have ever worked with!', '2024-11-26', '<feedback><categories><technique_instruction>5</technique_instruction><motivation>5</motivation><safety>5</safety><experience>5</experience></categories><improvements><suggestion>None needed</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(8, 8, 4, 'Great spinning classes, really challenging but doable.', '2024-11-27', '<feedback><categories><intensity>4</intensity><music>5</music><instruction_clarity>4</instruction_clarity><motivation>4</motivation></categories><improvements><suggestion>More variety in playlists</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(9, 9, 5, 'Emma is incredible at kickboxing instruction!', '2024-11-28', '<feedback><categories><technique_instruction>5</technique_instruction><energy>5</energy><safety>5</safety><motivation>5</motivation></categories><improvements><suggestion>Longer warm-up sessions</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(10, 10, 4, 'David really knows functional training inside and out.', '2024-11-29', '<feedback><categories><knowledge>5</knowledge><instruction_clarity>4</instruction_clarity><exercise_variety>4</exercise_variety><motivation>4</motivation></categories><improvements><suggestion>More partner exercises</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(11, 11, 5, 'Linda is so calming and knowledgeable about Tai Chi.', '2024-11-30', '<feedback><categories><knowledge>5</knowledge><patience>5</patience><atmosphere>5</atmosphere><technique_instruction>5</technique_instruction></categories><improvements><suggestion>None - perfect experience</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(12, 12, 4, 'Great rowing technique instruction from Mark.', '2024-12-01', '<feedback><categories><technique_instruction>5</technique_instruction><motivation>4</motivation><knowledge>4</knowledge><progression>4</progression></categories><improvements><suggestion>Include more endurance challenges</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(13, 13, 5, 'Kevin makes spinning classes incredibly motivating!', '2024-12-02', '<feedback><categories><motivation>5</motivation><energy>5</energy><music>5</music><instruction_clarity>5</instruction_clarity></categories><improvements><suggestion>None needed</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(14, 14, 4, 'Sarah teaches martial arts with great discipline and respect.', '2024-12-03', '<feedback><categories><discipline>5</discipline><respect>5</respect><technique_instruction>4</technique_instruction><safety>5</safety></categories><improvements><suggestion>More sparring practice</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(15, 15, 5, 'Jessica makes barre workouts challenging yet enjoyable.', '2024-12-04', '<feedback><categories><instruction_clarity>5</instruction_clarity><motivation>5</motivation><technique>4</technique><atmosphere>5</atmosphere></categories><improvements><suggestion>Longer cool-down stretches</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(16, 1, 5, 'Alex continues to be an amazing personal trainer!', '2024-12-05', '<feedback><categories><technique_instruction>5</technique_instruction><motivation>5</motivation><punctuality>5</punctuality><knowledge>5</knowledge></categories><improvements><suggestion>Keep doing what you are doing</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(17, 2, 4, 'Maria creates such a peaceful yoga environment.', '2024-12-06', '<feedback><categories><atmosphere>5</atmosphere><instruction_clarity>4</instruction_clarity><flexibility_improvement>4</flexibility_improvement><relaxation>5</relaxation></categories><improvements><suggestion>More advanced poses option</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(18, 3, 5, 'James keeps CrossFit exciting with varied workouts.', '2024-12-07', '<feedback><categories><variety>5</variety><intensity>5</intensity><safety>5</safety><community>5</community></categories><improvements><suggestion>None needed</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(19, 4, 4, 'Sophie has helped me so much with my posture.', '2024-12-08', '<feedback><categories><posture_improvement>5</posture_improvement><technique_instruction>4</technique_instruction><patience>5</patience><knowledge>4</knowledge></categories><improvements><suggestion>More individual attention</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(20, 5, 5, 'Michael is the best swimming coach I have had.', '2024-12-09', '<feedback><categories><technique_instruction>5</technique_instruction><patience>5</patience><progress_tracking>5</progress_tracking><motivation>5</motivation></categories><improvements><suggestion>None needed</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(21, 6, 4, 'Rachel brings so much joy to dance fitness.', '2024-12-10', '<feedback><categories><energy>5</energy><fun_factor>5</fun_factor><instruction_clarity>4</instruction_clarity><music_selection>4</music_selection></categories><improvements><suggestion>More beginner-friendly options</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(22, 7, 5, 'Tom is excellent at teaching boxing fundamentals.', '2024-12-11', '<feedback><categories><fundamentals>5</fundamentals><safety>5</safety><technique_instruction>5</technique_instruction><motivation>4</motivation></categories><improvements><suggestion>More advanced combinations</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(23, 8, 4, 'Great spin instructor with awesome playlists.', '2024-12-12', '<feedback><categories><music>5</music><energy>4</energy><instruction_clarity>4</instruction_clarity><challenge_level>4</challenge_level></categories><improvements><suggestion>More interval variety</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(24, 9, 5, 'Emma is fantastic at kickboxing - so motivating!', '2024-12-13', '<feedback><categories><motivation>5</motivation><technique_instruction>5</technique_instruction><energy>5</energy><safety>5</safety></categories><improvements><suggestion>None - perfect instructor</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(25, 10, 4, 'David creates really effective functional workouts.', '2024-12-14', '<feedback><categories><effectiveness>5</effectiveness><instruction_clarity>4</instruction_clarity><exercise_variety>4</exercise_variety><motivation>4</motivation></categories><improvements><suggestion>More outdoor training options</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(26, 11, 5, 'Linda has such a calming presence for Tai Chi.', '2024-12-15', '<feedback><categories><calmness>5</calmness><knowledge>5</knowledge><technique_instruction>5</technique_instruction><spiritual_aspect>5</spiritual_aspect></categories><improvements><suggestion>Longer sessions would be wonderful</suggestion></improvements><would_recommend>yes</would_recommend></feedback>'),
(27, 12, 4, 'Mark really helped improve my rowing form.', '2024-12-16', '<feedback><categories><technique_improvement>5</technique_improvement><patience>4</patience><knowledge>4</knowledge><motivation>4</motivation></categories><improvements><suggestion>More technique drills</suggestion></improvements><would_recommend>yes</would_recommend></feedback>');

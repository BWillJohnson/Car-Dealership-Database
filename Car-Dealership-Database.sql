-- This Condition will drop the database:
DROP DATABASE IF EXISTS car_dealership;

-- I will be Implementing CarDealership:
CREATE DATABASE car_dealership;
USE car_dealership;

-- Here i am dropping my tables:

DROP TABLE IF EXISTS Vehicle;
DROP TABLE IF EXISTS Dealership;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Sales_Contract;

-- Creating my Dealership Tables:
CREATE TABLE Vehicle(
Vin VARCHAR(17) PRIMARY KEY,
`Year` INT,
Make VARCHAR(50),
Model VARCHAR(50),
vehicleType VARCHAR(50),
Color VARCHAR(50),
OdometerReading INT,
Price DECIMAL,
SoldVehicle BOOLEAN
);

CREATE TABLE Dealership(
DealershipID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(50),
Address VARCHAR(50),
Phone VARCHAR(12)
);

CREATE TABLE Inventory (
DealershipID INT,
Vin VARCHAR(17),
FOREIGN KEY (Vin) REFERENCES Vehicle(Vin),
FOREIGN KEY (DealershipID) REFERENCES Dealership(DealershipID)
);

CREATE TABLE Sales_Contract(
SalesContractID INT AUTO_INCREMENT PRIMARY KEY,
Vin VARCHAR(17),
CustomerFirstName VARCHAR(50),
CustomerLastName VARCHAR(50),
CustomerEmail VARCHAR(50),
SalesTaxAmount DOUBLE,
RecordingFee INT,
ProcessingFee INT,
`Date` Date,
FinanceSalesVehicle BOOLEAN,
-- Here i will place my forigen keys:
 FOREIGN KEY (Vin) REFERENCES Vehicle(Vin)
);

-- Insert data into Vehicle:
INSERT INTO Vehicle(Vin,Year,Make,Model,VehicleType,Color,OdometerReading,Price,SoldVehicle)
VALUES 
('1A4PQRXYZ12345692', 2022, 'Toyota', 'Corolla', 'Sedan', 'White', 32000, 21.500,TRUE),
('2B8JKLWUV78901248', 2023, 'Ford', 'F-150', 'Truck', 'Blue', 12000, 39.800,FALSE),
('3C5MNOPGH34567893', 2021, 'Honda', 'Civic', 'Coupe', 'Red', 45000, 19.000,TRUE),
('4D7QRTUVW67890138', 2020, 'Tesla', 'Model 3', 'Sedan', 'Black', 20000, 34.000,TRUE),
('5E9HJKXYZ23456748', 2019, 'Chevrolet', 'Malibu', 'Sedan', 'Silver', 55000, 17.800,FALSE),
('6F2ASDLUV98765459', 2022, 'Nissan', 'Rogue', 'SUV', 'Gray', 29000, 27.200,TRUE),
('7G4MNLQRX13579085', 2023, 'BMW', 'X5', 'SUV', 'Black', 10000, 52.000,TRUE),
('8H6JKUVWY24681333', 2021, 'Jeep', 'Wrangler', 'SUV', 'Green', 50000, 38.500,FALSE),
('9J8BOPQXW02468069', 2022, 'Hyundai', 'Sonata', 'Sedan', 'Blue', 23000, 25.600,TRUE),
('0K1QRTUVZ97531011', 2023, 'Audi', 'A4', 'Sedan', 'White', 7500, 41.300,FALSE),
('1L3MNOPQR01234536', 2020, 'Subaru', 'Outback', 'Wagon', 'Brown', 60000, 22.900,TRUE),
('2M5HJKXYW67891274', 2019, 'Kia', 'Soul', 'Hatchback', 'Red', 70000, 16.200,TRUE),
('3N7PQRSYZ24681094', 2021, 'Mercedes', 'GLC-Class', 'SUV', 'Silver', 28000, 48.700,FALSE),
('4O9JKLMUV13579285', 2023, 'Volvo', 'XC90', 'SUV', 'Gray', 5000, 60.000,TRUE),
('5P1QRSTVW98765492', 2020, 'Volkswagen', 'Jetta', 'Sedan', 'Black', 62000, 18.500,FALSE),
('9Z9SUPERCC4321002', 2023, 'Lamborghini', 'Huracan', 'Supercar', 'Yellow', 3000, 230.000,FALSE),
('8X8SUPERYT8765003', 2023, 'Ferrari', 'SF90', 'Supercar', 'Red', 2000, 280.000,TRUE);

-- Insert data into Dealership:
INSERT INTO Dealership(`Name`,Address,Phone)
VALUES
('Prime Auto Hub', '123 Main Street, Pittsburgh, PA, 62704', '217-555-1234'),
('Luxury Wheels', '456 Elm Avenue, Los Angeles, CA, 90001', '323-555-4567'),
('Summit Auto Center', '789 Oak Drive, Denver, CO, 80203', '303-555-7890');

-- Insert data into Inventory:
INSERT INTO Inventory(DealershipID,Vin)
VALUES
(1, '1A4PQRXYZ12345692'),
(2, '1A4PQRXYZ12345692'),
(3, '2B8JKLWUV78901248'),
(1, '2B8JKLWUV78901248'),
(2, '2B8JKLWUV78901248'),
(3, '3C5MNOPGH34567893'),
(1, '3C5MNOPGH34567893'),
(2, '4D7QRTUVW67890138'),
(1, '4D7QRTUVW67890138'),
(2, '5E9HJKXYZ23456748'),
(3, '5E9HJKXYZ23456748'),
(3, '6F2ASDLUV98765459'),
(2, '6F2ASDLUV98765459'),
(3, '7G4MNLQRX13579085'),
(1, '9J8BOPQXW02468069'),
(2, '9J8BOPQXW02468069'),
(3, '9J8BOPQXW02468069'),
(1, '0K1QRTUVZ97531011'),
(2, '1L3MNOPQR01234536'),
(3, '1L3MNOPQR01234536'),
(2, '2M5HJKXYW67891274'),
(3, '3N7PQRSYZ24681094'),
(1, '4O9JKLMUV13579285'),
(2, '5P1QRSTVW98765492');
-- Insert data into Sales_Contract:
INSERT INTO Sales_Contract (Vin, CustomerFirstName, CustomerLastName, CustomerEmail, SalesTaxAmount, RecordingFee, ProcessingFee, `Date`, FinanceSalesVehicle) VALUES 
('1A4PQRXYZ12345692', 'Emily', 'Johnson', 'emily.johnson@example.com', 1200.50, 75.00, 150.00, '2024-11-01', TRUE),
('2B8JKLWUV78901248', 'Michael', 'Smith', 'michael.smith@example.com', 2000.75, 85.00, 200.00, '2024-11-02', TRUE),
('3C5MNOPGH34567893', 'Sophia', 'Davis', 'sophia.davis@example.com', 950.00, 65.00, 125.00, '2024-11-03', FALSE),
('4D7QRTUVW67890138', 'Jacob', 'Martinez', 'jacob.martinez@example.com', 1700.25, 90.00, 175.00, '2024-11-04', TRUE),
('5E9HJKXYZ23456748', 'Ava', 'Brown', 'ava.brown@example.com', 850.00, 60.00, 120.00, '2024-11-05', FALSE),
('6F2ASDLUV98765459', 'Ethan', 'Garcia', 'ethan.garcia@example.com', 1350.00, 70.00, 140.00, '2024-11-06', TRUE),
('7G4MNLQRX13579085', 'Olivia', 'Miller', 'olivia.miller@example.com', 2100.00, 85.00, 200.00, '2024-11-07', TRUE),
('8H6JKUVWY24681333', 'Noah', 'Wilson', 'noah.wilson@example.com', 1850.00, 80.00, 190.00, '2024-11-08', TRUE),
('9J8BOPQXW02468069', 'Isabella', 'Moore', 'isabella.moore@example.com', 1300.00, 70.00, 150.00, '2024-11-09', TRUE),
('0K1QRTUVZ97531011', 'William', 'Taylor', 'william.taylor@example.com', 2150.00, 90.00, 210.00, '2024-11-10', TRUE),
('1L3MNOPQR01234536', 'Mia', 'Anderson', 'mia.anderson@example.com', 950.00, 65.00, 125.00, '2024-11-11', FALSE),
('2M5HJKXYW67891274', 'James', 'Thomas', 'james.thomas@example.com', 750.00, 55.00, 110.00, '2024-11-12', FALSE),
('3N7PQRSYZ24681094', 'Charlotte', 'Jackson', 'charlotte.jackson@example.com', 1950.00, 80.00, 185.00, '2024-11-13', TRUE),
('4O9JKLMUV13579285', 'Alexander', 'White', 'alexander.white@example.com', 3000.00, 100.00, 250.00, '2024-11-14', TRUE),
('5P1QRSTVW98765492', 'Amelia', 'Harris', 'amelia.harris@example.com', 800.00, 60.00, 115.00, '2024-11-15', FALSE);
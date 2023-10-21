USE EMPLOYEES
/*
  CONSTRAINTS
  - IDENTITY: create auto increase column.
*/
-- Create Employees table
CREATE TABLE Employees (
	[ID] INT NOT NULL PRIMARY KEY,
  [FullName] VARCHAR(50) NOT NULL,
  [Gender] VARCHAR(50),
  [BirthDate] DATE,
  [Address] VARCHAR(255),
  [PhoneNumber] VARCHAR(10)
);

-- EX01: Create Customers table with some constraints.
CREATE TABLE Customers (
  -- Create ID Col with Identity constraint.
  [ID] INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
  [Name] VARCHAR(50) NOT NULL,
  [Address] VARCHAR(255),
  [PhoneNumber] VARCHAR(10) CHECK ([PhoneNumber] LIKE '[0-9]{10}')
);

-- EX02: Create Customers02 table with some constraints.
CREATE TABLE Customers02 (
  -- Create ID Col with Identity constraint.
  [ID] INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
  [Name] VARCHAR(50) NOT NULL,
  [Address] VARCHAR(255),
  [Gender] VARCHAR(10) CHECK ([Gender] LIKE 'Male' OR 'Female'),
  [PhoneNumber] VARCHAR(10) CHECK ([PhoneNumber] LIKE '[0-9]{10}')
);
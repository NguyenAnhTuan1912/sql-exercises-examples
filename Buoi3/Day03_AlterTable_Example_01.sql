USE EMPLOYEES

-- Alter table
ALTER TABLE Employees
-- Add column Email has datatype is VARCHAR(100)
ADD [Email] VARCHAR(100);

ALTER TABLE Employees
-- Modify column Email has datatype is VARCHAR(255)
ALTER COLUMN [Email] VARCHAR(255);

ALTER TABLE Employees
-- Add a constraint to a existed column.
ADD CONSTRAINT BirthDateCheck CHECK ([BirthDate] <= GETDATE());
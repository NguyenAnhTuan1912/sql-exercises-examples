-- Create database
CREATE DATABASE EMPLOYEES
-- On data creating process.
ON (
	-- Define name of Database.
	NAME = 'employees',
	-- Define name of file in a directory.
	FILENAME = 'D:\Hoctap\Advanced SQL\employees.mdf',
	-- Define initial size.
	SIZE = 10MB,
	-- Define maximun size of file.
	MAXSIZE = 100MB,
	-- Define size when grow.
	FILEGROWTH = 5MB
)
-- On log creating process.
LOG ON (
	-- Define name of LOG.
  NAME = 'employees_log',
	-- Define name of file in a directory.
	FILENAME = 'D:\Hoctap\Advanced SQL\employees_log.ldf',
	-- Define initial size.
	SIZE = 5MB,
	-- Define maximun size of file.
	MAXSIZE = 50MB,
	-- Define size when grow.
	FILEGROWTH = 1MB
)
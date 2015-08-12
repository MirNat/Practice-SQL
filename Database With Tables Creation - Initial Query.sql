USE master
GO

CREATE DATABASE SQLTaskStudentsLab2015
GO

USE SQLTaskStudentsLab2015
GO

CREATE TABLE Department (
	Id int not null primary key identity (1, 1),
	Name nvarchar(100) not null unique,
	Address nvarchar(1000) null
)

CREATE TABLE Employee (
	Id bigint not null primary key identity (1, 1),
	FirstName nvarchar(100) not null,
	LastName nvarchar(100) not null,
	DateOfBirth date not null
)

CREATE TABLE Job (
	Id int not null primary key identity (1, 1),
	Name nvarchar(100) not null unique,
	MinimumMonthlySalary money not null
)

CREATE TABLE Career (
	Id bigint not null primary key identity (1, 1),
	JobId int not null foreign key references Job(Id) ON UPDATE CASCADE,
	EmployeeId bigint not null foreign key references Employee(Id) ON UPDATE CASCADE,
	DepartmentId int not null foreign key references Department(Id) ON UPDATE CASCADE,
	HireDate date not null, 
	TerminationDate date null,
	CONSTRAINT CK_Termination_Date CHECK (TerminationDate > HireDate)
)

CREATE TABLE Salary (
	Id bigint not null primary key identity (1, 1),
	EmployeeId bigint not null foreign key references Employee(Id) ON UPDATE CASCADE,
	MonthOfSalary int not null,
	YearOfSalary int not null,
	Salary money not null,
	CONSTRAINT CK_Month CHECK (MonthOfSalary > 0 and MonthOfSalary < 13),
	CONSTRAINT CK_Year_Of_Salary CHECK (YearOfSalary > 2002 and YearOfSalary < 2016)
)





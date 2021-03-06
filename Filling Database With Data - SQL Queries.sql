USE [SQLTaskStudentsLab2015]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Id], [Name], [Address]) VALUES (1, N'd1', N'Minsk')
INSERT [dbo].[Department] ([Id], [Name], [Address]) VALUES (2, N'd2', N'Moscow')
INSERT [dbo].[Department] ([Id], [Name], [Address]) VALUES (3, N'd3', N'New York')
INSERT [dbo].[Department] ([Id], [Name], [Address]) VALUES (4, N'd4', N'Vena')
INSERT [dbo].[Department] ([Id], [Name], [Address]) VALUES (5, N'd5', N'Paris')
INSERT [dbo].[Department] ([Id], [Name], [Address]) VALUES (6, N'd6', N'Rio De Janeiro')
INSERT [dbo].[Department] ([Id], [Name], [Address]) VALUES (7, N'd7', N'Rome')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (1, N'Noah', N'Mancuso', CAST(N'1985-06-05' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (2, N'Madelene', N' Cade', CAST(N'1990-02-17' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (4, N'Luisa', N'Loder', CAST(N'1979-07-25' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (6, N'Malika', N'Vito', CAST(N'1976-02-05' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (7, N'Albertha', N'Cupit', CAST(N'1985-01-14' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (8, N'Michael', N'Sluder', CAST(N'1978-06-17' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (9, N'Clarissa', N'Ghee', CAST(N'1967-09-23' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (10, N'Scarlet', N'Cano', CAST(N'1985-02-27' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (11, N'Milissa', N'Holter', CAST(N'1987-03-19' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (12, N'Margarette', N'Jerkins', CAST(N'1980-11-25' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (13, N'Sherman', N'Che', CAST(N'1977-08-24' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (14, N'Catherine', N'Saur', CAST(N'1989-07-08' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (15, N'Sean', N'Pichette', CAST(N'1985-02-06' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (16, N'Gertrude', N'Bernhardt', CAST(N'1974-08-16' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (17, N'Louis', N'Bellini', CAST(N'1982-04-26' AS Date))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth]) VALUES (18, N'Leon', N'Breunig', CAST(N'1979-05-18' AS Date))
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([Id], [Name], [MinimumMonthlySalary]) VALUES (1, N'Administrator', 450.0000)
INSERT [dbo].[Job] ([Id], [Name], [MinimumMonthlySalary]) VALUES (2, N'Engineer', 700.0000)
INSERT [dbo].[Job] ([Id], [Name], [MinimumMonthlySalary]) VALUES (3, N'Programmer', 550.0000)
INSERT [dbo].[Job] ([Id], [Name], [MinimumMonthlySalary]) VALUES (4, N'Technician', 450.0000)
INSERT [dbo].[Job] ([Id], [Name], [MinimumMonthlySalary]) VALUES (5, N'HR', 450.0000)
INSERT [dbo].[Job] ([Id], [Name], [MinimumMonthlySalary]) VALUES (6, N'Manager', 470.0000)
INSERT [dbo].[Job] ([Id], [Name], [MinimumMonthlySalary]) VALUES (7, N'Chief Engineer', 1200.0000)
INSERT [dbo].[Job] ([Id], [Name], [MinimumMonthlySalary]) VALUES (8, N'
Business Analyst', 550.0000)
INSERT [dbo].[Job] ([Id], [Name], [MinimumMonthlySalary]) VALUES (10, N'Designer', 500.0000)
SET IDENTITY_INSERT [dbo].[Job] OFF
SET IDENTITY_INSERT [dbo].[Career] ON 

INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (1, 1, 1, 1, CAST(N'2002-07-19' AS Date), NULL)
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (2, 2, 2, 1, CAST(N'2003-11-27' AS Date), CAST(N'2014-05-18' AS Date))
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (6, 3, 4, 2, CAST(N'2008-10-16' AS Date), CAST(N'2013-07-17' AS Date))
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (8, 4, 6, 6, CAST(N'2012-04-15' AS Date), NULL)
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (9, 5, 7, 3, CAST(N'2007-05-19' AS Date), CAST(N'2013-03-14' AS Date))
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (10, 6, 8, 7, CAST(N'2006-12-09' AS Date), NULL)
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (11, 7, 9, 6, CAST(N'2004-12-18' AS Date), NULL)
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (12, 5, 10, 7, CAST(N'2002-06-12' AS Date), CAST(N'2014-08-19' AS Date))
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (13, 4, 11, 5, CAST(N'2007-05-16' AS Date), NULL)
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (14, 5, 12, 5, CAST(N'2009-06-14' AS Date), CAST(N'2015-03-25' AS Date))
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (16, 3, 13, 4, CAST(N'2007-12-16' AS Date), NULL)
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (17, 4, 14, 2, CAST(N'2002-11-04' AS Date), CAST(N'2003-06-19' AS Date))
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (18, 5, 15, 3, CAST(N'2006-09-25' AS Date), CAST(N'2009-12-06' AS Date))
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (19, 4, 16, 2, CAST(N'2010-06-17' AS Date), CAST(N'2013-04-12' AS Date))
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (21, 7, 17, 4, CAST(N'2005-03-19' AS Date), NULL)
INSERT [dbo].[Career] ([Id], [JobId], [EmployeeId], [DepartmentId], [HireDate], [TerminationDate]) VALUES (22, 5, 18, 5, CAST(N'2009-11-14' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Career] OFF
SET IDENTITY_INSERT [dbo].[Salary] ON 

INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (1, 1, 5, 2015, 1200.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (2, 1, 1, 2015, 1100.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (3, 1, 2, 2015, 1120.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (4, 1, 3, 2015, 1130.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (5, 1, 4, 2015, 1170.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (6, 1, 6, 2015, 1280.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (7, 2, 1, 2015, 1370.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (9, 2, 2, 2015, 1400.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (12, 4, 1, 2015, 900.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (14, 6, 1, 2015, 3000.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (15, 7, 1, 2015, 450.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (16, 8, 1, 2015, 2700.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (17, 9, 1, 2015, 1000.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (18, 10, 1, 2015, 3500.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (19, 11, 1, 2015, 4000.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (20, 12, 1, 2015, 550.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (21, 13, 1, 2015, 7500.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (22, 14, 1, 2015, 680.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (23, 15, 1, 2015, 950.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (24, 16, 1, 2015, 4200.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (26, 17, 1, 2015, 2500.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (27, 18, 1, 2015, 2700.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (28, 7, 2, 2015, 500.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (29, 7, 3, 2015, 470.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (30, 7, 4, 2015, 520.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (32, 7, 5, 2015, 500.0000)
INSERT [dbo].[Salary] ([Id], [EmployeeId], [MonthOfSalary], [YearOfSalary], [Salary]) VALUES (33, 8, 2, 2015, 2800.0000)
SET IDENTITY_INSERT [dbo].[Salary] OFF

USE SQLTaskStudentsLab2015
GO
--1) �������� ��� ���������� ������� Employee
select * 
from Employee;
--2) �������� ���� � �������� ����������, ��� ����������� �������� �� ��������� 500
select Id,Name 
from Job 
where MinimumMonthlySalary <= 500; 
--3) �������� ������� ���������� ����� ����������� � ������ 2015 ����
select avg(Salary) as AverageSalaryInJanuary2015 
from Salary 
where MonthOfSalary = 1 and YearOfSalary = 2015
--4) �������� ��� ������ ������� ���������, � ����� ��� �������
select (e.FirstName + ' ' + e.LastName) as OldestEmployee, datediff(yy, results.MinDateOfBirth, getdate()) as Age
from (
	select  min(DateOfBirth) as MinDateOfBirth 
	from Employee
) results, Employee e 
where e.DateOfBirth = results.MinDateOfBirth;
--5) ����� ������� ����������, ������� ���� ��������� �������� � ������ 2015 ����
select e.LastName as EmployeesLastNamePaidInJanuary2015
from (
	select EmployeeId 
	from Salary
	where MonthOfSalary = 1 and YearOfSalary = 2015
 ) results, Employee e 
 where e.Id = results.EmployeeId;
--6)����� ���� ����������, �������� ������� � ��� 2015 ���� ��������� �� ��������� � �����-���� ���������� ������� ����� �� ����
select MaySalary.EmployeeId 
from (
	(select EmployeeId, Salary  
		from Salary 
		where MonthOfSalary = 5 and YearOfSalary = 2015
	) as MaySalary
	inner join (
		select EmployeeId, max(Salary) as MaxSalary 
		from Salary 
		where MonthOfSalary < 5 and YearOfSalary = 2015 
		group by EmployeeId
	) as MaxSalaryBeforeMay 
on MaySalary.EmployeeId = MaxSalaryBeforeMay.EmployeeId) 
where Salary < MaxSalary;
--7) �������� ���������� � �����, ��������� ������� � ���������� ���������� � ���� ������� � ��������� ����� �����������
select Id as DepartamentId, Name as DepartamentName, Staff.WorkersCount 
from (
	(select Id, Name from Department) as Departments
	join (
		select DepartmentId, count(EmployeeId) as WorkersCount 
		from Career 
		where TerminationDate is null 
		GROUP BY DepartmentId
	) AS Staff 
ON Departments.Id = Staff.DepartmentId);
--8) ����� ������� ����������� �������� �� 2015 ��� � ������� ����������
select e.Id as EmployeeId,(e.FirstName + ' ' + e.LastName) as FullName, AverageSalary
from (
	select EmployeeId, avg(Salary) as AverageSalary 
	from Salary
	where YearOfSalary = 2015 
	group by EmployeeId
) results, Employee e 
where e.Id = results.EmployeeId;
--9) ����� ������� �������� �� 2015 ��� � ������� ����������. �������� � ��������� ������ ��� ����������, ���������� ������� ����������� �� ����� ���� ���
select e.Id as EmployeeId,(e.FirstName + ' ' + e.LastName) as EmployeeFullName, AverageSalary
from (
	select EmployeeId, avg(Salary) as AverageSalary 
	from Salary 
	where YearOfSalary = 2015 
	group by EmployeeId 
	having count(Salary) >= 2 
) results, Employee e 
where e.Id = results.EmployeeId;
--10) ����� ����� ��� ����������, ����������� �������� ������� �� ������ 2015 ��������� 1000
select (e.FirstName + ' ' + e.LastName) as EmployeeFullNamePaidMoreThan1000 
from (
	select EmployeeId 
	from Salary 
	where MonthOfSalary = 1 and YearOfSalary = 2015 and Salary >= 1000
) results, Employee e 
where e.Id = results.EmployeeId;
--11) ����� ����� ���������� � ���� �� ����������� ������ (�� ����� ��������� � � ����� ������). 
select (e.FirstName + ' ' + e.LastName) as EmployeeFullName, results.JobId, results.DepartmentId, results.Experience 
from (
	Employee e
	right join (
		select c.EmployeeId, c.JobId, c.DepartmentId, DATEDIFF(YEAR, c.HireDate, GETDATE()) AS Experience
		from Career c 
		where c.TerminationDate is null
	union
		select c.EmployeeId, c.JobId, c.DepartmentId, DATEDIFF(YEAR, c.HireDate, c.TerminationDate) 
		from Career c 
		where not c.TerminationDate is null
) as results 
on e.Id = results.EmployeeId);
--12) ��������� ����������� �������� ��� ���� ���������� � 1.5 ����
select MinimumMonthlySalary as WasMinimumMonthlySalary
from Job;
update Job set MinimumMonthlySalary = MinimumMonthlySalary * 1.5;
select MinimumMonthlySalary as NowMinimumMonthlySalary
from Job;
--13) ������� �� ������� salary ��� ������ �� 2014 � ����� ������ ����
select YearOfSalary as WasYearsOfSalary
from salary;
delete Salary where YearOfSalary <= 2014;
select YearOfSalary as NowYearsOfSalary
from salary;
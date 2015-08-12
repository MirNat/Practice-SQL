USE SQLTaskStudentsLab2015
GO
--1) Получить все содержимое таблицы Employee
select * 
from Employee;
--2) Получить коды и названия должностей, чья минимальная зарплата не превышает 500
select Id,Name 
from Job 
where MinimumMonthlySalary <= 500; 
--3) Получить среднюю заработную плату начисленную в январе 2015 года
select avg(Salary) as AverageSalaryInJanuary2015 
from Salary 
where MonthOfSalary = 1 and YearOfSalary = 2015
--4) Получить имя самого старого работника, а также его возраст
select (e.FirstName + ' ' + e.LastName) as OldestEmployee, datediff(yy, results.MinDateOfBirth, getdate()) as Age
from (
	select  min(DateOfBirth) as MinDateOfBirth 
	from Employee
) results, Employee e 
where e.DateOfBirth = results.MinDateOfBirth;
--5) Найти фамилии работников, которым была начислена зарплата в январе 2015 года
select e.LastName as EmployeesLastNamePaidInJanuary2015
from (
	select EmployeeId 
	from Salary
	where MonthOfSalary = 1 and YearOfSalary = 2015
 ) results, Employee e 
 where e.Id = results.EmployeeId;
--6)Найти коды работников, зарплата которых в мае 2015 года снизилась по сравнению с каким-либо предыдущим месяцем этого же года
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
--7) Получить информацию о кодах, названиях отделов и количестве работающих в этих отделах в настоящее время сотрудников
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
--8) Найти среднюю начисленную зарплату за 2015 год в разрезе работников
select e.Id as EmployeeId,(e.FirstName + ' ' + e.LastName) as FullName, AverageSalary
from (
	select EmployeeId, avg(Salary) as AverageSalary 
	from Salary
	where YearOfSalary = 2015 
	group by EmployeeId
) results, Employee e 
where e.Id = results.EmployeeId;
--9) Найти среднюю зарплату за 2015 год в разрезе работников. Включать в результат только тех работников, начисления которым проводились не менее двух раз
select e.Id as EmployeeId,(e.FirstName + ' ' + e.LastName) as EmployeeFullName, AverageSalary
from (
	select EmployeeId, avg(Salary) as AverageSalary 
	from Salary 
	where YearOfSalary = 2015 
	group by EmployeeId 
	having count(Salary) >= 2 
) results, Employee e 
where e.Id = results.EmployeeId;
--10) Найти имена тех работников, начисленная зарплата которых за январь 2015 превысила 1000
select (e.FirstName + ' ' + e.LastName) as EmployeeFullNamePaidMoreThan1000 
from (
	select EmployeeId 
	from Salary 
	where MonthOfSalary = 1 and YearOfSalary = 2015 and Salary >= 1000
) results, Employee e 
where e.Id = results.EmployeeId;
--11) Найти имена работников и стаж их непрерывной работы (на одной должности и в одном отделе). 
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
--12) Увеличить минимальную зарплату для всех должностей в 1.5 раза
select MinimumMonthlySalary as WasMinimumMonthlySalary
from Job;
update Job set MinimumMonthlySalary = MinimumMonthlySalary * 1.5;
select MinimumMonthlySalary as NowMinimumMonthlySalary
from Job;
--13) Удалить из таблицы salary все записи за 2014 и более ранние годы
select YearOfSalary as WasYearsOfSalary
from salary;
delete Salary where YearOfSalary <= 2014;
select YearOfSalary as NowYearsOfSalary
from salary;
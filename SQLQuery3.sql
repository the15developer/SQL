create database lab6

use lab6

CREATE TABLE [dbo].[employees](
	[EmpID] [int] NOT NULL,
	[EmpName] [varchar](40) NOT NULL,
) ON [PRIMARY]

CREATE TABLE [dbo].[address](
	[ID] [int] NOT NULL,
	[City] [varchar](40) NOT NULL,
) ON [PRIMARY]

INSERT INTO employees VALUES (1, 'Rajendra')
INSERT INTO employees VALUES (2, 'Kusum')
INSERT INTO employees VALUES (3, 'Akshita')

INSERT INTO address VALUES (1, 'Jaipur')
INSERT INTO address VALUES (2, 'Delhi')
INSERT INTO address VALUES (7, 'Raipur')
INSERT INTO address VALUES (8, 'Bangalore')

select * from employees

select * from address

--inner join

select EmpName, City from employees e inner join address a on e.EmpID = a.ID

-- left outer join

select EmpName, City from employees e left outer join address a on e.EmpID = a.ID

-- right outer join

select EmpName, City from employees e right outer join address a on e.EmpID = a.ID

-- full outer join

select EmpName, City from employees e full outer join address a on e.EmpID = a.ID






create table Departaments 
(
Id int primary key identity,
Name nvarchar(30) not null constraint Len_Err1 check(Len(Name)>3)
)
create table Employees 
(
Id int primary key identity,
FullName nvarchar(30) not null constraint Len_Err2 check(Len(FullName)>3),
Salary  int   check (Salary>0),
DepartamentId int constraint FK_Employees_DepartamentId references Departaments(Id)
)

insert into Departaments 
values ('Paranoia'),('Schizophrenia'),('Depression'),('Anxiety disorders')

insert into Employees
values  ('Ader Titsoff',2000,2),('Master Bates',5800,3),('Miya Buttreaks',4500,1),('Stella Virgin',5000,1),('Sal Ami',9000,3),
('Semour Asscrack',1500,2),('Vye Agra',6500,4)

select e.FullName from Employees e
right outer  join Departaments d
on d.Id=e.DepartamentId

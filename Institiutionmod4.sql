use training
create table Institute(
InstituteID int primary key identity(1000,1),
City varchar(100),
);


create table Course(
CourseID int primary key,
CourseName varchar(100),
)

create table Students(
StudentID int primary key identity(100,1),
StudentName varchar(100),
DOB date
)

create table Admission(
AdmissionID int primary key identity(10,1),
AdmissionDate date,
StudentID int foreign key references Students,
CourseID int foreign key references Course
)



alter PROCEDURE getcoursename	
AS
select CourseName,CourseID from Course
	RETURN

	alter PROCEDURE getcity	
AS
select City from Institute
	RETURN


	
	alter PROCEDURE addcustomer
	(
	
	@studName varchar(100),
	@dob date,
	@city varchar(100),
	@coursename varchar(100),
	@admisndtae date,
	@corseId int

	)
	
AS
	insert into Students(StudentName,DOB) Values(@studName,@dob)
	insert into Course(CourseID,CourseName) Values(@corseId,@coursename)
	
	declare @studId int;
	select @studId = IDENT_CURRENT('Admission')
	insert into Admission(AdmissionDate,CourseID)
	values(@admisndtae,@corseId)

	
Create Table NEmployee(
EmpID numeric primary key identity(100,1),
EmpName varchar(100),
Empgender varchar(100),
Emplocation varchar(100),
DateOfStart date
);

create PROCEDURE addempdetails
	(
	
	@empName varchar(100),
	@empgender varchar(100),
	@emploaction varchar(100),
	@dateofstrt date
	)
	
AS
	insert into NEmployee(EmpName,Empgender,Emplocation,DateOfStart) Values(@empName,@empgender,@emploaction,@dateofstrt)
	RETURN


	create PROCEDURE GetAllEmp
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select EmpID,EmpName,Empgender,Emplocation,DateOfStart from NEmployee

	create PROCEDURE UpdateEmployee
	(
	@empid int,
	@empName varchar(100),
	@empgend varchar(100),
	@emploaction varchar(100),
	@dateofstrt date
	)
AS
	update NEmployee set EmpName = @empName,Empgender=@empgend,Emplocation = @emploaction,DateOfStart=@dateofstrt where EmpID=@empid;
	RETURN

	create PROCEDURE Delemp
	(
	@empID int
	)
AS
	Delete from NEmployee where EmpID = @empID;
	RETURN

	create PROCEDURE Searchemp 
	(
	@empID int
	)
	
AS
		select EmpID,EmpName,Empgender,Emplocation,DateOfStart from NEmployee where EmpID=@empID;
	RETURN

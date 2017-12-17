use training;

Create Table Project(
ProjID numeric primary key identity(100,1),
ProjName varchar(100),
ProjLocation varchar(100),
ProjBudget numeric(10,2),
DateOfStart date
);

/* adding project details */
create PROCEDURE addProjdetails
	(
	
	@projName varchar(100),
	@projloaction varchar(100),
	@projbudget numeric(10,2),
	@dateofstrt date
	)
	
AS
	insert into Project(ProjName,ProjLocation,ProjBudget,DateOfStart) Values(@projName,@projloaction,@projbudget,@dateofstrt)
	RETURN

/* searching project*/



/* get all projects */
create PROCEDURE getproj
(
@projid int
)
as
select * from Project where ProjID = @projid

/* get alll the projects mentioned in names*/
create PROCEDURE GetAllProj
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select ProjID,ProjName,ProjLocation,ProjBudget,DateOfStart from project;
	RETURN

/* updating project*/
	create PROCEDURE UpdateProject
	(
	@projid int,
	@projName varchar(100),
	@projloaction varchar(100),
	@projbudget numeric,
	@dateofstrt date
	)
AS
	update Project set ProjName = @projName,ProjLocation = @projloaction,ProjBudget=@projbudget,DateOfStart=@dateofstrt where ProjID=@projid;
	RETURN


	/* delete project */
	create PROCEDURE DelGuest
	(
	@projID int
	)
AS
	Delete from Project where ProjID = @projID;
	RETURN
	/* search projects */
	create PROCEDURE SearchGuest 
	(
	@projID int
	)
	
AS
		select ProjID,ProjName,ProjLocation,ProjBudget,DateOfStart from Project where ProjID = @projID;
	RETURN

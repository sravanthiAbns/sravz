create table Policies(
PolicyID int primary key ,
PolicyName varchar(100),
Duration int,
PremiumAmt numeric(10,2),
MaturityAmt numeric(10,2));


create table Branches(
BranchID int primary key ,
BranchName varchar(100),
BranchAddress varchar(100));

create  table LICCustomers(
CustomerID int primary key identity(100,1),
CustomerName varchar(100) unique,
DOB date,
Address varchar(100));

create table CustomerPolicys(
CustomerID int foreign key references  LICCustomers,
PolicyID int foreign key references  Policies,
BranchID int foreign key references Branches,
);

alter PROCEDURE getpolicyname
	
	
AS
	select PolicyName,PolicyID from Policies
	
	RETURN


create PROCEDURE getbranchname
AS
	select BranchName,BranchID from Branches;
	RETURN

	create PROCEDURE addcustomer
	(
	
	@custName varchar(100),
	@dob date,
	@address varchar(100),
	@policyId int,
	@branchId int
	
	)
	
AS
	insert into LICCustomers(CustomerName,DOB,Address) Values(@custName,@dob,@address)
	declare @custId int;
	select @custId = IDENT_CURRENT('LICCustomers')
	insert into CustomerPolicys(CustomerID,PolicyID,BranchID)
	values(@custId,@policyId,@branchId);
	RETURN
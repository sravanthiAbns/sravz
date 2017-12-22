create Procedure getPolicyDetails
as
select PolicyId,PolicyName from Policy;

create Procedure getBranchDetails
as
select BranchId,BranchName from Branches;

alter Procedure insertCustomerDetails(

@custName nvarchar(50),
@custDOB datetime,
@custAddress nvarchar(50),
@policyId int,
@branchId int)
as
insert into Policy_Customers(CustName,CustDob,CustAddress)
values(@custName,@custDOB,@custAddress);

declare @custId int;

select @custId=IDENT_CURRENT('Policy_Customers');
insert into CustomerPolicy(CustId,PolicyId,BranchId)
values(@custId,@policyId,@branchId);



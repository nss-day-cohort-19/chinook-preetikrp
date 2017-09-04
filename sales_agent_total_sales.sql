
 --Provide a query that shows total sales made by each salesagent.


select Employee.EmployeeId, sum(sales.Total)
from Employee, Invoice sales, Customer
where Employee.EmployeeId= Customer.SupportRepId
and Customer.CustomerId= sales.CustomerId
group by Employee.EmployeeId;





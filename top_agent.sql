select EmployeeId, max(Total)
from
(select EmployeeId,  Sum(sales.Total) as "Total"
from Invoice sales, Employee, Customer
where Employee.EmployeeId= Customer.SupportRepId
and Customer.CustomerId= sales.CustomerId
group by Employee.EmployeeId) tbl
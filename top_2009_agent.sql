select EmployeeId, max(Total)
from
(select EmployeeId,  Sum(sales.Total) as "Total"
from Invoice sales, Employee, Customer
where Employee.EmployeeId= Customer.SupportRepId
and sales.InvoiceDate Like "2009-%"
and Customer.CustomerId= sales.CustomerId
group by Employee.EmployeeId) tbl




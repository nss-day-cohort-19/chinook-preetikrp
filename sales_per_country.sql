--Provide a query that shows the total sales per country.
 
select Customer.Country, sum(sales.Total)
from Employee, Invoice sales, Customer
where Employee.EmployeeId= Customer.SupportRepId
and Customer.CustomerId= sales.CustomerId
group by Customer.Country
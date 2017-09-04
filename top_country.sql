 --Which country's customers spent the most?
 
 select  * from 
(select Customer.Country, sum(sales.Total) as salesTotal
from Employee, Invoice sales, Customer
where Employee.EmployeeId= Customer.SupportRepId
and Customer.CustomerId= sales.CustomerId
group by Customer.Country) 
order by salesTotal desc Limit 1;
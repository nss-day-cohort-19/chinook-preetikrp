Select  Invoice.InvoiceDate, Customer.FirstName || ' ' || Customer.LastName as 'Customer Full Name',
 
Employee.FirstName || ' ' || Employee.LastName as 'Sales Agent Name'
from Invoice
 Join Employee on (Customer.SupportRepId = Employee.EmployeeId)
 Join Customer on (Invoice.CustomerId = Customer.CustomerId)


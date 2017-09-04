Select Employee.FirstName || ' ' || Employee.LastName as 'Sales Agent' , Invoice.* from Employee
Join Customer on Employee.EmployeeId = Customer.SupportRepId
Join Invoice on Customer.CustomerId = Invoice.CustomerId
Order by invoiceId






/*SELECT Persons.Name, Persons.SS, Fears.Fear FROM Persons
LEFT JOIN Person_Fear ON Person_Fear.PersonID = Persons.PersonID
LEFT JOIN Fears ON Person_Fear.FearID = Fears.FearID*/
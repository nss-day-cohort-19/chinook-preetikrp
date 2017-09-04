Select Customer.FirstName || ' ' || Customer.LastName as FullName,
 Invoice.InvoiceId, Invoice.InvoiceDate, 
 Invoice.BillingCountry from Customer, invoice
Where Invoice.BillingCountry = 'Brazil' 
and Customer.CustomerId = Invoice.CustomerId
Select Count(i.InvoiceId) as NumberOfInvoices,
strftime('%Y', i.InvoiceDate) as InvoiceYear
from Invoice i
Where InvoiceYear = '2011'
or InvoiceYear = '2009'
group by InvoiceYear

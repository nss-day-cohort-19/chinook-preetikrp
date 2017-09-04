
Select InvoiceLine.InvoiceId, Count(InvoiceLineId) as 'Total# of lines'
from InvoiceLine
Group by InvoiceId
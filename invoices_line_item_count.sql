select i.invoiceId , count(*) from 
Invoice i left join InvoiceLine il on i.InvoiceId=il.invoiceId 
group by i.invoiceId;
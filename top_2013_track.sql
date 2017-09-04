-- Provide a query that shows the most purchased track of 2013.
select Track.Name, Invoice.InvoiceDate, sum(InvoiceLine.Quantity) as siq from InvoiceLine 
inner join Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
inner join Track on Track.TrackId = InvoiceLine.TrackId 
where Invoice.InvoiceDate Like "2013-%"
group by Track.Name
order by siq desc Limit 1;


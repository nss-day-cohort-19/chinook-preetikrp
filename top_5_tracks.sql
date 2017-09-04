-- Provide a query that shows the top 5 most purchased songs.
select Track.Name, Invoice.InvoiceDate, sum(InvoiceLine.Quantity) as siq from InvoiceLine 
inner join Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
inner join Track on Track.TrackId = InvoiceLine.TrackId 
group by Track.Name
order by siq desc Limit 5;


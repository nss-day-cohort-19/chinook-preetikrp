--Provide a query that shows the top 3 best selling artists.
select Artist.Name,Artist.ArtistId, sum(InvoiceLine.UnitPrice) as TotalSale from InvoiceLine 
inner join Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
inner join Album on Album.ArtistId = Artist.ArtistId
inner join Artist on Artist.ArtistId= Album.ArtistId
group by Artist.ArtistId
order by TotalSale desc Limit 3;
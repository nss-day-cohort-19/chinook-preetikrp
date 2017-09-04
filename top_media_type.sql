--Provide a query that shows the most purchased Media Type.
select MediaType.Name,MediaType.MediaTypeId, sum(InvoiceLine.UnitPrice) as TotalSale from InvoiceLine 
inner join MediaType on MediaType.MediaTypeId = Track.MediaTypeId
inner join Track on Track.MediaTypeId= MediaType.MediaTypeId
group by MediaType.Name
order by TotalSale desc Limit 1;
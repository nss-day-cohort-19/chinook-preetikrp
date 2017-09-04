select track.name, track.composer, invoiceLine.invoiceLineId, invoiceLine.invoiceId, 
InvoiceLine.TrackId, InvoiceLine.UnitPrice, InvoiceLine.Quantity 
from track, invoiceLine
where track.trackId = invoiceLine.trackId


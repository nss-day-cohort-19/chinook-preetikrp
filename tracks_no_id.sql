select t.name as TrackName, a.title as Title, mt.Name as MediaName, g.name as GenreType from Track t 
Join MediaType mt ON t.MediaTypeId = mt.MediaTypeId
join Genre g ON t.GenreId = g.GenreId
Join Album a ON a.AlbumId = t. AlbumId

 
select pl.name, Count(plt.TrackId) from PlayList pl 
JOIN PlaylistTrack plt ON pl.PlaylistId = plt.PlaylistID 
JOIN Track t ON plt.TrackId = t.TrackId
group by pl.name




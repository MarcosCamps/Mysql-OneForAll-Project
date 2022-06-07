SELECT 
a.artista_name as artista,
al.album_name as album
from SpotifyClone.artista as a
INNER JOIN SpotifyClone.album as al
on a.artista_id = al.artista_id
group by artista, album
order by artista DESC, album
LIMIT 2;
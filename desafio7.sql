SELECT 
a.artista_name as artista,
al.album_name as album,
count(s.artista_id) as seguidores
from SpotifyClone.artista as a
INNER JOIN SpotifyClone.album as al
on a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo as s
on a.artista_id = s.artista_id
group by artista, album, s.artista_id
order by seguidores DESC, artista, album;

SELECT count(*) AS cancoes,
(SELECT count(*) from SpotifyClone.artista) AS artistas,
(SELECT count(*) from  SpotifyClone.album) AS albuns
from SpotifyClone.cancao;
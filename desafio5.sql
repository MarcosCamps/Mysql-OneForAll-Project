SELECT c.cancao_name AS cancao,
count(h.cancao_id) as reproducoes
from SpotifyClone.cancao as c
INNER JOIN SpotifyClone.historico as h
on c.cancao_id = h.cancao_id
group by cancao
order by reproducoes DESC, cancao
limit 2;
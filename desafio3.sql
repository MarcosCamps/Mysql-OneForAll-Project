SELECT 
u.user_name AS usuario,
count(historico.cancao_id) as qtde_musicas_ouvidas,
ROUND(SUM(cancao.duracao_segundos) / 60, 2) as total_minutos
from SpotifyClone.usuario as u
INNER JOIN SpotifyClone.cancao as cancao
INNER JOIN SpotifyClone.historico as historico
on u.user_id = historico.user_id and cancao.cancao_id = historico.cancao_id
GROUP BY u.user_id
ORDER BY u.user_name;
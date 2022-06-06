SELECT 
u.user_name AS usuario,
if (MAX(YEAR(h.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo' ) AS condicao_usuario
from SpotifyClone.usuario as u
INNER JOIN SpotifyClone.historico as h
on u.user_id = h.user_id
group by usuario
order by usuario;
SELECT 
MIN(valor_plano) as faturamento_minimo,
MAX(valor_plano) as faturamento_maximo,
ROUND(AVG(valor_plano), 2) as faturamento_medio,
SUM(valor_plano) as faturamento_total
from SpotifyClone.plano
JOIN usuario ON plano.plano_id = usuario.plano_id;
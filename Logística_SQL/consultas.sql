-- TOP 3 produtos mais enviados
SELECT 
    p.nome,
    SUM(e.quantidade) AS total_enviado
FROM entregas e
JOIN produto p ON e.id_produto = p.id_produto
GROUP BY p.nome
ORDER BY total_enviado DESC
LIMIT 3;

-- Tempo médio de entrega por transportadora
SELECT 
    t.nome AS transportadora,
    AVG(e.tempo_transporte_dias) AS tempo_medio
FROM entregas e
JOIN transportadora t ON e.id_transportadora = t.id_transportadora
GROUP BY t.nome
ORDER BY tempo_medio ASC;

-- Custo total de frete por estado
SELECT 
    c.estado,
    SUM(e.custo_frete) AS total_frete
FROM entregas e
JOIN cliente c ON e.id_cliente = c.id_cliente
GROUP BY c.estado
ORDER BY total_frete DESC;

-- Faturamento simulado
SELECT 
    e.id_entrega,
    e.custo_frete,
    (e.custo_frete * 1.2) AS faturamento
FROM entregas e;

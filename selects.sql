-- QUANTIDADE DE ASSINATURAS DE CADA PLANO
SELECT planoid, COUNT(assinaturaid) FROM assinaturas GROUP BY planoid 
-- VALOR TOTAL RECEBIDO COM AS ASSINATURAS
SELECT SUM(preco) AS TOTAL  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.planoId = planos.planoId
--VALOR POR ASSINATURA
SELECT planos.planoId, SUM(preco) AS [valor por plano]  FROM planos 
LEFT JOIN Assinaturas ON Assinaturas.planoId = planos.planoId
GROUP BY planos.planoId
ORDER BY [valor por plano]
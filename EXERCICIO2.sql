SELECT YEAR(DATA_VENDA), ROUND(SUM(QUANTIDADE*PRECO*IMPOSTO),2) AS IMPOSTO_TOTAL FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON INF.NUMERO = NF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016 GROUP BY YEAR(DATA_VENDA);

SELECT NOME, FLOOR((DATEDIFF(CURDATE(),DATA_DE_NASCIMENTO)/365)) AS IDADE FROM tabela_de_clientes;

SELECT * FROM notas_fiscais;
SELECT CONCAT('O cliente ', CL.NOME, ' faturou ', CAST(SUM(INF.PRECO*INF.QUANTIDADE) AS char(20)), ' no ano ', CAST(YEAR(NF.DATA_VENDA) AS char(20))) AS FRASE FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO=INF.NUMERO INNER JOIN (tabela_de_clientes CL) ON NF.CPF = CL.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CL.NOME, YEAR(DATA_VENDA);
SELECT (23+45*36/42);

SELECT CEILING(12.33333) AS RESULT;
SELECT FLOOR(12.333333) AS RESULT;
SELECT ROUND(12.3333) AS RESULT;

SELECT RAND() AS RESULTADO;

SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO,3) AS FATURAMENTO FROM ITENS_NOTAS_FISCAIS;

SELECT YEAR(DATA_VENDA), FLOOR(SUM(IMPOSTO * (QUANTIDADE*PRECO))) FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA);

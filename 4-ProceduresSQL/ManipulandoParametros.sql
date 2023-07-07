call declarando_variaveis;

call sp_Exerc01;

select NOME, DATA_DE_NASCIMENTO, 
timestampdiff(YEAR, DATA_DE_NASCIMENTO, CURDATE()) as IdadeAtual from TABELA_DE_CLIENTES;

call Calcula_Idade;

select * from TABELA_DE_VENDEDORES;
call Reajuste_Comissao(1.9);
select * from TABELA_DE_VENDEDORES;

select * from TABELA_DE_PRODUTOS;

call incluindo_novos_produtos('10000001', 'Heineken - puro malte', 'garrafa', '500 ml', 'Frutas maltadas', 20.5);

select CODIGO_DO_PRODUTO, NOME_DO_PRODUTO from TABELA_DE_PRODUTOS;

call sp_sabor_pelo_codigo(10000001);

select COUNT(DATA_VENDA) from NOTAS_FISCAIS WHERE DATA_VENDA = '2017-01-01';

call Quantidade_Notas('2017-01-01');

call cliente_idade('1471156710');

select * from NOTAS_FISCAIS;

call conta_numero_notas('2015-01-01');

SELECT SUM(B.QUANTIDADE * B.PRECO), A.DATA_VENDA AS TOTAL_VENDA FROM 
NOTAS_FISCAIS A INNER JOIN ITENS_NOTAS_FISCAIS B
ON A.NUMERO = B.NUMERO
WHERE A.DATA_VENDA in('20170301', '20150101') group by A.DATA_VENDA;

call Comparativo_Vendas('20160301', '20150101');
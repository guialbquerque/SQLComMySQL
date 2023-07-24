select NOME, IDADE as 'Idade desatualizada', DATA_DE_NASCIMENTO,
 timestampdiff(YEAR, DATA_DE_NASCIMENTO, curdate()) as 'Idade atualizada' from tabela_de_clientes;
/*alter table tabela_de_clientes drop column ENDERECO_2;*/

call Atualiza_Idade();

select CPF, IDADE, DATA_DE_NASCIMENTO from tabela_de_clientes;

call calcula_faixa_etaria('5840119709');

call hello_world();

select * from tabela_de_produtos;

call classificacao_preco_produto('695594');

create table ID_Looping (ID int);

call add_id(1, 10);

call tipo_sabor('1000889');

select * from notas_fiscais;
select * from itens_notas_fiscais;

call razao_entre_faturamentos('2015-01-01', '2015-02-09');

create table total_notas_fiscais (data_nota date, total_notas float);

-- alter table total_notas_fiscais modify column total_notas int;

call soma_dias_notas('2015-01-01', '2015-01-05');

select * from total_notas_fiscais;

call cursor_primeiro_exemplo;

call cursor_looping;

select LIMITE_DE_CREDITO from tabela_de_clientes;

call sp_limite_de_credito;

call cursor_multiplas_variaveis;

SELECT INF.QUANTIDADE, INF.PRECO FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN NOTAS_FISCAIS  NF ON NF.NUMERO = INF.NUMERO
WHERE MONTH(NF.DATA_VENDA) = 1 AND YEAR(NF.DATA_VENDA) = 2017;

select * from notas_fiscais;
select * from itens_notas_fiscais;

call faturamento_por_mes_ano(1, 2018);

SET GLOBAL LOG_BIN_TRUST_FUNCTION_CREATORS = 1;

select NOME_DO_PRODUTO, SABOR, fc_tipo_sabor(SABOR) as 'Tipo da fruta' from tabela_de_produtos;

select conta_numero_de_notas('2015-01-01') as Total_notas;
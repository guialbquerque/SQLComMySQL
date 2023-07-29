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

select NOME_DO_PRODUTO, SABOR, fc_tipo_sabor(SABOR) as 'Tipo da fruta' from tabela_de_produtos;

select conta_numero_de_notas('2015-01-01') as Total_notas;

select fc_numero_aleatorio(0, 100);

create table TABELA_ALEATORIOS (num int);

select * from TABELA_ALEATORIOS;

insert into tabela_aleatorios 
select fc_numero_aleatorio(0, 1000) as num;

call Tabela_Numeros_Aleatorios();

SET GLOBAL LOG_BIN_TRUST_FUNCTION_CREATORS = 1; 

select acha_cliente_aleatorio();
select acha_produto_aleatorio();
select acha_vendedor_aleatorio();

select count(*) CODIGO_DO_PRODUTO from tabela_de_produtos;

call insere_nova_venda('2023-02-08', 5, 20);

select * from notas_fiscais where DATA_VENDA = '2023-02-08';

select * from itens_notas_fiscais where NUMERO = 87983;

CREATE TABLE TAB_FATURAMENTO (DATA_VENDA DATE NULL, TOTAL_VENDA FLOAT);


DELIMITER //
CREATE TRIGGER TG_CALCULA_FATURAMENTO_INSERT AFTER INSERT ON ITENS_NOTAS_FISCAIS
FOR EACH ROW BEGIN
	call calcula_faturamento();
END//

DELIMITER //
CREATE TRIGGER TG_CALCULA_FATURAMENTO_UPDATE AFTER UPDATE ON ITENS_NOTAS_FISCAIS
FOR EACH ROW BEGIN
	call calcula_faturamento();
END//

DELIMITER //
CREATE TRIGGER TG_CALCULA_FATURAMENTO_DELETE AFTER DELETE ON ITENS_NOTAS_FISCAIS
FOR EACH ROW BEGIN
	call calcula_faturamento();
END//

call insere_nova_venda('2023-07-29', 5, 20);

select * from tab_faturamento where DATA_VENDA = '2023-07-29';
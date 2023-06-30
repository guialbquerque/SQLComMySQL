call declarando_variaveis;

call sp_Exerc01;

select NOME, DATA_DE_NASCIMENTO, 
timestampdiff(YEAR, DATA_DE_NASCIMENTO, CURDATE()) as IdadeAtual from TABELA_DE_CLIENTES;

call Calcula_Idade;

select * from TABELA_DE_VENDEDORES;
call Reajuste_Comissao(1.9);
select * from TABELA_DE_VENDEDORES;
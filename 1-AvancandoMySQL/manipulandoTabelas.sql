use sucos_vendas;
select * from itens_notas_fiscais limit 20;
select * from notas_fiscais limit 20;
select * from tabela_de_clientes limit 20;
select * from tabela_de_produtos limit 20;
select * from tabela_de_vendedores;

select NOME, ENDERECO_1, BAIRRO, ESTADO from tabela_de_clientes
where ESTADO in ('RJ', 'SP') and SEXO = 'M';

select NOME, ENDERECO_1, BAIRRO, ESTADO from tabela_de_clientes
where NOME like '%Mattos';

select NOME, ENDERECO_1, BAIRRO, ESTADO from tabela_de_clientes
where NOME like '%Mattos%';

select NOME, ENDERECO_1, BAIRRO, ESTADO from tabela_de_clientes
where NOME like 'Mattos%';

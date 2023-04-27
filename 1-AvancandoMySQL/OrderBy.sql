select distinct SABOR as 'Sabor', EMBALAGEM as 'Embalagem',
TAMANHO as 'Tamanho' from tabela_de_produtos;
/* the distinct command as suggest, only show the unique values*/

select distinct SABOR as 'Sabor', EMBALAGEM as 'Embalagem',
TAMANHO as 'Tamanho' from tabela_de_produtos where SABOR = 'Manga';

select * from tabela_de_produtos WHERE SABOR = 'Melância';

update tabela_de_produtos set NOME_DO_PRODUTO = 'Light-350 ml-Melancia',
SABOR = 'Melancia' where CODIGO_DO_PRODUTO = '1040107';

update tabela_de_produtos set NOME_DO_PRODUTO = 'Videira do Campo - 1,5 Litros - Melancia',
SABOR = 'Melancia' where CODIGO_DO_PRODUTO = '1004327';

update tabela_de_produtos set NOME_DO_PRODUTO = 'Videira do Campo - 350 ml - Melancia',
SABOR = 'Melancia' where CODIGO_DO_PRODUTO = '290478';

update tabela_de_produtos set NOME_DO_PRODUTO = 'Light - 1,5 Litros - Melancia',
SABOR = 'Melancia' where CODIGO_DO_PRODUTO = '746596';

select SABOR as 'Sabor', EMBALAGEM as 'Embalagem',
TAMANHO as 'Tamanho' from tabela_de_produtos where SABOR = 'Melancia';

select NOME_DO_PRODUTO, TAMANHO, SABOR, PRECO_DE_LISTA from tabela_de_produtos order by PRECO_DE_LISTA desc;

select NOME_DO_PRODUTO, TAMANHO, SABOR, EMBALAGEM, PRECO_DE_LISTA from tabela_de_produtos
order by EMBALAGEM, PRECO_DE_LISTA desc;

select * from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1013793' order by PRECO desc;

select * from tabela_de_clientes;

# alter table tabela_de_clientes drop ENDERECO_2; Deleted Empty column
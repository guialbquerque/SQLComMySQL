create database sucos;
use sucos; -- Comando para especificar qual db

create table tbCliente
(
    CPF varchar(11),
    Nome varchar(100),
    Endereco varchar(150),
    Bairro varchar(50),
    Cidade varchar(50),
    Estado varchar(50),
    Cep varchar(8),
    Idade smallint,
    Sexo varchar(1),
    Limite_Credito float,
    Volume_Compra float,
    Primeira_Compra bit(1)
); -- Criacao de uma tabela e campos

alter table tbCliente add primary key (CPF);
-- alterando um campo e especificando chave primaria

create table tbVendedores
(
    Matricula varchar(5),
    Nome varchar(100),
    Percentual_Comissao float
);

alter table tbVendedores add primary key (Matricula);

create table tbProdutos
(
    Codigo_Produto varchar(20) primary key,
    Nome_Produto varchar(150),
    Embalagem varchar(50),
    Tamanho varchar(50),
    Sabor varchar(50),
    Preco_Lista float
);

insert into tbprodutos
(Codigo_Produto,
 Nome_Produto,
 Embalagem,
 Tamanho,
 Sabor,
 Preco_Lista)
VALUES (
'1040107',
'Light',
'Lata',
'350 ml',
'Melancia',
4.56);

insert into tbprodutos
(Codigo_Produto,
 Nome_Produto,
 Embalagem,
 Tamanho,
 Sabor,
 Preco_Lista) values
(
 '544931',
 'Frescor do Verão - 350 ml - Limão',
 'PET',
 '350 ml',
 'Limão',
 3.20);

select * from tbprodutos;
create database if not exists vendas_sucos;
use vendas_sucos;

create table Produtos
(
    Codigo varchar(10) not null ,
    Descritor varchar(100) null,
    Sabor varchar(50) null,
    Tamanho varchar(50) null,
    Embalagem varchar(50) null,
    Preco_lista float,
    primary key (Codigo)
);

create table Vendedores
(
    Matricula varchar(5) not null,
    Nome varchar(100) null,
    Bairro varchar(50) null,
    Comissao float null,
    Data_admissao date null ,
    Ferias bit(1) null,
    primary key (Matricula)
);

create table Cliente
(
    CPF varchar(11) not null,
    Nome varchar(100) null,
    Endereco varchar(50) null,
    Bairro varchar(50) null,
    Cidade varchar(50) null,
    Estado varchar(50) null,
    CEP varchar(8) null,
    Data_nascimento date null,
    Idade int null,
    Sexo varchar(1) null,
    Limite_credito float null,
    Volume_compra float null,
    Primeira_compra bit(1) null,
    primary key (CPF)
);

create table Vendas
(
    Numero varchar(5) not null,
    Data date null,
    CPF varchar(11) not null,
    Matricula varchar(5) not null,
    Imposto float,
    primary key (Numero),
    foreign key (CPF) REFERENCES Cliente(CPF),
    foreign key (Matricula) references Vendedores(Matricula)
);

drop table Itens_Vendidos;

create table Itens_Vendidos
(
    Numero varchar(5) not null,
    Codigo varchar(10) not null,
    Quantidade int,
    Preco float,
    primary key (Numero)
);

alter table Itens_Vendidos add constraint fk_numero
foreign key (Numero) references Vendas (Numero);

alter table Itens_Vendidos add constraint fk_produtos
foreign key (Codigo) references Produtos (Codigo);

select * from itens_vendidos;
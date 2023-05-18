

insert into notas
select NUMERO as Numero, DATA_VENDA as Data, CPF, MATRICULA as Matricula,
       IMPOSTO as Imposto from sucos_vendas.notas_fiscais;



create table notas
(
    Numero    varchar(5)  not null,
    Data      date        null,
    CPF       varchar(11) not null,
    Matricula varchar(5)  not null,
    Imposto   float       null
);

select * from notas;
select * from vendedores;
alter table notas add constraint primary key (Numero);
update notas set Matricula = substring(Matricula, 3, 3);
alter table notas add constraint foreign key (Matricula) references vendedores (Matricula);
alter table notas add constraint foreign key (CPF) references cliente (CPF);

alter table itens_notas add constraint foreign key (Numero) references notas (Numero);

select * from cliente where (2013 - year(Data_nascimento)) <= 18;

select C.Nome,  count(N.Numero) as total_notas from cliente C inner join notas N on C.CPF = N.CPF
where (2013 - year(Data_nascimento)) <= 18 group by Nome;

select * from notas N inner join cliente C on N.CPF = C.CPF where C.Idade <= 18;

delete N from notas N inner join cliente C on N.CPF = C.CPF
         where C.Idade <= 18;

select * from notas N inner join cliente C on N.CPF = C.CPF where C.Idade <= 18;

select * from notas;

create table notas2
(
    Numero    varchar(5)  not null
        primary key,
    Data      date        null,
    CPF       varchar(11) not null,
    Matricula varchar(5)  not null,
    Imposto   float       null
);

insert into notas2
select * from notas;

select * from notas2;

delete from notas2;

drop table notas2;
select * from produtos where Codigo = '1013793';

select * from itens_notas;

select * from sucos_vendas.itens_notas_fiscais;

alter table itens_notas add primary key (Numero, Codigo);

alter table itens_notas add foreign key fk_numero (Numero) references notas (Numero);
alter table itens_notas add foreign key fk_codigo (Codigo) references produtos (Codigo);
/*
Adicionar uma chave estrangeira nao precisa necessariamente que os campos das tabelas a qual a referencia eh criada
sejam os mesmos, precisa apenas que os valores dos campos sejam correspondentes.
*/

select * from itens_notas;

insert into itens_notas (Numero, Codigo, Quantidade, Preco)
values ('100','1013793',63, 24.01), ('100', '1101035', 26, 9.0105),
       ('100', '520380', 67, 12.011), ('100', '773912', 66, 8.008),
       ('101', '1000889', 35, 6.309), ('101', '479745', 65, 3.768),
       ('102', '1101035', 84, 9.0105);

/*
Uma chave primaria composta funciona considerando os dois campos como uma combinacao unica, de modo que,
os campos podem se repetir individualmente, mas a combinacao dos dois precisa ser unica.
*/

select * from notas N inner join itens_notas ITN on N.Numero = ITN.Numero;
select * from notas;

select N.Data, round(sum(ITN.Preco * ITN.Quantidade), 2) as Faturamento from notas N inner join itens_notas ITN
    on N.Numero = ITN.Numero
group by N.Data;

create table tb_faturamento
(
    Data        date  not null,
    Faturamento float null,
    primary key (Data)
);
delete from tb_faturamento;
insert into tb_faturamento
select N.Data, round(sum(ITN.Preco * ITN.Quantidade), 2) as Faturamento from notas N inner join itens_notas ITN
    on N.Numero = ITN.Numero
group by N.Data;

select * from tb_faturamento;

select Data, CPF, count(CPF) as 'Notas por CPF' from notas group by Data, CPF;

select * from notas;
select * from itens_notas;

insert into itens_notas (Numero, Codigo, Quantidade, Preco)
values ('1000', '520380', 100, 26.5), ('10000', '1000889', 200, 35.75);
use sucos_vendas;
delimiter //
create trigger faturamentos after insert on itens_notas
    for each row
    begin
        delete from tb_faturamento;
        insert into tb_faturamento
            select N.Data, round(sum(ITN.Preco * ITN.Quantidade), 2) as Faturamento from notas N
                inner join itens_notas ITN
                on N.Numero = ITN.Numero
                group by N.Data;
    end //
select * from notas_fiscais;
select * from itens_notas_fiscais;

delimiter //
create trigger faturamentos after insert on itens_notas_fiscais
	for each row 
    begin
		delete from tb_faturamento;
        insert into tb_faturamento
			select N.DATA_VENDA as Data, round(sum(ITN.PRECO * ITN.QUANTIDADE), 2) as Faturamento from notas_fiscais N
				inner join itens_notas_fiscais ITN
                on N.NUMERO = ITN.NUMERO
                group by N.DATA_VENDA;
	end //

insert into itens_notas_fiscais (Numero, Codigo, Quantidade, Preco)
values ('10001', '520380', 100, 26.5), ('10002', '1000889', 200, 35.75);

insert into itens_notas (Numero, Codigo, Quantidade, Preco)
values ('10064', '520380', 150, 36.5), ('10065', '1000889', 400, 45.5);

insert into itens_notas (Numero, Codigo, Quantidade, Preco)
values ('100', '479745', 150, 36.5), ('1000', '1101035', 400, 45.5);

select * from tb_faturamento;

select * from itens_notas;
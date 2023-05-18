select * from vendedores;

select * from sucos_vendas.tabela_de_vendedores;


select A.Matricula, Ferias, De_FERIAS from vendedores A inner join sucos_vendas.tabela_de_vendedores B
on A.Matricula = substring(B.MATRICULA,3,3);
/*
  Juncao de duas tabelas pertencentes a dois schemas diferentes
  */

update vendedores A inner join sucos_vendas.tabela_de_vendedores B on A.Matricula = substring(B.MATRICULA, 3,3)
set A.Ferias = B.DE_FERIAS;

select * from vendedores;

update cliente C inner join vendedores v on C.Bairro = v.Bairro
set C.Volume_compra = C.Volume_compra  * 1.3;

select * from cliente;

select CPF, Volume_compra from cliente where CPF in (select CPF from cliente C inner join vendedores v on C.Bairro = v.Bairro);
/*
Aumentando em 30% o volume de compra de clientes que possuem bairro nos mesmos bairros dos vendedores
*/
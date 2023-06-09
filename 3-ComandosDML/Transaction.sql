start transaction;

select * from vendedores;

insert into vendedores (Matricula, Nome, Bairro, Comissao, Data_admissao, Ferias)
values ('001', 'Jose Guilherme', 'Centro', '0.5', '2023-05-18', 0);

commit;

start transaction;

insert into vendedores (Matricula, Nome, Bairro, Comissao, Data_admissao, Ferias)
values ('002', 'Juliana', 'Centro', '0.05', '2023-05-18', 0);
rollback;

/*
O comando transaction permite que um processo seja revertido ou confirmado efetivamente. Com o commit, confirmas-se a
operacao realizada, com o rollback, desfaz a operacao.
*/

select * from vendedores;
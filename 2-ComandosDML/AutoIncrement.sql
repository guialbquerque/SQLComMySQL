create table Classificados
(id int auto_increment primary key , Nome varchar(50));

insert into Classificados (Nome) values ('Guilherme'), ('Juju'), ('Maria');

select * from Classificados;

alter table Classificados change id Posicao int auto_increment;

insert into Classificados (Nome) values ('Gabi');

delete from Classificados where Nome = 'Juju';

insert into Classificados (Posicao, Nome) values (2, 'Clarita');

delete from Classificados where Nome = 'Gabi';

insert into Classificados (Nome) values ('Rebeca');

/*
Ao utilizar o comando auto_increment, um campo de ordenacao sequencial automatica eh criado.
A ordenacao comeca na posicao 1. Eh possivel apagar uma posicao qualquer, e sobrescrever a posicao
inserindo um novo dado. Ao apagar a ultima posicao, e depois isso inserindo um novo valor, a
ordenacao seguira adicionando na proxima posicao, o auto_increment nao remaneja as posicoes,
simplesmente ordena como se os valores apagados ainda pertencessem a sequencia.
*/

/*
Exercicio pratico
*/

CREATE TABLE TAB_IDENTITY2 (ID INT AUTO_INCREMENT, DESCRITOR VARCHAR(20), PRIMARY KEY(ID));

INSERT INTO TAB_IDENTITY2 (DESCRITOR) VALUES ('CLIENTE1');

INSERT INTO TAB_IDENTITY2 (DESCRITOR) VALUES ('CLIENTE2');

INSERT INTO TAB_IDENTITY2 (DESCRITOR) VALUES ('CLIENTE3');

INSERT INTO TAB_IDENTITY2 (ID, DESCRITOR) VALUES (NULL, 'CLIENTE4');

DELETE FROM TAB_IDENTITY2 WHERE ID = 3;

INSERT INTO TAB_IDENTITY2 (ID, DESCRITOR) VALUES (NULL, 'CLIENTE6');

INSERT INTO TAB_IDENTITY2 (ID, DESCRITOR) VALUES (NULL, 'CLIENTE7');

DELETE FROM TAB_IDENTITY2 WHERE ID = 2;

select * from TAB_IDENTITY2;
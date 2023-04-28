select concat('Hello', ' MYSQL', '!') as Welcome;

select ltrim('                Machine Learning') as ML;

select upper(concat('today',', ', 'we',' ','going', ' ', 'to make a revolution!' )) as revolution;

select rtrim('Deep Learning        ') as dl;

select trim('             artificial intelligence') as AI;

select lcase('THIS IS MY LIFE!') as my;

select substring('Hello, today is a good day, not sunny day but a nice day', 8, 5) as text1;

select length('Hello, today is a good day, not sunny day but a nice day') as comprimento;

select instr('Hello, today is a good day, not sunny day but a nice day', 'a');

select * from tabela_de_clientes;

select NOME, concat(ENDERECO_1,' | ', BAIRRO,' | ', CIDADE,' | ', ESTADO) as 'Endereco Completo' from tabela_de_clientes;
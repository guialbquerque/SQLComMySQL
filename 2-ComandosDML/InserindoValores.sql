insert into produtos (Codigo, Descritor, Sabor, Tamanho, Embalagem, Preco_lista)
values ('1040108', 'Morango', 'Morango com Ninho', '500 ml', 'Garrafa', 10.50),
       ('1050108', 'Chocolate', 'Chocolate com Ninho', '350 ml', 'Lata', 8.55);

select * from produtos;

update produtos set Sabor = 'Morango com ninho' where Descritor = 'Morango';
update produtos set Sabor = 'Chocolate com ninho' where Descritor = 'Chocolate';

insert into cliente (CPF,
                     Nome,
                     Endereco,
                     Bairro,
                     Cidade,
                     Estado,
                     CEP,
                     Data_nascimento,
                     Idade, Sexo,
                     Limite_credito,
                     Volume_compra,
                     Primeira_compra)
values ('1471156710','Érica Carvalho', 'Iriquitia',
        'Jardins', 'São Paulo', 'SP', '80012212',
        '1990-09-01', 27, 'F', 170000, 24500, 0),
    ('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro',
     'Água Santa', 'Rio de Janeiro', 'RJ','22000000', '2000-02-12',
     18, 'M', 100000, 20000, 1),
    ('2600586709', 'César Teixeira', 'Rua Conde de Bonfim', 'Tijuca',
     'Rio de Janeiro', 'RJ', '22020001', '2000-03-12', 18, 'M',
     120000, 22000, 0);

select * from cliente where year(Data_nascimento) = 2000;
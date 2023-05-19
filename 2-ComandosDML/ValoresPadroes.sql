create table MoviesReview
(Posicao int auto_increment, Nome varchar(50), Critica varchar(50) default 'Regular',
 Data_Analise timestamp default current_timestamp(),
 primary key (Posicao));

insert into MoviesReview (Nome) values ('O homem de Aço');

select * from MoviesReview;

insert into moviesreview (Nome, Critica)
values ('Uma mente Brilhante', 'Maravilhoso, muito emocionante!');

insert into MoviesReview (Nome) values ('Liga da Justiça');

/*
Eh possivel especificar valores padroes no momento da criacao da tabela.
*/
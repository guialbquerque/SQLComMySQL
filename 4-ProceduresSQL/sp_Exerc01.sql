DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Exerc01`()
BEGIN
	declare Cliente varchar(10);
    declare Idade int;
    declare DataNascimento date;
    declare Custo float;
    declare frase varchar(200);
    set Cliente = "Joao";
    set Idade = 10;
    set DataNascimento = "2007-01-10";
    set Custo = 10.23;
    set frase = concat(Cliente, " tem " ,  Idade, " anos,  nasceu em ", DataNascimento, " tem R$ ", Custo);
    
    select frase;
END$$
DELIMITER ;

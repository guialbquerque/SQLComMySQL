DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `declarando_variaveis`()
BEGIN
	declare Filme varchar(50);
    declare data_atual date default localtimestamp();
    declare frase varchar(100);
    set Filme = "Gladiador";
    set frase = concat("Noite de chuva, bom pra assistir filme epico, como ", Filme, ". data: ", data_atual);
    select frase;
END$$
DELIMITER ;

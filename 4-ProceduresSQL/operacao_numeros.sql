DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `operacao_numeros`()
BEGIN
	select concat("Operacao: (5+2*10-5+20/2) -->" + 5+2*10-5+20/2) as OperacaoMatematica;
END$$
DELIMITER ;

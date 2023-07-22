DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `os_10_primeiros_clientes`()
BEGIN

	select * from TABELA_DE_CLIENTES LIMIT 10;
END$$
DELIMITER ;

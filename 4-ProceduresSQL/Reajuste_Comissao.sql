DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Reajuste_Comissao`(PercentuaL_Comissao float)
BEGIN
	update TABELA_DE_VENDEDORES set PERCENTUAL_COMISSAO = PercentuaL_Comissao*PERCENTUAL_COMISSAO;
END$$
DELIMITER ;

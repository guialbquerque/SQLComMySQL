DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Quantidade_Notas`(sp_data date)
BEGIN
	declare NUMNOTAS int;
    select count(DATA_VENDA) into NUMNOTAS from NOTAS_FISCAIS
    where DATA_VENDA = sp_data;
    select NUMNOTAS;
END$$
DELIMITER ;

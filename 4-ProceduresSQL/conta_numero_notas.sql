DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `conta_numero_notas`(sp_data date)
BEGIN
	declare NUMNOTAS int;
    declare sp_msg varchar(50);
    select count(DATA_VENDA) into NUMNOTAS from NOTAS_FISCAIS 
    where DATA_VENDA = sp_data;
    if NUMNOTAS > 70 then
		set sp_msg = concat('Muitas notas: ', NUMNOTAS);
	else
		set sp_msg = concat('Poucas notas: ', NUMNOTAS);
	end if;
    select sp_msg;
END$$
DELIMITER ;

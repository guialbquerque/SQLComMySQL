DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usando_while`(sp_valor_inicial int, sp_valor_final int)
BEGIN
	declare sp_contador int;
    set sp_contador = sp_valor_inicial;
    delete from ID_Looping;
    while sp_contador <= sp_valor_final
    do
		insert into ID_Looping (ID) values (sp_contador);
        set sp_contador = sp_contador + 1;
    end while;
    select * from ID_Looping;
END$$
DELIMITER ;

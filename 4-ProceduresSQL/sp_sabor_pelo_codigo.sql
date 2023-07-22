DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_sabor_pelo_codigo`(sp_codigo varchar(30))
BEGIN
	declare sp_sabor varchar(50);
    select SABOR into sp_sabor from TABELA_DE_PRODUTOS
    where CODIGO_DO_PRODUTO = sp_codigo;
    select sp_sabor;
END$$
DELIMITER ;

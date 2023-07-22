DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `tipo_sabor`(sp_codigo varchar(30))
BEGIN
	declare sp_tipo_sabor varchar(30);
    select SABOR into sp_tipo_sabor from TABELA_DE_PRODUTOS 
    where CODIGO_DO_PRODUTO = sp_codigo;
    case sp_tipo_sabor
    when 'Lima/Limão' then 
		select 'Frutas citricas';
	when 'Laranja' then 
		select 'Frutas citricas';
	when 'Melância' then
		select  'Frutas de Baga';
	when 'Uva' then
		select  'Frutas de Baga';
	when 'Cereja/Maça' then
		select 'Frutas de polpa macia';
	when 'Maça' then
		select 'Frutas de polpa macia';
	when 'Cereja' then
		select 'Frutas de polpa macia';
	when 'Manga' then
		select 'Frutas de polpa macia';
	else
		select 'Frutas em geral';
    end case;
END$$
DELIMITER ;

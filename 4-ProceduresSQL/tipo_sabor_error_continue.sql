DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `tipo_sabor_error_continue`(sp_codigo varchar(30))
BEGIN
	declare sp_tipo_sabor varchar(30);
    declare sp_msg_error varchar(50);
    declare continue handler for 1339
		begin
			set sp_msg_error = 'Erro 1339: Final da declaracao Case incompleta.';
        end;
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
    end case;
    select sp_msg_error;
END$$
DELIMITER ;

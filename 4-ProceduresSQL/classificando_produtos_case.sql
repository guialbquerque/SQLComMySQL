DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `classificando_produtos_case`(sp_codigo varchar(30))
BEGIN
	declare sp_classificacao varchar(30);
    declare sp_preco float;
    select PRECO_DE_LISTA into sp_preco from TABELA_DE_PRODUTOS
    where CODIGO_DO_PRODUTO = sp_codigo;
    
    case
    when sp_preco >= 7.0 and sp_preco <= 13.0 then
		set sp_classificacao = 'Produto em conta';
        select sp_classificacao, sp_preco;
	when sp_preco > 13.0 then 
		set sp_classificacao = 'Produto caro.';
        select sp_classificacao, sp_preco;
	when sp_preco < 7.0 then
		set sp_classificacao = 'Produto barato';
        select sp_classificacao, sp_preco;
	end case;
END$$
DELIMITER ;

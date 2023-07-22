DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Comparativo_Vendas`(sp_data1 date, sp_data2 date)
BEGIN
	declare sp_total_venda1 float;
    declare sp_total_venda2 float;
    declare sp_msg varchar(30);
    declare sp_razao float;
    SELECT SUM(B.QUANTIDADE * B.PRECO) into sp_total_venda1 FROM 
	NOTAS_FISCAIS A INNER JOIN ITENS_NOTAS_FISCAIS B
	ON A.NUMERO = B.NUMERO
	WHERE A.DATA_VENDA = sp_data1;
    
	SELECT SUM(B.QUANTIDADE * B.PRECO) into sp_total_venda2 FROM 
	NOTAS_FISCAIS A INNER JOIN ITENS_NOTAS_FISCAIS B
	ON A.NUMERO = B.NUMERO
	WHERE A.DATA_VENDA = sp_data2;
	set sp_razao = (sp_total_venda2 / sp_total_venda1)-1;
    IF sp_razao > 0.1 THEN
		set sp_msg = 'Verde';
        
	ELSEIF sp_razao >= -0.1 and sp_razao <= 0.1 THEN
		set sp_msg = 'Amarelo';
	else
		set sp_msg = 'Vermelho';
	end if;
    
    select sp_total_venda1 as Faturamento1, sp_total_venda2 as Faturamento2, sp_razao as ComparativoVendas, sp_msg as Mensagem;
END$$
DELIMITER ;

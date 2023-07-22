DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `cliente_idade`(sp_cpf varchar(20))
BEGIN
	
	declare sp_mensagem varchar(20);
    declare sp_data date;
    select DATA_DE_NASCIMENTO into sp_data from TABELA_DE_CLIENTES where CPF = sp_cpf;
    if sp_data < '1992-01-01' then
		set sp_mensagem = 'cliente velho';
	elseif '1992-01-01' < sp_data < '1995-01-01' then
		set sp_mensagem = 'cliente adulto';
	else
		set sp_mensagem = 'cliente jovem';
	end if;
    select sp_mensagem;
END$$
DELIMITER ;

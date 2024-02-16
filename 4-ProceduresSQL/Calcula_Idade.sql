CREATE DEFINER=`root`@`localhost` PROCEDURE `Calcula_Idade`()
BEGIN

	UPDATE TABELA_DE_CLIENTES set IDADE =  TIMESTAMPDIFF(YEAR, DATA_DE_NASCIMENTO, CURDATE()) + 5;
    select NOME, IDADE from TABELA_DE_CLIENTES;
END
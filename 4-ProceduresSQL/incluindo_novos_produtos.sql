DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `incluindo_novos_produtos`(sp_codigo_produto varchar(10), sp_nome_produto varchar(50), 
sp_embalagem varchar(20), sp_tamanho varchar(10), sp_sabor varchar (20), sp_preco float)
BEGIN
	declare mensagem varchar(60);
	declare exit handler for 1062
    begin
    set mensagem = 'Erro 1062: Entrada duplicada, produto ja inserido!';
    select mensagem;
    end;
	insert into TABELA_DE_PRODUTOS (CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, EMBALAGEM,
    TAMANHO, SABOR, PRECO_DE_LISTA) values 
    (sp_codigo_produto, sp_nome_produto, sp_embalagem, sp_tamanho, sp_sabor, sp_preco);
    set mensagem = 'Produto incluido com sucesso!';
    select mensagem;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `hello_world`()
BEGIN
	select "Hello World!";
END$$
DELIMITER ;

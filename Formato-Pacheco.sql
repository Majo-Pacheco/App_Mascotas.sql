/* Función a la que le indico el nombre de un medicamento y me devuelve
el nombre de la farmacia que lo vende*/
CREATE DEFINER=`root`@`localhost` FUNCTION `f_encontrar_veterinaria_por_medicamento`(medicamento varchar(50)) RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE veterinaria VARCHAR (50);
    SET veterinaria = (select 
	veterinaria.nombre AS nombre_veterinaria
from veterinaria
join medicamentos ON medicamentos.id_veterinaria = veterinaria.id_veterinaria
where medicamentos.nombre_farmaceutico = medicamento);

RETURN veterinaria;
END
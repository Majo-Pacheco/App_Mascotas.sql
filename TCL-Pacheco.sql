		USE appmascotas;

-- Inicio una transacción
START TRANSACTION;

-- Elimino algunos registros de la tabla animales
DELETE FROM adopcion WHERE id_animal >= 4;

-- Verifico los cambios
SELECT * FROM adopcion;

-- En caso de arrepentirme, vuelvo atrás con la sentencia ROLLBACK
ROLLBACK;

-- En caso de querer guardar los cambios, ejecuto la sentencia COMMIT
COMMIT;
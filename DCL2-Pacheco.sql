USE appmascotas_2;

-- Creo un nuevo usuario con su contraseña
CREATE USER 'nuevoUser2'@'localhost' IDENTIFIED BY 'nuevacontraseña3210';

-- Doy permisos de lectura, inserción y modificación (SELECT, INSERT, UPDATE) en la DB appmascotas de todas sus tablas 
-- para el usuario 'newUser2'@'localhost'
GRANT SELECT, INSERT, UPDATE ON appmascotas_2.* TO 'nuevoUser2'@'localhost';

-- Actualizo los privilegios para que se apliquen los cambios
FLUSH PRIVILEGES;

-- Muestro los permisos para el usuario 'newUser2'@'localhost'
SHOW GRANTS FOR 'nuevoUser2'@'localhost';

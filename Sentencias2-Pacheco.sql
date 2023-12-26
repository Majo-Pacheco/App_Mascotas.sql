USE appmascotas;

-- Creo un nuevo usuario con su contraseña
CREATE USER 'newUser2'@'localhost' IDENTIFIED BY 'nuevacontraseña321';

-- Doy permisos de lectura, inserción y modificación (SELECT, INSERT, UPDATE) en la DB appmascotas de todas sus tablas 
-- para el usuario 'newUser2'@'localhost'
GRANT SELECT, INSERT, UPDATE ON appmascotas.* TO 'newUser2'@'localhost';

-- Actualizo los privilegios para que se apliquen los cambios
FLUSH PRIVILEGES;

-- Muestro los permisos para el usuario 'newUser2'@'localhost'
SHOW GRANTS FOR 'newUser2'@'localhost';



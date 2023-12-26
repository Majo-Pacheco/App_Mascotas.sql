USE appmascotas;

-- Creo un nuevo usuario con su contraseña
CREATE USER 'newUser'@'localhost' IDENTIFIED BY 'nuevousuario1234';

-- Doy permiso de sólo lectura (SELECT) en la DB appmascotas de todas sus tablas para el usuario 'newUser'@'localhost'
GRANT SELECT ON appmascotas.* TO 'newUser'@'localhost';

-- Actualizo los privilegios para que se apliquen los cambios
FLUSH PRIVILEGES;

-- Muestro los permisos para el usuario 'newUser'@'localhost'
SHOW GRANTS FOR 'newUser'@'localhost';



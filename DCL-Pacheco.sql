USE appmascotas_2;

-- Creo un nuevo usuario con su contraseña
CREATE USER 'nuevoUser'@'localhost' IDENTIFIED BY 'nuevousuario12345';

-- Doy permiso de sólo lectura (SELECT) en la DB appmascotas de todas sus tablas para el usuario 'newUser'@'localhost'
GRANT SELECT ON appmascotas_2.* TO 'newUser'@'localhost';

-- Actualizo los privilegios para que se apliquen los cambios
FLUSH PRIVILEGES;

-- Muestro los permisos para el usuario 'newUser'@'localhost'
SHOW GRANTS FOR 'nuevoUser'@'localhost';


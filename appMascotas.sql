CREATE DATABASE appMascotas;
USE appmascotas;

CREATE TABLE IF NOT EXISTS usuario (
id_usuario INT NOT NULL AUTO_INCREMENT,
dni VARCHAR(50) NOT NULL,
full_name VARCHAR(50) NOT NULL,
telefono VARCHAR(50) NOT NULL,
e_mail VARCHAR(50) NOT NULL,
direccion VARCHAR(50) NOT NULL,
provincia VARCHAR(50) NOT NULL,
localidad VARCHAR(50) NOT NULL,
barrio VARCHAR(50) NOT NULL,
nombre_refugio VARCHAR(50) NOT NULL,
es_veterinaria CHAR(1) NOT NULL,
PRIMARY KEY (id_usuario)
);

CREATE TABLE IF NOT EXISTS animales (
id_animal INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50),
tipo_animal VARCHAR(50) NOT NULL,
sexo VARCHAR(50) NOT NULL,
raza VARCHAR(50) NOT NULL,
edad INT,
PRIMARY KEY (id_animal)
);

CREATE TABLE IF NOT EXISTS adopcion (
id_adopcion INT NOT NULL AUTO_INCREMENT,
id_usuario INT NOT NULL,
id_animal INT NOT NULL,
fecha DATE,
PRIMARY KEY (id_adopcion),
FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (id_animal) REFERENCES animales (id_animal) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS donaciones (
id_donacion INT NOT NULL AUTO_INCREMENT,
id_usuario INT NOT NULL,
monto DECIMAL(8,2),
fecha_pago DATE,
medio_pago VARCHAR(50),
PRIMARY KEY (id_donacion),
FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS veterinaria (
id_veterinaria INT NOT NULL AUTO_INCREMENT,
id_usuario INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
provincia VARCHAR(50) NOT NULL,
localidad VARCHAR(50) NOT NULL,
barrio VARCHAR(50) NOT NULL,
direccion VARCHAR(50) NOT NULL,
telefono VARCHAR(50) NOT NULL,
e_mail VARCHAR(50) NOT NULL,
castraciones CHAR(1),
internaciones CHAR(1),
horario_apertura TIME,
horario_cierre TIME,
abierto_24hs CHAR(1),
emergencias CHAR(1),
PRIMARY KEY (id_veterinaria),
FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS productos (
id_producto INT NOT NULL AUTO_INCREMENT,
id_veterinaria INT NOT NULL,
descripcion VARCHAR(50),
precio DECIMAL(8,2),
categoria VARCHAR(50),
PRIMARY KEY (id_producto),
FOREIGN KEY (id_veterinaria) REFERENCES veterinaria (id_veterinaria) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS medicamentos (
id_medicamento INT NOT NULL AUTO_INCREMENT,
id_veterinaria INT NOT NULL,
nombre_comercial VARCHAR(50),
precio DECIMAL(8,2),
nombre_farmaceutico VARCHAR(50),
presentacion VARCHAR(50),
tipo_medicamento VARCHAR(50),
PRIMARY KEY (id_medicamento),
FOREIGN KEY (id_veterinaria) REFERENCES veterinaria (id_veterinaria) ON DELETE RESTRICT ON UPDATE CASCADE
);



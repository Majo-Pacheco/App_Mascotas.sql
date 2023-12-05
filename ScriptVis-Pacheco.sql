USE appmascotas;

/*Creo una vista uniendo datos de las tablas adopciones, animales y usuario para poder visualizar
mejor cada adopcion*/

CREATE VIEW v_adopciones AS
SELECT
    adopcion.id_adopcion,
    adopcion.fecha,
    usuario.full_name AS nombre_usuario,
    usuario.telefono AS telefono_usuario,
    animales.nombre AS nombre_animal,
    animales.tipo_animal,
    animales.sexo,
    animales.raza_o_genero,
    animales.edad
FROM adopcion
    JOIN usuario ON adopcion.id_usuario = usuario.id_usuario
    JOIN animales ON adopcion.id_animal = animales.id_animal;
    
    SELECT * FROM v_adopciones;
    
    /*Creo una vista uniendo datos de las tablas usuario y donaciones para visualizar cada
    donacion en concreto con los datos mas importantes del usuario*/
    
    CREATE VIEW v_donaciones AS
    SELECT
		d.id_donacion,
        d.medio_pago,
        d.monto,
        d.fecha_pago,
        u.full_name AS nombre_usuario,
        u.dni AS dni_usuario,
        u.telefono AS telefono_usuario,
        u.nombre_refugio
	FROM donaciones d
	JOIN usuario u ON d.id_usuario = u.id_usuario;
    
     SELECT * FROM v_donaciones;
     
     /*Creo una vista uniendo datos de las tablas medicamentos y veterinaria para mostrar
     los fármacos que posee cada veterinaria y sus respectivos datos*/
     
CREATE VIEW v_medicamentos AS
SELECT
	medicamentos.id_medicamento,
    medicamentos.nombre_comercial,
    medicamentos.nombre_farmaceutico,
    medicamentos.presentacion,
    medicamentos.precio,
    veterinaria.nombre AS nombre_veterinaria,
    veterinaria.telefono AS telefono_veterinaria,
	veterinaria.e_mail AS e_mail_veterinaria
FROM medicamentos
JOIN veterinaria ON medicamentos.id_veterinaria = veterinaria.id_veterinaria;

 SELECT * FROM v_medicamentos;
 
 /*Creo una vista uniendo las tablas productos y veterinaria para mostrar los productos e info
 de cada uno y qué veterinarias los tienen disponibles*/    

 CREATE VIEW v_productos AS 
SELECT
	p.id_producto,
    p.descripcion AS nombre_producto,
    p.categoria,
    p.precio,
    v.nombre AS nombre_veterinaria,
    v.telefono AS telefono_veterinaria,
	v.e_mail AS e_mail_veterinaria
FROM productos p
JOIN veterinaria v ON p.id_veterinaria = v.id_veterinaria;
 
  SELECT * FROM v_productos; 
  

/* Creo una vista para registrar las direcciones de los usuarios que tengan veterinarias registradas
en la app (donde figure la direccion particular del usuario y la direccion donde tiene registrada 
su veterinaria)
*/

CREATE VIEW v_direcciones AS
SELECT
	usuario.id_usuario,
    usuario.direccion AS direccion_usuario,
    usuario.provincia AS provincia_usuario,
    usuario.localidad localidad_usuario,
    usuario.barrio AS barrio_usuario,
    veterinaria.id_veterinaria,
    veterinaria.direccion AS direccion_veterinaria,
    veterinaria.provincia AS provincia_veterinaria,
    veterinaria.localidad AS localidad_veterinaria,
    veterinaria.barrio AS barrio_veterinaria
FROM usuario
JOIN veterinaria ON usuario.id_usuario = veterinaria.id_usuario;
  
   SELECT * FROM v_direcciones;
   
   
 
 
    

    
    
     
     
        
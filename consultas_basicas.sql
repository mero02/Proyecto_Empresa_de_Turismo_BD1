-- (Mauro) Consultas desde lo más sencillo a lo más complejo (Tipo Tutorial)

--Esta consulta trae todos los datos de los turistas (con * indicamos que traiga todo)
SELECT * FROM turista;

--Esta consulta trae solo nombre y apellido de los turistas y lo va a poner entre paréntesis en una misma tabla (con FROM indicamos las tablas de interés)
SELECT (nombre, apellido) FROM turista;

--Esta consulta trae solo nombre y apellido de los turistas y lo va a poner en tablas separadas
SELECT nombre, apellido FROM turista;

--Esta consulta trae solo nombre y apellido de los turistas y cambia el nombre de las tablas (con AS después del atributo, podemos cambiarle el nombre a las tablas temporalmente)
SELECT nombre AS nombre_turista, apellido AS apellido_turista FROM turista;

--Esta consulta va a traerme a todos los turistas que sean de Brasil (con WHERE indicamos sobre qué columna vamos a aplicar una condición)
SELECT * FROM turista WHERE pais = 'Brasil';

--Esta consulta va a traerme a todos los turistas que No sean de Brasil (el uso de operadores condicionales es bastante similar a lo ya conocido)
SELECT * FROM turista WHERE pais != 'Brasil';

--Esta consulta va a traerme a todos los turistas que No sean de Brasil y No se llamen Ana (podemos agregarles mas condiciones con el operador AND y OR y negar una condición anteponiendo un NOT)
SELECT * FROM turista WHERE pais != 'Brasil' AND NOT nombre = 'Ana';

--Esta consulta cambia posiciones de columnas y agregó temporalmente la columna iva, la cual indique entre paréntesis que es lo que va a contener la columna
SELECT fecha_realizacion, tipopago, costo, (costo*0.21) AS iva FROM factura; 

--Esta consulta trae todos los turistas y los ordena de manera descendente por el nombre (ORDER BY es el comando para ordenar de alguna manera nuestras tablas, con ASC indicamos que sea de manera ascendente y con DESC que sea descendente). 
SELECT * FROM turista ORDER BY nombre DESC;

--Después del ORDER BY podemos poner varias columnas (en el ejemplo va a ordenar primero por apellido (ASC) y después por país (DESC)).
SELECT * FROM turista ORDER BY apellido ASC, pais DESC;

--La consulta selecciona los campos "nombre", "apellido" y "pais" de la tabla "turista", y muestra el campo "pais" con el nombre "pais_de_origen" en los resultados de la consulta. El alias "t" se puede utilizar para referirse a la tabla "turista" de manera abreviada en la consulta.
SELECT t.nombre, t.apellido, t.pais AS pais_de_origen
FROM turista t;

--La consulta me va a traer los nombre de gestores y los idiomas que hablan, junto al nivel que cada uno posee con cada idioma. (JOIN es la unión o reunión de dos tablas mediante la conexión de algún campo que compartan, en este caso los id)
SELECT g.nombre, i.nombre, i.nivel --selecciona los campos "nombre" de la tabla Gestor, y "nombre" y "nivel" de la tabla Idioma.
FROM Gestor g --Indica que la consulta se hará sobre la tabla Gestor y llama “g” como alias.
JOIN IdiomaGestor ig ON g.idGestor = ig.idGestor --Realiza una unión entre la tabla Gestor y la tabla IdiomaGestor (alias "ig") utilizando la condición de igualdad entre los campos "idGestor" de ambas tablas.
JOIN Idioma i ON ig.idIdioma = i.idIdioma; --Realiza una unión entre la tabla IdiomaGestor y la tabla Idioma (alias “i”) utilizando la condición de igualdad entre los campos “idIdioma” de ambas tablas.

SELECT AVG(costo) FROM paquete;
SELECT MAX(costo) FROM paquete;
SELECT MIN(costo) FROM paquete;

SELECT descripcion, MIN(costo) FROM paquete
GROUP BY descripcion;

SELECT nombre, tipo FROM empleado
WHERE tipo = 'Coordinador'
GROUP BY nombre, tipo
HAVING nombre LIKE '%L%';

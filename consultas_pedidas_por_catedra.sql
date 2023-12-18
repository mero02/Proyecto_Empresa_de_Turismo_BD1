--1) Listar las agencias que tienen gestores que hablan "ingles" o "Frances" de "Rawson" cuyo propietario 
--tenga apellido que comienza con "G"

SELECT a.idAgencia, a.nombre AS "Agencia",a.calle AS "Calle", a.direccion_nro AS "Numero", 
l.nombreLocalidad AS "Nombre Localidad", g.Apellido AS "Gestor", p.Apellido AS "Propietario"
FROM Agencia a 
JOIN Gestor g ON a.idGestor = g.idGestor
JOIN IdiomaGestor ig ON g.idGestor = ig.idGestor
JOIN Idioma i ON ig.idIdioma = i.idIdioma
JOIN Localidad l ON a.idLocalidad = l.idLocalidad
JOIN Propietario p ON a.idPropietario = p.idPropietario
WHERE l.idLocalidad = 9103
AND p.apellido LIKE 'G%'
AND i.nombre IN ('Ingles', 'Frances', 'Español'); --Agregue español para que muestre uno al menos

--2)Listar los transportes que tuvieron reparaciones y fueron conducidos por chóferes cuyos apellido comienzan con “F”
select t.tipo, t.capacidad, t.estado 
from transporte t 
join reparacion r on t.idtransporte = r.idtransporte 
join conduce c on c.idtransporte = t.idtransporte
join empleado e on e.nrolegajo = c.nrolegajo
where e.tipo = 'Chofer'
and e.apellido like 'F%';

--3)listar paquetes cuyas actividades tengan costos entre $3000 y $8000 y en que agencia se vendieron

select 
	p.descripcion as "Nombre Paquete",a.costo as "Costo Actividad",age.nombre as "Nombre Agencia"
from paquete p
join ticket t on t.idpaquete = p.idpaquete
join detalleticket dt on dt.idticket = t.idticket
join actividad a on a.idactividad= dt.idactividad
join gestor g on g.idgestor = p.idgestor
join agencia age on age.idgestor = g.idgestor
join detallefactura df on df.idpaquete = p.idpaquete
join factura f on f.idfactura = df.idfactura
where (a.costo >= 3000 and a.costo<= 8000) 

--listar cantidad de paquetes turistas que se facturaron en junio y julio cuyo importe está entre 10.000 y 15.000
select count(*) as cantidad_paquetes from paquete p
join detallefactura df on df.idpaquete = p.idpaquete
join factura f on f.idfactura = df.idfactura
where extract (month from f.fecha_realizacion) in (6,7) and
extract (year from f.fecha_realizacion) = 2023 and
f.costo between 10000 and 15000;


Select 
t.idturista as  "Turistas",
t.nombre as "Nombre turista",
t.apellido as "Apellido turista",
t.pais as "Pais turista",
a.nombre as "Nombre actividad",
a.descripcion as "Descripcion"
From turista t
join factura f on t.idturista = f.idturista
join detallefactura df on f.idfactura = df.idfactura
join paquete p on df.idpaquete = p.idpaquete
join ticket tic on p.idpaquete = tic.idpaquete
join detalleticket dt on tic.idticket = dt.idticket
join actividad a on dt.idactividad = a.idactividad
join restauranteactividad ra on a.idactividad = ra.idactividad
join restaurante r on ra.idrestaurante = r.idrestaurante
where a.nombre = 'RESTAURANTE' 
and t.pais in ('Brasil','Perú');
--Localidad  (@idLocalidad, nombreLocalidad)
INSERT INTO localidad (idLocalidad, nombreLocalidad) VALUES
(9033,'Alto Río Senguer'),
(9201,'Corcovado'),
(9111,'Camarones'),
(9217,'Cholila'),
(9000,'Comodoro Rivadavia'),
(9107,'Dolavon'),
(9210,'El Maitén'),
(9211,'Epuyén'),
(9200,'Esquel'),
(9105,'Gaiman'),
(9223,'Gobernador Costa'),
(9220,'Jose de San Martin'),
(8431,'Lago Puelo'),
(9120,'Puerto Madryn'),
(9121,'Puerto Pirámides'),
(9225,'Rio Pico'),
(9103,'Rawson'),
(9030,'Río Mayo'),
(9001,'Rada Tilly'),
(9020,'Sarmiento'),
(9100,'Trelew'),
(9203,'Trevelin'),
(9113,'Villa Ameghino');


--Propietario (@IdPropietario, nombre, apellido, teléfono)
ALTER SEQUENCE propietario_idpropietario_seq RESTART WITH 1;
INSERT INTO propietario (nombre , apellido , telefono) VALUES
('marcela' , 'garcia' , 2804132456),
('Juan', 'Pérez', 2804001234),
('Ana', 'Martínez', 2804015678),
('Carlos', 'Gómez', 2804028901),
('Laura', 'Rodríguez', 2804032345),
('Diego', 'Fernández', 2804046789),
('María', 'Pérez', 2804050123),
('Luis', 'González', 2804063456),
('Silvia', 'Díaz', 2804077890),
('Pablo', 'Hernández', 2804081234),
('Lucía', 'Torres', 2804094567),
('Carmen', 'Sánchez', 2804108901),
('Alejandro', 'Vega', 2804112345),
('Isabel', 'Ramírez', 2804125678),
('Martín', 'Muñoz', 2804139012),
('Cecilia', 'Ruiz', 2804142345),
('Ricardo', 'García', 2804155678),
('Marta', 'Castillo', 2804169012),
('Fernando', 'Vargas', 2804172345),
('Sofía', 'Castro', 2804185678);

--Gestor(@idGestor, nombre, apellido, direccion_nro, piso, calle, dpto, telefono, fecha_inicio, fecha_fin)
ALTER SEQUENCE gestor_idgestor_seq RESTART WITH 1;
INSERT INTO Gestor (nombre, apellido, direccion_nro, piso, calle, dpto, telefono, fecha_inicio) VALUES
('Juan', 'Gomez', '1234', '2', 'Calle Principal', 'A', '2804346587', '2022-01-01'),
('Macerlo', 'Perez', '1258', '0', 'Alem', 'ND', '280400459323','2022-06-23'),
('Augusto','Marolio', '2543', '1', 'Entre Joseph y Moreno', 'B','2804549783','2020-04-01'),
('Javier','Mileinians', '2008', '4', 'Entre Pedro Gomes y Sotello', 'A', '2804567980','2019-07-08'),
('Leonardo','Escaloni', '6007', '1','Maracana', 'C','2804345261','2022-01-20');

--Título(@idTitulo, nombre)
ALTER SEQUENCE titulo_idtitulo_seq RESTART WITH 1;
INSERT INTO titulo (nombre) VALUES
('Turismo'),
('Historia');


--Idioma (@idIdioma, nombre, nivel)
ALTER SEQUENCE idioma_ididioma_seq RESTART WITH 1;
INSERT INTO idioma (nombre, nivel) VALUES
('Español','Basico'),
('Español', 'Intermedio'),
('Español','Avanzado'),
('Ingles', 'Basico'),
('Ingles', 'Intermedio'),
('Ingles','Avanzado'),
('Portugues', 'Basico'),
('Portugues', 'Intermedio'),
('Portugues', 'Avanzado'),
('Aleman', 'Basico'),
('Aleman', 'Intermedio'),
('Aleman', 'Avanzado'),
('Chino Mandarin', 'Basico'),
('Chino Mandarin', 'Intermedio'),
('Chino Mandarin', 'Avanzado'),
('Ruso', 'Basico'),
('Ruso', 'Intermedio'),
('Ruso', 'Avanzado'),
('Arabe', 'Basico'),
('Arabe', 'Intermedio'),
('Arabe', 'Avanzado'),
('Frances', 'Basico'),
('Frances', 'Intermedio'),
('Frances', 'Avanzado'),
('Japones', 'Basico'),
('Japones', 'Intermedio'),
('Japones', 'Avanzado'),
('Coreano', 'Basico'),
('Coreano', 'Intermedio'),
('Coreano', 'Avanzado');

--Licencia (@idLicencia, descripcion, vencimiento)
ALTER SEQUENCE licencia_idlicencia_seq RESTART WITH 1;
INSERT INTO licencia (descripcion, vencimiento) VALUES
('Clase Clase Nautica', '2023-12-01'),
('Clase D3', '2024-03-01'),
('Clase D2', '2024-05-01'),
('Clase B2', '2023-04-23');

--Transporte (@idTransporte, tipoTransporte, capacidad, estado)
ALTER SEQUENCE transporte_idtransporte_seq RESTART WITH 1;
INSERT INTO transporte (tipo, capacidad, estado) VALUES
('colectivos', 50, 'activo'),
('colectivos', 80, 'reparacion'),
('colectivos', 40, 'activo'),
('combis', 20, 'activo'),
('combis', 10, 'reparacion'),
('lanchas', 10, 'reparacion'),
('lanchas', 20, 'activo');

--Repuesto (@idRepuesto, descripcion, importe)
-- Datos colectivos
INSERT INTO repuesto (descripcion, importe) VALUES
('Parabrisas para colectivo', 12000),
('Neumáticos para colectivo X4', 425000),
('Asiento para colectivo', 9500),
('Faros delanteros para colectivo', 46760),
('Kit de embrague para colectivo', 140000),
('Espejos retrovisores para colectivo', 5000);


-- Datos combis
INSERT INTO repuesto (descripcion, importe) VALUES
('Espejos laterales para combi', 28500),
('Filtros de aire para combi', 17500),
('Amortiguadores para combi', 73500),
('Tapicería interior para combi', 85600),
('Batería para combi', 89091),
('Aceite para motor para combi', 22483);


-- Datos lanchas
INSERT INTO repuesto (descripcion, importe) VALUES
('Hélice para lancha', 270000),
('Batería marina para lancha', 120000),
('Sonda GPS para lancha', 225000),
('Chalecos salvavidas para lancha', 18900),
('Ancla para lancha', 25990),
('Luces de navegación para lancha', 26150);

--Equipamiento (@idEquipamiento, descripcion)
ALTER SEQUENCE equipamiento_idequipamiento_seq RESTART WITH 1;
INSERT INTO equipamiento (descripcion) VALUES
('Tienda de campaña'),
('Linterna'),
('Mochila'),
('Colchón inflable'),
('Silla plegable'),
('Hornillo de camping'),
('Utensilios de cocina'),
('Cámara fotográfica'),
('Saco de dormir'),
('Brújula'),
('GPS portátil'),
('Nevera portátil'),
('Mesa plegable'),
('Kit de primeros auxilios'),
('Binoculares'),
('Repelente de insectos'),
('Linterna frontal'),
('Mapa topográfico'),
('Cantimplora'),
('Set de cubiertos para camping'),
('Cocina portátil de gas'),
('Tienda de campaña para dos personas'),
('Mochila de excursionismo'),
('Colchón inflable para camping'),
('Silla plegable ultraligera'),
('Hornillo de camping de titanio'),
('Utensilios de cocina de acero inoxidable'),
('Cámara fotográfica resistente al agua'),
('Linterna recargable USB'),
('Bastones de senderismo'),
('Mosquitera para tienda de campaña'),
('Kit de reparación para tienda de campaña'),
('Botiquín de primeros auxilios avanzado'),
('Calentador portátil para camping'),
('Silla de camping con reposabrazos'),
('Kit de cocina compacto para camping'),
('Telescopio portátil para observación de estrellas');


--Taller (@cuit, nombre)
INSERT INTO taller (cuit, nombre) VALUES
(30715369, 'TALLER MECANICO DEL OESTE S.R.L.'),
(30535073, 'Taller Mecanico Giagante S.R.L.'),
(30657849, 'Taller Mecánico Los Pollos Lubricados');

--Restaurante (@idRestaurante, nombre, tipo)
ALTER SEQUENCE restaurante_idrestaurante_seq RESTART WITH 1;
INSERT INTO restaurante (nombre, tipo) VALUES
('El Sabor del Mar', 'Cena'),
('La Parrilla Criolla', 'Almuerzo'),
('Comedor Gourmet', 'Cena'),
('Bar Cafetería', 'Desayuno'),
('Sushi Express', 'Cena'),
('Café del Amanecer', 'Desayuno'),
('Parrilla del Pueblo', 'Almuerzo'),
('Rincón del Sabor', 'Cena'),
('Cafetería Elegante', 'Desayuno'),
('Sushi Fusion', 'Cena'),
('Brasería Tradicional', 'Almuerzo'),
('Restaurante Mediterráneo', 'Cena'),
('Deli Café', 'Desayuno'),
('Asador del Valle', 'Almuerzo'),
('Sabor Oriental', 'Cena'),
('Panadería y Pastelería', 'Desayuno'),
('Cocina del Mar', 'Cena'),
('Comedor Familiar', 'Almuerzo'),
('Café y Tapas', 'Desayuno'),
('Pizzería Italiana', 'Cena'),
('Buffet Internacional', 'Almuerzo'),
('Té y Repostería', 'Desayuno'),
('Cocina Mexicana', 'Cena'),
('Grill Argentino', 'Almuerzo'),
('Bistró Parisino', 'Cena');


--Turista (@IdTurista, nombre, apellido, direccion_nro, piso, calle, dpto, pais)
ALTER SEQUENCE turista_idturista_seq RESTART WITH 1;
INSERT INTO turista (nombre, apellido, direccion_nro, piso, calle, dpto, pais) VALUES
('Ana', 'Martínez', 123, 3, 'Avenida Principal', 'Dpto B', 'Argentina'),
('Carlos', 'López', 456, 1, 'Calle Secundaria', 'Dpto C', 'Francia'),
('Luisa', 'García', 789, NULL, 'Calle Central', NULL, 'España'),
('Ricardo', 'Rodríguez', 1011, 2, 'Avenida Principal', 'Dpto A', 'Portugal'),
('Elena', 'Fernández', 1213, 4, 'Calle Central', 'Dpto D', 'Chile'),
('María', 'Gómez', 1415, 2, 'Avenida Secundaria', 'Dpto B', 'Perú'),
('Juan', 'Díaz', 1617, NULL, 'Calle Principal', NULL, 'Colombia'),
('Laura', 'Herrera', 1819, 3, 'Avenida Central', 'Dpto A', 'México'),
('Pedro', 'Alvarez', 2021, 1, 'Calle Secundaria', 'Dpto C', 'Ecuador'),
('Isabel', 'Molina', 2223, NULL, 'Avenida Principal', NULL, 'Venezuela'),
('Gabriel', 'Torres', 2425, 4, 'Calle Central', 'Dpto D', 'Bolivia'),
('Carmen', 'Pérez', 2627, 2, 'Avenida Secundaria', 'Dpto B', 'Paraguay'),
('Santiago', 'Rojas', 2829, NULL, 'Calle Principal', NULL, 'Inglaterra'),
('Valentina', 'Gutierrez', 3031, 3, 'Avenida Central', 'Dpto A', 'Colombia'),
('Fernando', 'Silva', 3233, 1, 'Calle Secundaria', 'Dpto C', 'México'),
('Camila', 'Ortega', 3435, 2, 'Avenida Principal', 'Dpto B', 'Argentina'),
('Gonzalo', 'Martínez', 3637, NULL, 'Calle Secundaria', NULL, 'Brasil'),
('Natalia', 'Gómez', 3839, 3, 'Calle Central', 'Dpto A', 'España'),
('Rafael', 'López', 4041, 1, 'Avenida Principal', 'Dpto C', 'Uruguay'),
('Vanessa', 'Fernández', 4243, 4, 'Calle Central', 'Dpto D', 'Chile'),
('Jorge', 'Díaz', 4445, 2, 'Avenida Secundaria', 'Dpto B', 'Perú'),
('Diana', 'García', 4647, NULL, 'Calle Principal', NULL, 'Colombia'),
('Iván', 'Herrera', 4849, 3, 'Calle Central', 'Dpto A', 'México'),
('Verónica', 'Alvarez', 5051, 1, 'Avenida Secundaria', 'Dpto C', 'Ecuador'),
('Héctor', 'Molina', 5253, NULL, 'Calle Principal', NULL, 'Italia'),
('Sofía', 'Ramírez', 5455, 2, 'Avenida Central', 'Dpto B', 'Argentina'),
('Lorenzo', 'Gutiérrez', 5657, NULL, 'Calle Principal', NULL, 'Brasil'),
('Marina', 'Suárez', 5859, 3, 'Avenida Secundaria', 'Dpto A', 'España'),
('Andrés', 'Gómez', 6061, 1, 'Calle Central', 'Dpto C', 'Uruguay'),
('Carolina', 'Fernández', 6263, 4, 'Avenida Principal', 'Dpto D', 'Francia'),
('Martín', 'Díaz', 6465, 2, 'Calle Principal', 'Dpto B', 'Perú'),
('Valentina', 'García', 6667, NULL, 'Avenida Central', NULL, 'Colombia'),
('Lucas', 'Herrera', 6869, 3, 'Avenida Principal', 'Dpto A', 'México'),
('Renata', 'Alvarez', 7071, 1, 'Calle Secundaria', 'Dpto C', 'Ecuador'),
('Juan', 'Molina', 7273, NULL, 'Calle Principal', NULL, 'Venezuela');

-- Agencia (@idAgencia, nombre, direccion_nro, calle, idGestor, idLocalidad, idPropietario)
ALTER SEQUENCE agencia_idagencia_seq RESTART WITH 1;
INSERT INTO agencia (nombre, direccion_nro, calle, idGestor, idLocalidad, idPropietario) VALUES
('Agencia Aventura', 101, 'Avenida Principal', 1, 9120, 1),
('Viajes Exóticos', 202, 'Calle Secundaria', 2, 9103, 2),
('Turismo Rápido', 303, 'Calle Central', 3, 9103, 3),
('La Travesia S.A.', 404, 'Avenida Principal', 4, 9103, 4),
('Aventuras Extremas', 505, 'Calle Secundaria', 5, 9200, 5),
('Turismo Relax', 606, 'Calle Central', 5, 9201, 5);

-- AgenciaTE (telefono, idAgencia)
ALTER SEQUENCE agenciate_idagenciate_seq RESTART WITH 1;
INSERT INTO agenciate (telefono, idAgencia) VALUES
('2804001001', 1),
('2804002002', 2),
('2804003003', 3),
('2804004004', 4),
('2804005005', 5),
('2804006006', 6);

-- Empleado (nombre, apellido, direccion_nro, piso, calle, telefono, tipo, idLicencia)
ALTER SEQUENCE empleado_nrolegajo_seq RESTART WITH 1;
INSERT INTO empleado (nombre, apellido, direccion_nro, calle, telefono, tipo, idLicencia) VALUES
-- AGENCIA 1
('Martín', 'Fernández', 456, 'Avenida Central', 154568432, 'Chofer', 1),
('Alicia', 'González', 7071, 'Avenida Principal', 154794444, 'Chofer', 3),
('Lucía', 'Pérez', 123, 'Calle Principal', 154456873, 'Coordinador', 4),
('Sebastián', 'Torres', 1415, 'Avenida Secundaria', 154903333, 'Coordinador', 4),


-- AGENCIA 2
('Juan', 'Muñoz', 2223, 'Avenida Principal', 154347777, 'Chofer', 2),
('Ramón', 'Fernández', 7677, 'Calle Principal', 154127777, 'Chofer', 3),
('María', 'Hernández', 2021, 'Calle Secundaria', 154236666, 'Coordinador', 4),
('Diego', 'Pérez', 2627, 'Avenida Secundaria', 154569999, 'Coordinador', 4),
-- AGENCIA 3
('Javier', 'Gómez', 1011, 'Avenida Principal', 154781111, 'Chofer', 2),
('Alberto', 'Muñoz', 8283, 'Avenida Principal', 154461111, 'Chofer', 3),
('Cecilia', 'Ruiz', 3233, 'Calle Secundaria', 154893333, 'Coordinador', 4),
('Fernando', 'Vargas', 3839, 'Avenida Secundaria', 154126666, 'Coordinador', 2),
('Ale', 'Ruiz', 9899, 'Avenida Secundaria', 154349999, 'Coordinador', 4),
-- AGENCIA 4
('Sofía', 'Martínez', 2829, 'Calle Principal', 154671111, 'Chofer', 1),
('Ismael', 'Gómez', 100101, 'Calle Principal', 154461111, 'Chofer', 3),
('Luis', 'González', 4445, 'Calle Secundaria', 154459999, 'Coordinador', 4),
('Valeria', 'Torres', 5051, 'Avenida Secundaria', 154783333, 'Coordinador', 4),
('Isabella', 'García', 9293, 'Calle Secundaria', 154016666, 'Coordinador', 4),
-- AGENCIA 5
('Verónica', 'Pérez', 5859, 'Avenida Principal', 154127777, 'Chofer', 3),
('Gonzalo', 'Sánchez', 5253, 'Calle Principal', 154894444, 'Chofer', 3),
('Iván', 'García', 5657, 'Calle Secundaria', 154016666, 'Coordinador', 4),
('Claudia', 'Díaz', 6263, 'Avenida Secundaria', 154349999, 'Coordinador', 4),
('Raúl', 'Gómez', 8687, 'Avenida Secundaria', 154683333, 'Coordinador', 4),
-- AGENCIA 6
('Francisco', 'Ruiz', 6465, 'Calle Principal', 154461111, 'Chofer', 1),
('Paula', 'López', 8889, 'Calle Principal', 154794444, 'Chofer', 3),
('Oscar', 'Ramírez', 6869, 'Calle Secundaria', 154683333, 'Coordinador', 4),
('Liliana', 'Martínez', 7475, 'Avenida Secundaria', 154016666, 'Coordinador', 4),
('Eva', 'Pérez', 8081, 'Calle Secundaria', 154349999, 'Coordinador', 2);


--trabajaEn (@IdAgencia, @nroLegajo, @fecha_inicio, fecha_fin)
INSERT INTO trabajaEn (fechaInicio, idAgencia, nroLegajo) VALUES
       --AGENCIA 1
('2019-01-15', 1, 1),
('2020-02-20', 1, 2),
('2021-03-30', 1, 3),
('2022-04-10', 1, 4),
       --AGENCIA 2
('2023-01-15', 2, 5),
('2010-02-20', 2, 6),
('2011-03-25', 2, 7),
('2012-04-30', 2, 8),
       --AGENCIA 3
('2013-01-05', 3, 9),
('2014-02-10', 3, 10),
('2015-03-15', 3, 11),
('2016-04-20', 3, 12),
('2017-01-25', 3, 13),
       --AGENCIA 4
('2018-02-28', 4, 14),
('2019-03-02', 4, 15),
('2020-04-04', 4, 16),
('2021-01-06', 4, 17),
('2022-02-08', 4, 18),
       --AGENCIA 5
('2023-03-10', 5, 19),
('2023-04-12', 5, 20),
('2023-01-14', 5, 21),
('2022-02-16', 5, 22),
('2023-03-18', 5, 23),
       --AGENCIA 6
('2015-04-20', 6, 24),
('2016-01-22', 6, 25),
('2017-02-24', 6, 26),
('2018-03-26', 6, 27),
('2019-04-28', 6, 28);

-- títuloGestor (@idTitulo, @idGestor)
INSERT INTO tituloGestor (idTitulo, idGestor) VALUES
((SELECT idTitulo FROM titulo WHERE nombre = 'Turismo'), 1),
((SELECT idTitulo FROM titulo WHERE nombre = 'Historia'), 1),
((SELECT idTitulo FROM titulo WHERE nombre = 'Turismo'), 2),
((SELECT idTitulo FROM titulo WHERE nombre = 'Historia'), 2),
((SELECT idTitulo FROM titulo WHERE nombre = 'Turismo'), 3),
((SELECT idTitulo FROM titulo WHERE nombre = 'Historia'), 3),
((SELECT idTitulo FROM titulo WHERE nombre = 'Turismo'), 4),
((SELECT idTitulo FROM titulo WHERE nombre = 'Historia'), 4),
((SELECT idTitulo FROM titulo WHERE nombre = 'Turismo'), 5),
((SELECT idTitulo FROM titulo WHERE nombre = 'Historia'), 5);

-- idiomaGestor (@idIdioma, @idGestor)
INSERT INTO idiomaGestor (idIdioma, idGestor) VALUES
-- Gestor 1
((SELECT idIdioma FROM idioma WHERE nombre = 'Español' AND nivel = 'Avanzado'), 1),
((SELECT idIdioma FROM idioma WHERE nombre = 'Ingles' AND nivel = 'Avanzado'), 1),
((SELECT idIdioma FROM idioma WHERE nombre = 'Portugues' AND nivel = 'Intermedio'), 1),
((SELECT idIdioma FROM idioma WHERE nombre = 'Japones' AND nivel = 'Basico'), 1),
-- Gestor 2
((SELECT idIdioma FROM idioma WHERE nombre = 'Español' AND nivel = 'Avanzado'), 2),
((SELECT idIdioma FROM idioma WHERE nombre = 'Frances' AND nivel = 'Basico'), 2),
((SELECT idIdioma FROM idioma WHERE nombre = 'Aleman' AND nivel = 'Avanzado'), 2),
-- Gestor 3
((SELECT idIdioma FROM idioma WHERE nombre = 'Español' AND nivel = 'Avanzado'), 3),
((SELECT idIdioma FROM idioma WHERE nombre = 'Chino Mandarin' AND nivel = 'Intermedio'), 3),
((SELECT idIdioma FROM idioma WHERE nombre = 'Ruso' AND nivel = 'Avanzado'), 3),
-- Gestor 4
((SELECT idIdioma FROM idioma WHERE nombre = 'Español' AND nivel = 'Avanzado'), 4),
((SELECT idIdioma FROM idioma WHERE nombre = 'Japones' AND nivel = 'Intermedio'), 4),
((SELECT idIdioma FROM idioma WHERE nombre = 'Arabe' AND nivel = 'Basico'), 4),
-- Gestor 5
((SELECT idIdioma FROM idioma WHERE nombre = 'Español' AND nivel = 'Avanzado'), 5),
((SELECT idIdioma FROM idioma WHERE nombre = 'Ingles' AND nivel = 'Avanzado'), 5),
((SELECT idIdioma FROM idioma WHERE nombre = 'Ruso' AND nivel = 'Intermedio'), 5);



-- conduce (@fecha_desde, @nroLegajo, @idTransporte)
INSERT INTO conduce (fecha_desde, nroLegajo, idTransporte) VALUES
       -- CHOFER AGENCIA 1
('2020-01-01', 1, 7),
('2019-01-01', 2, 1),
       -- CHOFER AGENCIA 2
('2020-02-11', 5, 4),
('2021-03-12', 6, 3),
       -- CHOFER AGENCIA 3
('2022-04-01', 9, 7),
('2023-05-11', 10, 4),
       -- CHOFER AGENCIA 4
('2021-02-11', 14, 7),
('2016-06-12', 15, 5),
       -- CHOFER AGENCIA 5
('2017-07-01', 19, 2),
('2018-08-11', 20, 5),
-- CHOFER AGENCIA 6
('2022-03-12', 24, 7),
('2019-09-12', 25, 3);

-- Actividad (nombre, descripcion, costo, nroLegajo)
ALTER SEQUENCE actividad_idactividad_seq RESTART WITH 1;
INSERT INTO actividad (nombre, descripcion, costo, nroLegajo) VALUES
       -- EMPLEADO AGENCIA 1 (LANCHA)
('PASEO EN LANCHA', 'Experimenta la emoción de la aventura en lancha', 7250, 1),
('CLASES DE BUCEO EN AGUAS CRISTALINAS', 'Aprende a bucear y descubre la vida marina submarina', 7250, 4),
('EXCURSIÓN POR LA CIUDAD', 'Disfruta la vista de la ciudad', 12500, 2),
('EXCURSIÓN POR LA CIUDAD', 'Disfruta la vista de la ciudad', 12500, 3),


       -- EMPLEADO AGENCIA 2
('RECORRIDOS GASTRONÓMICOS', 'Pruebe la deliciosa comida local', 12250, 5),
('RECORRIDOS GASTRONÓMICOS', 'Pruebe la deliciosa comida local', 12250, 7),
('TOUR FOTOGRÁFICO', 'Captura momentos inolvidables en un recorrido fotográfico', 10000, 6),
('TOUR FOTOGRÁFICO', 'Captura momentos inolvidables en un recorrido fotográfico', 5000, 8),


       -- EMPLEADO AGENCIA 3
('TOUR POR MUSEOS', 'Exploración cultural en museos locales', 4000, 9),
('TOUR ARQUITECTÓNICO', 'Descubre la arquitectura única de la ciudad', 5000, 10),
('RECORRIDO DE COMPRAS', 'Explora las tiendas locales y descubre artesanías', 7000, 11),
('VISITA DE VIÑEDOS', 'Degusta vinos locales en una experiencia vinícola', 6500, 12),
('EXCURSIÓN POR PARQUES LOCALES', 'Sumérgete en la belleza de la naturaleza en parques locales', 6000, 13),


       -- EMPLEADO AGENCIA 4 (LANCHA)
('PASEO EN LANCHA POR EL RIÓ', 'Relájate y disfruta de un paseo escénico en lancha', 7000, 14),
('CLASES DE SURF EN PLAYA', 'Aprende a surfear en las olas del océano', 6550, 16),
('TOUR GASTRONÓMICO', 'Prueba deliciosos platillos locales en un recorrido nocturno', 7800, 15),
('VISITA A JARDÍN BOTÁNICO', 'Explora la belleza de plantas y flores en un jardín botánico', 3500, 17),
('CURSO DE PINTURA AL AIRE LIBRE', 'Aprende técnicas de pintura mientras disfrutas del paisaje', 6000, 18),


       -- EMPLEADO AGENCIA 5
('SENDERISMO POR MONTAÑAS', 'Disfruta de un día de senderismo', 7550, 21),
('EXCURSIÓN A PARQUES NATURALES', 'Sumérgete en la belleza de la naturaleza en parques locales', 6000, 23),
('RECORRIDO EN BICICLETA POR EL CAMPO', 'Disfruta de un paseo en bicicleta a través de paisajes rurales', 4550, 22),
('VISITA A MUSEO INTERACTIVO', 'Explora exhibiciones interactivas y educativas', 9500, 20),
('EXPERIENCIA DE OBSERVACIÓN DE AVES', 'Admira la diversidad de aves en su entorno natural', 5000, 19),


       -- EMPLEADO AGENCIA 6 (LANCHA)
('EXCURSIÓN A DIFERENTES PLAYAS', 'Disfruta del recorrido y la vista al mar', 45500, 24),
('RECORRIDO DE COMPRAS', 'Explora las tiendas locales y descubre artesanías', 4000, 25),
('TOUR CALLEJERO', 'Explora las expresiones artísticas en las calles de la ciudad', 4020, 26),
('SENDERISMO POR MONTAÑAS', 'Descubre senderos naturales y disfruta de vistas panorámicas', 5500, 27),
('CATA DE CHOCOLATES ARTESANALES', 'Degusta una variedad de chocolates hechos a mano', 3080, 28),
('AVISTAJE', 'Avistaje de ballenas', 15000, 1); --id 30

--utiliza (@IdTransporte, @IdActividad,@fecha)
INSERT INTO utiliza (fecha, idTransporte, idActividad) VALUES
('2023-01-01', 7, 1),
('2023-02-02', 4, 2),
('2023-03-03', 2, 5),
('2023-04-04', 4, 6),
('2023-05-05', 1, 9),
('2023-06-06', 4, 10),
('2023-07-07', 7, 14),
('2023-08-08', 4, 15),
('2023-09-09', 4, 22),
('2023-10-10', 4, 23),
('2023-11-11', 7, 24),
('2023-12-12', 4, 25),
('2024-01-13', 2, 28);

--Reparacion(@idReparacion, descripcion, fecha_inicio_r, fecha_fin_r, fecha_inicio_taller, fecha_fin_taller, costoManoDeObra, cuit,  idTransporte)
ALTER SEQUENCE reparacion_idreparacion_seq RESTART WITH 1;  
INSERT INTO reparacion (descripcion, fecha_inicio_r, fecha_fin_r, fecha_inicio_talle, fecha_fin_taller, costoManoDeObra, cuit, idTransporte)
VALUES
-- Datos colectivos
('Parabrisas defectuoso', '2023-01-01', '2023-01-10', '2023-01-02', '2023-01-15', 24000,30657849,3),
('Neumáticos lisos', '2023-02-01', '2023-02-10', '2023-02-02', '2023-02-15', 70000, 30657849,3),
('Asiento dañados', '2023-03-01', '2023-03-10', '2023-03-02', '2023-03-15', 5000,30657849,3),
('Faros delanteros defectuoso', '2023-04-01', '2023-04-10', '2023-04-02', '2023-04-15', 30000,30657849,3),
('falla de embrague', '2023-05-01', '2023-05-10', '2023-05-02', '2023-05-15', 70000,30657849,3),
('Espejos trizados', '2023-06-01', '2023-06-10', '2023-06-02', '2023-06-15', 2500,30657849,3),


-- Datos combis
('Espejos laterales rayados', '2023-07-01', '2023-07-10', '2023-07-02', '2023-07-15', 10000, 30715369, 5),
('Cambio de filtro de aire', '2023-08-01', '2023-08-10', '2023-08-02', '2023-08-15', 10000, 30715369, 5),
('Amortiguadores defectuoso', '2023-09-01', '2023-09-10', '2023-09-02', '2023-09-15', 20000, 30715369, 5),
('Tapicería gastados', '2023-10-01', '2023-10-10', '2023-10-02', '2023-10-15', 15000, 30715369, 5),
('Batería defectuoso', '2023-11-01', '2023-1-10', '2023-11-02', '2023-11-15', 7500, 30715369, 5),
('Cambio de aceite', '2023-12-01', '2023-12-10', '2023-12-02', '2023-12-15', 4000, 30715369, 5),


-- Datos lanchas
('Hélice roto', '2023-03-10', '2023-03-20', '2023-03-20', '2023-03-25',30000, 30535073, 6),
('Batería defectuosa', '2023-04-10', '2023-04-20', '2023-05-20', '2023-05-25',40000, 30535073, 6),
('Sonda dañada', '2023-06-10', '2023-06-20', '2023-07-20', '2023-07-25',50000, 30535073, 6),
('Sin ancla', '2023-08-10', '2023-08-20', '2023-09-20', '2023-09-25',25000, 30535073, 6),
('Falla en juego de luces', '2023-10-10', '2023-10-20', '2023-11-20', '2023-1-25',25500, 30535073, 6);


--DetalleReparacion ( @idReparacion, idRespuesto, @nroRenglon, cantidad)
ALTER SEQUENCE detallereparacion_nrorenglon_seq RESTART WITH 1;
INSERT INTO detalleReparacion (idReparacion, idRepuesto, cantidad) VALUES
       --Colectivos
(1, 1, 1),
(2, 2, 4),
(3, 3, 15),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
       --Combi
(7, 7, 1),
(8, 8, 1),
(9, 9, 4),
(10, 10, 4),
(11, 11, 1),
(12, 12, 1),
       --Lancha
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 18, 1);



--equipamientoActividad(@idEquipamiento, @idActividad, @fecha)
INSERT INTO equipamientoActividad (idEquipamiento, idActividad, fecha) VALUES
(1, 1, '2023-01-01'),
(2, 2, '2023-02-02'),
(3, 3, '2023-03-03'),
(4, 4, '2023-04-04'),
(5, 5, '2023-05-05'),
(6, 6, '2023-06-06'),
(7, 7, '2023-07-07'),
(8, 8, '2023-08-08'),
(9, 9, '2023-09-09'),
(10, 10, '2023-10-10'),
(11, 11, '2023-11-11'),
(12, 12, '2023-12-12'),
(13, 13, '2023-01-13'),
(14, 14, '2023-02-14'),
(15, 15, '2023-03-15'),
(16, 16, '2023-04-16'),
(17, 17, '2023-05-17'),
(18, 18, '2023-06-18'),
(19, 19, '2023-07-18'),
(20, 20, '2023-08-20'),
(21, 21, '2023-09-21'),
(22, 22, '2023-10-22'),
(23, 23, '2023-11-23'),
(24, 24, '2023-12-24'),
(25, 25, '2023-01-25'),
(26, 26, '2023-02-26'),
(27, 27, '2023-03-27'),
(28, 28, '2023-04-28'),
(29, 19, '2023-05-29'),
(30, 20, '2023-06-30'),
(31, 21, '2023-07-01'),
(32, 22, '2023-08-02'),
(33, 23, '2023-09-03'),
(34, 24, '2023-10-04'),
(35, 25, '2023-11-05'),
(36, 26, '2023-12-06'),
(37, 27, '2023-01-07');

--Paquete (@IdPaquete, descripcion, costoFijo, cupo, tipo, costo , idGestor,   IdTurista, descripcion)
ALTER SEQUENCE paquete_idpaquete_seq RESTART WITH 1;
INSERT INTO paquete (costoFijo, tipo, costo, idGestor, idTurista, descripcion) VALUES
(50750, 'A medida', 15000, 1, 1, 'PASEO EN LANCHA'),
(40860, 'Predeterminado', 5000, 4, 2, 'CLASES DE BUCEO EN AGUAS CRISTALINAS'),
(50750, 'A medida', 17000, 4, 3, 'EXCURSIÓN POR LA CIUDAD'),
(40860, 'Predeterminado', 5000, 4, 4, 'RECORRIDOS GASTRONÓMICOS'),
(50750, 'A medida', 4000, 5, 5, 'TOUR FOTOGRÁFICO'),
(40860, 'Predeterminado', 3000, 1, 6, 'TOUR POR MUSEOS'),
(50750, 'A medida', 2000, 2, 7, 'TOUR ARQUITECTÓNICO'),
(40860, 'Predeterminado', 3500, 3, 8, 'RECORRIDO DE COMPRAS'),
(50750, 'A medida', 4860, 4, 9, 'VISITA DE VIÑEDOS'),
(40860, 'Predeterminado', 3450, 5, 10, 'EXCURSIÓN POR PARQUES LOCALES'),
(50750, 'A medida', 8000, 1, 11, 'PASEO EN LANCHA POR EL RIÓ'),
(40860, 'Predeterminado', 4500, 2, 12, 'CLASES DE SURF EN PLAYA'),
(50750, 'A medida', 5600, 3, 13, 'TOUR GASTRONÓMICO'),
(40860, 'Predeterminado', 4500, 4, 15, 'VISITA A JARDÍN BOTÁNICO'),
(50750, 'A medida', 4560, 5, 15, 'CURSO DE PINTURA AL AIRE LIBRE'),
(40860, 'Predeterminado', 3400, 1, 16, 'SENDERISMO POR MONTAÑAS'),
(50750, 'A medida', 7600, 2, 17, 'EXCURSIÓN A PARQUES NATURALES'),
(40860, 'Predeterminado', 2000, 3, 18, 'RECORRIDO EN BICICLETA POR EL CAMPO'),
(50750, 'A medida', 2500, 4, 19, 'VISITA A MUSEO INTERACTIVO'),
(40860, 'Predeterminado', 9050, 5, 20, 'EXPERIENCIA DE OBSERVACIÓN DE AVES'),
(50750, 'A medida', 2300, 1, 21, 'EXCURSIÓN A DIFERENTES PLAYAS'),
(40860, 'Predeterminado', 2500, 2, 22, 'RECORRIDO DE COMPRAS'),
(50750, 'A medida', 3500, 3, 23, 'TOUR CALLEJERO'),
(40860, 'Predeterminado', 2500, 4, 24, 'SENDERISMO POR MONTAÑAS'),
(50750, 'A medida', 3550, 5, 25, 'CATA DE CHOCOLATES ARTESANALES'),
(40860, 'Predeterminado', 6500, 1, 26, 'AVISTAJE'),
(50750, 'A medida', 7500, 2, 27, 'AVISTAJE'),
(40860, 'Predeterminado', 3500, 3, 28, 'AVISTAJE'),
(50750, 'A medida', 1500, 4, 29, 'CURSO DE PINTURA AL AIRE LIBRE'),
(40860, 'Predeterminado', 3600, 5, 30, 'CATA DE CHOCOLATES ARTESANALES'),
(50750, 'A medida', 5500, 1, 31, 'TOUR GASTRONÓMICO'),
(40860, 'Predeterminado', 7500, 2, 32, 'TOUR POR MUSEOS'),
(50750, 'A medida', 8600, 3, 33, 'VISITA DE VIÑEDOS'),
(40860, 'Predeterminado', 3230, 4, 34, 'RECORRIDOS GASTRONÓMICOS'),
(50750, 'A medida', 2350, 5, 35, 'SENDERISMO POR MONTAÑAS');


--Ticket (@idTicket , descripcion, costoFinal, cupo, idPaquete)
ALTER SEQUENCE ticket_idticket_seq RESTART WITH 1;
INSERT INTO ticket (descripcion, costoFinal, cupo, idpaquete) VALUES
('PASEO EN LANCHA', 5000, 10, 1),
('CLASES DE BUCEO EN AGUAS CRISTALINAS', 5000, 20, 2),
('EXCURSIÓN POR LA CIUDAD', 5000, 30, 3),
('RECORRIDOS GASTRONÓMICOS', 5000, 40, 4),
('TOUR FOTOGRÁFICO', 5000, 50, 5),
('TOUR POR MUSEOS', 7500, 60, 6),
('TOUR ARQUITECTÓNICO', 7500, 70, 7),
('RECORRIDO DE COMPRAS', 7500, 80, 8),
('VISITA DE VIÑEDOS', 7500, 90, 9),
('EXCURSIÓN POR PARQUES LOCALES', 7500, 15, 10),
('PASEO EN LANCHA POR EL RIÓ', 6500, 25, 11),
('CLASES DE SURF EN PLAYA', 6500, 35, 12),
('TOUR GASTRONÓMICO', 6500, 45, 13),
('VISITA A JARDÍN BOTÁNICO', 6500, 55, 14),
('CURSO DE PINTURA AL AIRE LIBRE', 6500, 65, 15),
('SENDERISMO POR MONTAÑAS', 3400, 75, 16),
('EXCURSIÓN A PARQUES NATURALES', 3400, 85, 17),
('RECORRIDO EN BICICLETA POR EL CAMPO', 3400, 95, 18),
('VISITA A MUSEO INTERACTIVO', 3400, 12, 19),
('EXPERIENCIA DE OBSERVACIÓN DE AVES', 3400, 22, 20),
('EXCURSIÓN A DIFERENTES PLAYAS', 3600, 32, 21),
('RECORRIDO DE COMPRAS', 3600, 42, 22),
('TOUR CALLEJERO', 3600, 52, 23),
('SENDERISMO POR MONTAÑAS', 3600, 62, 24),
('CATA DE CHOCOLATES ARTESANALES', 3600, 72, 25),
('AVISTAJE', 2350, 82, 26),
('AVISTAJE', 2350, 92, 27),
('AVISTAJE', 2350, 18, 28),
('TOUR GASTRONÓMICO', 2350, 28, 29),
('CATA DE CHOCOLATES ARTESANALES', 2350, 38, 30),
('TOUR GASTRONÓMICO', 4670, 48, 31),
('TOUR POR MUSEOS', 4670, 58, 32),
('VISITA DE VIÑEDOS', 4670, 68, 33),
('RECORRIDOS GASTRONÓMICOS', 4670, 78, 34),
('SENDERISMO POR MONTAÑAS', 4670, 88, 35);


--DetalleTicket (@IdTicket, @nroRenglon)
ALTER SEQUENCE detalleticket_nrorenglon_seq RESTART WITH 1;
INSERT INTO detalleTicket (idTicket, idActividad, costo) VALUES
(1, 1, 7250),
(2, 2, 7250),
(3, 3, 12500),
(4, 5, 12250),
(5, 7, 10000),
(6, 9, 4000),
(7, 10, 5000),
(8, 11, 7000),
(9, 12, 6500),
(10, 13, 6000),
(11, 14,7000),
(12, 15, 6550),
(13, 16, 7800),
(14, 17, 3500),
(15, 18, 6000),
(16, 19, 7550),
(17, 20, 6000),
(18, 21, 4550),
(19, 22, 9500),
(20, 23, 5000),
(21, 24, 45500),
(22, 25, 4000),
(23, 26, 4020),
(24, 27, 5500),
(25, 28, 3080),
(26, 29, 7250),
(27, 29, 7800),
(28, 29, 45500),
(29, 18, 6000),
(30, 28, 3080),
(31, 16, 7800),
(32, 9, 4000),
(33, 12, 6500),
(34, 6, 12250),
(35, 19, 7550);

--restauranteActividad(@idRestaurante, @idActividad, @fecha)
INSERT INTO restauranteActividad (fecha, idRestaurante, idActividad) VALUES
('2023-01-01', 1, 2),
('2023-02-02', 2, 3),
('2023-03-03', 3, 4),
('2023-04-04', 4, 5),
('2023-05-05', 5, 6),
('2023-06-06', 6, 7),
('2023-07-07', 7, 8),
('2023-08-08', 8, 9),
('2023-09-09', 9, 10),
('2023-10-10', 10, 11),
('2023-11-11', 11, 12),
('2023-12-12', 12, 13),
('2023-01-13', 13, 16),
('2023-02-14', 14, 17),
('2023-03-15', 15, 18),
('2023-04-16', 16, 19),
('2023-05-17', 17, 20),
('2023-06-18', 18, 21),
('2023-07-19', 19, 22),
('2023-08-20', 20, 23),
('2023-09-21', 21, 24),
('2023-10-22', 22, 25),
('2023-11-23', 23, 26),
('2023-12-25', 24, 27),
('2023-01-26', 25, 28);

--Factura (@idFactura, fecha_realizacion, costo, tipoPago, idTurista)
ALTER SEQUENCE factura_idfactura_seq RESTART WITH 1;
INSERT INTO factura (fecha_realizacion, costo, tipoPago, idTurista) VALUES
('2023-01-01', 20000, 'Tarjeta de crédito', 1),
('2023-01-02', 15000, 'Efectivo', 2),
('2023-01-03', 18000, 'Transferencia bancaria', 3),
('2023-01-04', 22000, 'Cheque', 4),
('2023-01-05', 25000, 'Tarjeta de débito', 5),
('2023-06-06', 20000, 'Tarjeta de crédito', 6),
('2023-07-07', 15000, 'Efectivo', 7),
('2023-08-08', 18000, 'Transferencia bancaria', 8),
('2023-09-09', 22000, 'Cheque', 9),
('2023-10-10', 25000, 'Tarjeta de débito', 10),
('2023-11-11', 20000, 'Tarjeta de crédito', 11),
('2023-12-12', 15000, 'Efectivo', 12),
('2023-01-12', 18000, 'Transferencia bancaria', 13),
('2023-02-13', 22000, 'Cheque', 14),
('2023-03-14', 25000, 'Tarjeta de débito', 15),
('2023-04-15', 20000, 'Tarjeta de crédito', 16),
('2023-05-16', 15000, 'Efectivo', 17),
('2023-06-17', 18000, 'Transferencia bancaria', 18),
('2023-07-18', 22000, 'Cheque', 19),
('2023-08-19', 25000, 'Tarjeta de débito', 20),
('2023-09-20', 20000, 'Tarjeta de crédito', 21),
('2023-10-21', 15000, 'Efectivo', 22),
('2023-11-22', 18000, 'Transferencia bancaria', 23),
('2023-12-23', 22000, 'Cheque', 24),
('2023-01-24', 25000, 'Tarjeta de débito', 25),
('2022-02-25', 20000, 'Tarjeta de crédito', 26),
('2022-03-26', 15000, 'Efectivo', 27),
('2022-04-27', 18000, 'Transferencia bancaria', 28);

--DetalleFactura (@IdFactura, @nroRenglon, idPaquete)
ALTER SEQUENCE detallefactura_nrorenglon_seq RESTART WITH 1;
INSERT INTO detalleFactura (idFactura, idPaquete)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28);

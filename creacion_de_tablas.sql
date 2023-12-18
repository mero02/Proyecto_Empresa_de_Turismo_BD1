--TABLAS SQL

--Localidad  (@idLocalidad, nombreLocalidad) (LISTO)
CREATE TABLE Localidad (idLocalidad INT NOT NULL PRIMARY KEY, nombreLocalidad varchar (50));

--Gestor(@idGestor, nombre, apellido, direccion_nro, piso, calle, dpto, telefono, fecha_inicio, fecha_fin) (LISTO)
CREATE TABLE Gestor(idGestor SERIAL NOT NULL PRIMARY KEY, nombre varchar (50) NOT NULL, apellido varchar (50) NOT NULL, direccion_nro varchar (50) NOT NULL, piso CHAR(1), calle varchar (50), dpto varchar (50), telefono varchar(50), fecha_inicio date, fecha_fin date);

--Propietario (@IdPropietario, nombre, apellido, teléfono) (LISTO)
CREATE TABLE Propietario (idPropietario SERIAL NOT NULL PRIMARY KEY, nombre varchar(50) NOT NULL, apellido varchar(50) NOT NULL, telefono varchar(30));

--Título(@idTitulo, nombre) (LISTO)
CREATE TABLE Titulo (idtitulo SERIAL NOT NULL PRIMARY KEY, nombre varchar(50) NOT NULL);

--Idioma (@idIdioma, nombre, nivel)  (LISTO)
CREATE TYPE tipoNivel AS ENUM ('Avanzado', 'Intermedio', 'Basico');
CREATE TABLE idioma (idIdioma SERIAL NOT NULL PRIMARY KEY, nombre varchar (50) NOT NULL, nivel tipoNivel);

--Licencia (@idLicencia, descripcion, vencimiento) (LISTO)
CREATE TABLE Licencia (idLicencia SERIAL NOT NULL PRIMARY KEY, descripcion varchar (50), vencimiento date);

--Transporte (@idTransporte, tipoTransporte, capacidad, estado)  (LISTO)
CREATE TYPE tipo_transporte AS ENUM ('colectivos','combis','lanchas');
CREATE TYPE tipo_estado AS ENUM ('activo','reparacion');
CREATE TABLE transporte(idTransporte SERIAL NOT NULL PRIMARY KEY, tipo tipo_transporte, capacidad int NOT NULL, estado tipo_estado);

--Respuesto (@idRespuesto, descripcion, importe) (LISTO)
CREATE TABLE Repuesto (idRepuesto SERIAL NOT NULL PRIMARY KEY, descripcion varchar(200), importe float NOT NULL);

--Equipamiento (@idEquipamiento, descripcion)  (LISTO)
CREATE TABLE Equipamiento (idEquipamiento SERIAL NOT NULL PRIMARY KEY, descripcion varchar(200));

--Taller (@cuit, nombre)  (LISTO)
CREATE TABLE Taller (cuit INT PRIMARY KEY NOT NULL, nombre varchar (50));

--Restaurante (@idRestaurante, nombre, tipo)  (LISTO)
CREATE TYPE tipo_restaurante AS ENUM ('Desayuno', 'Almuerzo', 'Cena');
CREATE TABLE Restaurante (idRestaurante SERIAL NOT NULL PRIMARY KEY, nombre varchar(50), tipo tipo_restaurante);


--Turista (@IdTurista, nombre, apellido, direccion_nro, piso, calle, dpto, pais)   (LISTO)
CREATE TABLE Turista (idTurista SERIAL NOT NULL PRIMARY KEY, nombre varchar(50), apellido varchar(50), direccion_nro int, piso int, calle varchar(50), dpto varchar(50), pais varchar(50));

--===== =====  ===== ===== ===== ===== ===== HASTA ACA SIN FORÁNEAS ===== ===== ===== ===== ===== ===== ===== 


--Agencia (@idAgencia, nombre, direccion_nro , calle, idGestor, idLocalidad, idPropietario)  (LISTO)
--            					→ Gestor   → Localidad  → Propietario
CREATE TABLE Agencia (idAgencia SERIAL NOT NULL PRIMARY KEY, nombre varchar (50)NOT NULL, direccion_nro int, calle varchar(50), idGestor int, idLocalidad int, idPropietario int);
ALTER TABLE Agencia ADD CONSTRAINT agencia_fk_gestor FOREIGN KEY (idGestor) REFERENCES Gestor (idGestor);
ALTER TABLE Agencia ADD CONSTRAINT agencia_fk_localidad FOREIGN KEY (idLocalidad) REFERENCES Localidad (idLocalidad);
ALTER TABLE Agencia ADD CONSTRAINT agencia_fk_propietario FOREIGN KEY (idPropietario) REFERENCES Propietario (idPropietario);

--AgenciaTE (@idAgenciaTe, telefono, idAgencia)   (LISTO)
--                      		 	        → Agencia     
CREATE TABLE agenciaTE (idAgenciaTE SERIAL NOT NULL PRIMARY KEY, telefono varchar (50) NOT NULL, idAgencia int);
ALTER TABLE agenciaTE ADD CONSTRAINT agenciaTE_fk_agencia FOREIGN KEY (idAgencia) REFERENCES Agencia(idAgencia);

--Empleado (@nroLegajo, nombre, apellido, direccion_nro, piso, calle, telefono, tipo, idLicencia) (LISTO)
--									         → Licencia
CREATE TYPE tipo_empleado AS ENUM ('Coordinador', 'Chofer');
CREATE TABLE  Empleado (nroLegajo SERIAL PRIMARY KEY NOT NULL, nombre varchar (50), apellido varchar (50),direccion_nro int, calle varchar (50), telefono int, tipo tipo_empleado, idLicencia int);
ALTER TABLE Empleado ADD CONSTRAINT empleado_fk_licencia FOREIGN KEY (idLicencia) REFERENCES licencia(idLicencia);

--trabajaEn (@IdAgencia, @nroLegajo, @fecha_inicio, fecha_fin)  (LISTO)
--	           → Agencia   → Empleado     
CREATE TABLE trabajaEn (fechaInicio date PRIMARY KEY NOT NULL, idAgencia int, nroLegajo int, fechaFin date);
ALTER TABLE trabajaEn ADD CONSTRAINT trabajaEn_fk_agencia FOREIGN KEY (idAgencia) REFERENCES Agencia(idAgencia);
ALTER TABLE trabajaEn ADD CONSTRAINT trabajaEn_fk_empleado FOREIGN KEY (nroLegajo) REFERENCES Empleado(nroLegajo);


--tituloGestor (@idTitulo, @idGestor)  (LISTO)
--	            → Titulo	 → Gestor

CREATE TABLE tituloGestor (idTitulo int, idGestor int);
ALTER TABLE tituloGestor ADD CONSTRAINT tituloGestor_fk_titulo FOREIGN KEY (idTitulo) REFERENCES Titulo (idTitulo);
ALTER TABLE tituloGestor ADD CONSTRAINT tituloGestor_fk_gestor FOREIGN KEY (idGestor) REFERENCES Gestor (idGestor);


--idiomaGestor (@idIdioma, @idGestor)  (LISTO)
--		   → Idioma   → Gestor

CREATE TABLE idiomaGestor (idIdioma int, idGestor int);
ALTER TABLE idiomaGestor ADD CONSTRAINT idiomaGestor_fk_idioma FOREIGN KEY (idIdioma) REFERENCES Idioma (idIdioma);
ALTER TABLE idiomaGestor ADD CONSTRAINT idiomaGestor_fk_gestor FOREIGN KEY (idGestor) REFERENCES Gestor (idGestor);


--conduce (@nroLegajo, @idTransporte, @fecha_desde, fecha_hasta) (LISTO)
--	    → Empleado   → Transporte

CREATE TABLE conduce(fecha_desde date PRIMARY KEY, fecha_hasta date, nroLegajo int, idTransporte int);
ALTER TABLE conduce ADD CONSTRAINT conduce_fk_empleado FOREIGN KEY (nroLegajo) REFERENCES empleado(nroLegajo);
ALTER TABLE conduce ADD CONSTRAINT conduce_fk_transporte FOREIGN KEY (idTransporte) REFERENCES transporte(idTransporte);

--Actividad (@idActividad, nombre, descripcion, costo, nroLegajo) (LISTO)
--					                     → Empleado

CREATE TABLE actividad (idActividad SERIAL NOT NULL PRIMARY KEY, nombre varchar(50),descripcion varchar(200),costo float, nroLegajo int);
ALTER TABLE actividad ADD CONSTRAINT actividad_fk_empleado FOREIGN KEY (nroLegajo) REFERENCES empleado(nroLegajo);

--utiliza (@IdTransporte, @IdActividad,@fecha)  (LISTO)
--	    → Transporte   → Actividad
CREATE TABLE utiliza(fecha date PRIMARY KEY,idTransporte int, idActividad int);
ALTER TABLE utiliza ADD CONSTRAINT utiliza_fk_transporte FOREIGN KEY (idTransporte) REFERENCES transporte(idTransporte);
ALTER TABLE utiliza ADD CONSTRAINT utiliza_fk_actividad FOREIGN KEY (idActividad) REFERENCES actividad(idActividad);

--Reparacion(@idReparacion, descripcion, fecha_inicio_r, fecha_fin_r, fecha_inicio_taller, fecha_fin_taller, costoManoDeObra, cuit,  idTransporte)  (LISTO)
-- 													             → Taller  → Transporte
CREATE TABLE reparacion(idReparacion SERIAL NOT NULL PRIMARY KEY, descripcion VARCHAR(200),fecha_inicio_r DATE, fecha_fin_r DATE, fecha_inicio_talle DATE, fecha_fin_taller DATE, costoManoDeObra FLOAT, cuit INT, idTransporte int);
ALTER TABLE reparacion ADD CONSTRAINT reparacion_fk_taller FOREIGN KEY (cuit) REFERENCES taller(cuit);
ALTER TABLE reparacion ADD CONSTRAINT reparacion_fk_transporte FOREIGN KEY (idTransporte) REFERENCES transporte(idTransporte);

--DetalleReparacion ( @idReparacion, idRespuesto, @nroRenglon, cantidad)  (LISTO)
--                                    →Reparación    →Repuesto

CREATE TABLE detalleReparacion (nroRenglon SERIAL NOT NULL PRIMARY KEY,idReparacion int, idRepuesto int, cantidad int);
ALTER TABLE detalleReparacion ADD CONSTRAINT detalleReparacion_fk_reparacion FOREIGN KEY (idReparacion) REFERENCES reparacion(idReparacion);
ALTER TABLE detalleReparacion ADD CONSTRAINT detalleReparacion_fk_repuesto FOREIGN KEY (idRepuesto) REFERENCES repuesto(idRepuesto);

--equipamientoActividad(@idEquipamiento, @idActividad, @fecha)  (LISTO)
--		          → Equipamiento  → Actividad

CREATE TABLE equipamientoActividad (idEquipamiento int, idActividad int, fecha date PRIMARY KEY); 
ALTER  TABLE equipamientoActividad ADD CONSTRAINT equipamientoActividad_fk_equipamiento FOREIGN KEY (idEquipamiento) REFERENCES equipamiento (idEquipamiento);
ALTER TABLE equipamientoActividad ADD CONSTRAINT equipamientoActividad_fk_actividad FOREIGN KEY (idActividad) REFERENCES actividad (idActividad); 

--Paquete (@IdPaquete, descripcion, costoFijo, cupo, tipo, costo , idGestor,   IdTurista)  (LISTO)
-- 						        	     → Gestor   → Turista

CREATE TYPE tipo_paquete AS ENUM ('A medida','Predeterminado');
CREATE TABLE paquete (idPaquete SERIAL NOT NULL PRIMARY KEY,descripcion varchar(200),  costoFijo float, tipo tipo_paquete, costo float, idGestor int, idTurista int);
ALTER TABLE paquete ADD CONSTRAINT paquete_fk_gestor FOREIGN KEY (idGestor) REFERENCES Gestor(idGestor);
ALTER TABLE paquete ADD CONSTRAINT paquete_fk_turista FOREIGN KEY (idTurista) REFERENCES turista(idTurista);

--Ticket (@idTicket, descripcion, costoFinal, cupo, idPaquete) (LISTO)
--						   → Paquete
CREATE TABLE Ticket (idTicket SERIAL NOT NULL PRIMARY KEY, descripcion varchar(200), costoFinal float, cupo int, idPaquete int);
ALTER TABLE Ticket ADD CONSTRAINT Ticket_fk_paquete FOREIGN KEY (idPaquete ) REFERENCES paquete(idPaquete);



--DetalleTicket (IdTicket,IdActividad, @nroRenglon, costo)  (LISTO)
--		→ Ticket  → Actividad
CREATE TABLE detalleTicket (idTicket int, idActividad int, nroRenglon SERIAL NOT NULL PRIMARY KEY, costo float); 
ALTER TABLE detalleTicket ADD CONSTRAINT detalleTicket_fk_ticket FOREIGN KEY (idTicket) REFERENCES ticket (idTicket); 
ALTER TABLE detalleTicket ADD CONSTRAINT detalleTicket_fk_actividad FOREIGN KEY (idActividad) REFERENCES actividad(idActividad);
	
--restauranteActividad(@idRestaurante, @idActividad, @fecha)  (LISTO)
--			   → Restaurante     → Actividad
CREATE TABLE restauranteActividad (fecha date NOT NULL PRIMARY KEY, idRestaurante int, idActividad int);
ALTER TABLE restauranteActividad ADD CONSTRAINT restauranteActividad_fk_restaurante FOREIGN KEY (idRestaurante) REFERENCES restaurante(idRestaurante);
ALTER TABLE restauranteActividad ADD CONSTRAINT restauranteActividad_fk_actividad FOREIGN KEY (idActividad) REFERENCES actividad(idActividad);

--Factura (@idFactura, fecha_realizacion, costo, tipoPago, idTurista) (LISTO)
--						            → Turista        
CREATE TABLE factura (idFactura SERIAL NOT NULL PRIMARY KEY, fecha_realizacion date, costo float, tipoPago varchar(50), idTurista int);
ALTER TABLE factura ADD CONSTRAINT factura_pk_turista FOREIGN KEY (idTurista) REFERENCES turista(idTurista);

--DetalleFactura (@IdFactura, @nroRenglon, idPaquete)  (LISTO)
--                              → Factura		       → Paquete
CREATE TABLE detalleFactura (nroRenglon SERIAL NOT NULL PRIMARY KEY, idFactura int, idPaquete int);
ALTER TABLE detalleFactura ADD CONSTRAINT detalleFactura_pk_factura FOREIGN KEY (idFactura) REFERENCES factura (idFactura);
ALTER TABLE detalleFactura ADD CONSTRAINT detalleFactura_pk_paquete FOREIGN KEY (idPaquete) REFERENCES paquete(idPaquete);

USE estadisticas_basquet;

INSERT INTO jugadoras (id_numero, id_equipo, nombre, pos, edad, alt) 
VALUES
	(0, 1, 'Sofía Gómez', 'alera', 24, 1.65),
	(4, 1, 'Jessica De La Haye', 'ala-pivot', 36, 1.75),
	(5, 1, 'Pilar Pulido', 'alera', 26, 1.70),
	(6, 1, 'Florencia Cirigliano', 'escolta', 26, 1.60),
	(7, 1, 'Marina Zubillaga', 'pivot', 30, 1.77),
	(8, 1, 'Milena De Luca', 'ala-pivot', 22, 1.65),
	(9, 1, 'María De Sabantonio', 'alera', 37, 1.60),
    	(10, 1, 'Sofía Cruz', 'ala-pivot', 22, 1.80),
	(12, 1, 'Carolina Romaniello', 'pivot', 25, 1.70),
	(13, 1, 'Natalia Cirigliano', 'base', 31, 1.63),
	(15, 1, 'Ana Clara Iannone', 'alera', 29, 1.60),
	(26, 1, 'Yamila Vilte', 'base', 22, 1.60),
    	(30, 1, 'Mora Pereira', 'base', 17, 1.55),
	(46, 1, 'Suyai Wegener', 'escolta', 17, 1.60);

INSERT INTO torneo (nombre_torneo, organizador, equipos)
VALUES
	('Apertura', 'APdeB', 10),
	('Clausura', 'APdeB', 9),
	('Amistoso', null, null);
    
INSERT INTO equipos (id_equipo, nombre_equipo, direc, ciudad) VALUES
	(1, 'Meridiano V', '67 e 17 y 18', 'La Plata'),
	(2, 'Juventud', '35 e 1 y 2', 'La Plata'),
	(3, 'Hogar Social', 'Montevideo 100', 'Berisso'),
	(4, 'Círculo Policial', '17 y 526', 'La Plata'),
	(5, 'Capital Chica', '66 e 156 y 157', 'Los Hornos'),
	(6, 'Villa San Carlos', 'Montevideo 2285', 'Berisso'),
	(7, 'San Vicente', '9 de julio 180', 'San Vicente'),
	(8, 'Reconquista', '40 e 15 y 16', 'La Plata'),
	(9, 'Platense', '21 e 51 y 53', 'La Plata'),
	(10, 'Unidos del Dique', '47 y 129', 'Ensenada'),
	(11, 'Gimnasia y Esgrima La Plata', '4 e 51 y 53', 'La Plata'),
	(12, 'Selección Argentina U 19', 'CeNARD', 'CABA');

INSERT INTO partidos (id, dia, nombre_torneo, id_equipo1, id_equipo2, resultado, win, instancia)
VALUES
	(1, '2022-03-25', 'Amistoso', 1, 11, '70-45', True, 'Amistoso'),
	(2, '2022-04-03', 'Apertura', 1, 2, '54-60', False, 'Fecha 1'),
	(3, '2022-04-10', 'Apertura', 1, 3, '54-60', False, 'Fecha 2'),
	(4, '2022-04-24', 'Apertura', 1, 4, '68-32', True, 'Fecha 3'),
	(5, '2022-05-01', 'Apertura', 1, 5, '101-19', True, 'Fecha 4'),
	(6, '2022-05-08', 'Apertura', 1, 6, '58-51', True, 'Fecha 5'),
	(7, '2022-05-15', 'Apertura', 1, 7, '52-45', True, 'Fecha 6'),
	(8, '2022-05-22', 'Apertura', 1, 8, '43-49', False, 'Fecha 7'),
	(9, '2022-05-29', 'Apertura', 1, 9, '51-36', True, 'Fecha 8'),
	(10, '2022-06-05', 'Apertura', 1, 10, '83-21', True, 'Fecha 9'),
	(11, '2022-06-26', 'Apertura', 1, 7, '58-42', True, 'Cuartos de final'),
	(12, '2022-07-01', 'Amistoso', 1, 12, '40-70', False, 'Amistoso'),
	(13, '2022-07-03', 'Apertura', 1, 8, '52-70', False, 'Semifinal'),
	(14, '2022-08-02', 'Clausura', 1, 2, '45-41', True ,'Fecha 1');

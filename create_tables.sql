DROP SCHEMA IF EXISTS estadisticas_basquet;
CREATE SCHEMA if not exists estadisticas_basquet;
USE estadisticas_basquet;

CREATE TABLE if not exists jugadoras (
					id_numero INT NOT NULL PRIMARY KEY, 
    					id_equipo INT NOT NULL,
					nombre VARCHAR(45),
					pos VARCHAR(15),
					edad INT,
					alt DECIMAL(3,2)
   					 );

CREATE TABLE if not exists partidos (
					id INT NOT NULL PRIMARY KEY,
					dia DATE,
   					nombre_torneo VARCHAR(45),
   					id_equipo1 INT,
   					id_equipo2 INT,
   					resultado VARCHAR(7) NOT NULL,
   				 	win BOOLEAN,
   					instancia VARCHAR(45)
    					);

CREATE TABLE if not exists torneo (
				nombre_torneo VARCHAR(45) NOT NULL PRIMARY KEY,
    				organizador VARCHAR(45),
    				equipos INT
	    			);
    
CREATE TABLE if not exists estadisticas_individuales (
					id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
					id_partido INT NOT NULL,
					id_numero INT NOT NULL,
    					pts INT,
    					reb INT,
    					asist INT,
    					perd INT,
    					rob INT,
    					min DECIMAL(4,2)
    							);
    
CREATE TABLE if not exists equipos (
					id_equipo INT NOT NULL PRIMARY KEY,
    					nombre_equipo VARCHAR(45),
    					direc VARCHAR(50),
    					ciudad VARCHAR(40)
    					);

ALTER TABLE estadisticas_individuales ADD FOREIGN KEY (id_partido) REFERENCES partidos(id);
ALTER TABLE partidos ADD FOREIGN KEY (nombre_torneo) REFERENCES torneo(nombre_torneo);
ALTER TABLE estadisticas_individuales ADD FOREIGN KEY (id_numero) REFERENCES jugadoras(id_numero); 
ALTER TABLE partidos ADD FOREIGN KEY (id_equipo1) REFERENCES equipos(id_equipo);
ALTER TABLE partidos ADD FOREIGN KEY (id_equipo2) REFERENCES equipos(id_equipo);

USE MÚSICA;

SELECT @@autocommit;
SET @@autocommit = 1;

START TRANSACTION;
-- Transaccion para eliminar registro de la primera tabla (inevitablemente se tiene que eliminar tambien en otras tablas, porque es dependiente)
DELETE FROM Álbumes WHERE artista_id IN (SELECT id FROM Artistas WHERE género_principal = 8);
DELETE FROM Álbumes_en_vivo WHERE artistas_en_vivo_id IN (SELECT id FROM Artistas WHERE género_principal = 8);
DELETE FROM Conciertos WHERE artista_concierto_id IN (SELECT id FROM Artistas WHERE género_principal = 8);
DELETE FROM Canciones WHERE artista_cancion_id IN (SELECT id FROM Artistas WHERE género_principal = 8);
DELETE FROM Artistas WHERE género_principal = 8;
DELETE FROM Géneros WHERE id = 8;

-- Comentario para rollback 
-- ROLLBACK;

COMMIT;

START TRANSACTION;

-- Transaccion para insertar  cuatro registros en la segunda tabla
INSERT INTO Discográficas (nombre, país) VALUES ('Harmony Records', 'Francia');
INSERT INTO Discográficas (nombre, país) VALUES ('Eclipse Music', 'Canadá');
INSERT INTO Discográficas (nombre, país) VALUES ('Aurora Tunes', 'Italia');
INSERT INTO Discográficas (nombre, país) VALUES ('Nova Sound', 'España');

-- Guardar un punto de guardado después de insertar los primeros cuatro registros
SAVEPOINT sp1;

-- Insertar los siguientes 4 registros
INSERT INTO Discográficas (nombre, país) VALUES ('Zephyr Productions', 'Suecia');
INSERT INTO Discográficas (nombre, país) VALUES ('Echo Waves', 'México');
INSERT INTO Discográficas (nombre, país) VALUES ('Vertex Studios', 'Argentina');
INSERT INTO Discográficas (nombre, país) VALUES ('Stellar Label', 'Brasil');


SAVEPOINT sp2;

-- Comentar sentencia Rollback
-- ROLLBACK TO sp1;

-- Confirmar la transacción
COMMIT;



USE MÚSICA;

-- Vista 1: Vista para obtener la lista de artistas y el número total de canciones que tienen

DROP VIEW IF EXISTS Vista_Artistas_Con_Total_Canciones;
CREATE VIEW Vista_Artistas_Con_Total_Canciones AS
SELECT a.id, a.nombre AS artista, total_canciones_artista(a.id) AS total_canciones
FROM Artistas a;

-- Vista 2: Vista para obtener la lista de álbumes y su duración total por cada artista

DROP VIEW IF EXISTS Vista_Álbumes_Con_Duración_Total;
CREATE VIEW Vista_Álbumes_Con_Duración_Total AS
SELECT a.id, a.título AS álbum, a.artista_id, SUM(TIME_TO_SEC(c.duración)) AS duración_total_segundos,
       SEC_TO_TIME(SUM(TIME_TO_SEC(c.duración))) AS duración_total_formato
FROM Álbumes a
INNER JOIN Canciones c ON a.id = c.álbum_cancion_id
GROUP BY a.id;

-- Vista 3: Vista para obtener la lista de productores y el número total de álbumes que han producido

DROP VIEW IF EXISTS Vista_Productores_Con_Total_Álbumes;
CREATE VIEW Vista_Productores_Con_Total_Álbumes AS
SELECT p.id, p.nombre AS productor, total_albumes_producidos(p.id) AS total_álbumes
FROM Productores p;

-- Vista 4: Vista para obtener la lista de discográficas y el número total de álbumes que han publicado

DROP VIEW IF EXISTS Vista_Discográficas_Con_Total_Álbumes;
CREATE VIEW Vista_Discográficas_Con_Total_Álbumes AS
SELECT d.id, d.nombre AS discográfica, COUNT(*) AS total_álbumes
FROM Discográficas d
INNER JOIN Álbumes a ON d.id = a.discográfica_id
GROUP BY d.id;

-- Vista 5: Vista para obtener la lista de géneros musicales y el número total de canciones por género
CREATE VIEW Vista_Géneros_Con_Total_Canciones AS
SELECT g.id, g.nombre AS género, COUNT(*) AS total_canciones
FROM Géneros g
INNER JOIN Canciones c ON g.id = c.género_cancion_id
GROUP BY g.id;
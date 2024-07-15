USE MÚSICA;

DELIMITER //

-- Procedimiento para obtener una lista de canciones por género

DROP PROCEDURE IF EXISTS ObtenerCancionesPorGenero;
CREATE PROCEDURE ObtenerCancionesPorGenero (
    IN genero_nombre VARCHAR(100)
)
BEGIN
    DECLARE genero_id INT;
    
    -- Buscar el ID del género basado en el nombre
    SELECT id INTO genero_id
    FROM Géneros
    WHERE nombre = genero_nombre;
    
    -- Si se encontró el género, seleccionar las canciones
    IF genero_id IS NOT NULL THEN
        SELECT c.id, c.título AS canción, c.duración, a.nombre AS artista, al.título AS álbum
        FROM Canciones c
        INNER JOIN Artistas a ON c.artista_cancion_id = a.id
        INNER JOIN Álbumes al ON c.álbum_cancion_id = al.id
        WHERE c.género_canción_id = genero_id;
    ELSE
        SELECT 'No se encontró el género especificado' AS mensaje;
    END IF;
    
END //

DELIMITER ;

DELIMITER //

-- Procedimiento para obtener una lista de álbumes por género

DROP PROCEDURE IF EXISTS ObtenerÁlbumesPorGenero;
CREATE PROCEDURE ObtenerÁlbumesPorGenero (
    IN genero_nombre VARCHAR(100)
)
BEGIN
    DECLARE genero_id INT;
    
    -- Buscar el ID del género basado en el nombre
    SELECT id INTO genero_id
    FROM Géneros
    WHERE nombre = genero_nombre;
    
    -- Si se encontró el género, seleccionar los álbumes
    IF genero_id IS NOT NULL THEN
        SELECT al.id, al.título AS álbum, a.nombre AS artista, al.lanzamiento, d.nombre AS discográfica
        FROM Álbumes al
        INNER JOIN Artistas a ON al.artista_id = a.id
        INNER JOIN Discográficas d ON al.discográfica_id = d.id
        WHERE al.género_álbum_id = genero_id;
    ELSE
        SELECT 'No se encontró el género especificado' AS mensaje;
    END IF;
    
END //

DELIMITER ;


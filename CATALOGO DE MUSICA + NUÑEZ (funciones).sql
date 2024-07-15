USE MÚSICA;

DELIMITER //

-- Función para obtener el número total de álbumes producidos por un productor específico

DROP FUNCTION IF EXISTS total_albumes_producidos;
CREATE FUNCTION total_albumes_producidos(productor_id INT) 
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total INT;
    
    SELECT COUNT(*) INTO total
    FROM Álbumes
    WHERE productor_álbum_id = productor_id;
    
    RETURN total;
END //

-- Función para obtener el número total de canciones de un artista específico

DROP FUNCTION IF EXISTS total_canciones_artista;
CREATE FUNCTION total_canciones_artista(artista_id INT) 
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total INT;
    
    SELECT COUNT(*) INTO total
    FROM Canciones
    WHERE artista_cancion_id = artista_id;
    
    RETURN total;
END //

DELIMITER ;


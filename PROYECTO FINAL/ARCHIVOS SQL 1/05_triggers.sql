USE MÚSICA;

DELIMITER //

-- Trigger para actualizar el numero total de albumes producidos
DROP TRIGGER IF EXISTS trg_actualizar_total_albumes_producidos;
CREATE TRIGGER trg_actualizar_total_albumes_producidos
AFTER INSERT ON Álbumes
FOR EACH ROW
BEGIN
    DECLARE total_albumes INT;
    
    
    DECLARE dummy INT;
    SET dummy = total_albumes_producidos(NEW.productor_álbum_id);
    
    -- Obtener el total de álbumes producidos por el productor del nuevo álbum
    SELECT total_albumes_producidos(NEW.productor_álbum_id) INTO total_albumes;
    
    -- Actualizar la vista de Productores con el total de álbumes
    UPDATE Vista_Productores_Con_Total_Álbumes
    SET total_álbumes = total_albumes
    WHERE id = NEW.productor_álbum_id;
END //

DELIMITER ;

DELIMITER //

-- Trigger para actualizar el total de canciones por artista
DROP TRIGGER IF EXISTS trg_actualizar_total_canciones_artista;

CREATE TRIGGER trg_actualizar_total_canciones_artista
AFTER INSERT ON Canciones
FOR EACH ROW
BEGIN
    DECLARE total_canciones INT;

    -- Obtener el total de canciones del artista de la nueva canción
    SELECT total_canciones_artista(NEW.artista_cancion_id) INTO total_canciones;

    -- Actualizar la vista de Artistas con el total de canciones
    UPDATE Vista_Artistas_Con_Total_Canciones
    SET total_canciones = total_canciones
    WHERE id = NEW.artista_cancion_id;
END //

DELIMITER ;
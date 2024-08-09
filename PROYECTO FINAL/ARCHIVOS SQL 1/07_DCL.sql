USE MÚSICA;

CREATE USER if not exists 'usuariodeprueba1'@'localhost' IDENTIFIED BY 'Contraseña1!';
CREATE USER if not exists 'usuariodeprueba2'@'localhost' IDENTIFIED BY 'Contraseña2!';

-- Asignar permisos de lectura para tres tablas
GRANT SELECT ON MÚSICA.Artistas TO 'usuariodeprueba1'@'localhost';
GRANT SELECT ON MÚSICA.Álbumes TO 'usuariodeprueba1'@'localhost';
GRANT SELECT ON MÚSICA.Canciones TO 'usuariodeprueba1'@'localhost';

-- Asignar permisos de escritura, modificación y eliminación para tres tablas
GRANT SELECT, INSERT, UPDATE ON MÚSICA.Discográficas TO 'usuariodeprueba2'@'localhost';
GRANT SELECT, INSERT, UPDATE ON MÚSICA.Álbumes_en_vivo TO 'usuariodeprueba2'@'localhost';
GRANT SELECT, INSERT, UPDATE ON MÚSICA.Conciertos TO 'usuariodeprueba2'@'localhost';

-- Revocar permisos de lectura para la tabla Canciones
REVOKE SELECT ON MÚSICA.Canciones FROM 'usuariodeprueba1'@'localhost';

-- Revocar permisos de insercion para la tabla Álbumes_en_vivo
REVOKE INSERT ON MÚSICA.Álbumes_en_vivo FROM 'usuariodeprueba2'@'localhost';



FLUSH PRIVILEGES;
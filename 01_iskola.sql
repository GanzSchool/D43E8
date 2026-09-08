CREATE DATABASE IF NOT EXISTS iskola CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE iskola;
DROP TABLE IF EXISTS tanulok;
CREATE TABLE tanulok (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nev VARCHAR(100) NOT NULL,
  eletkor TINYINT UNSIGNED NOT NULL,
  osztaly VARCHAR(10) NOT NULL,
  atlag DECIMAL(3,1) NOT NULL
) ENGINE=InnoDB;
INSERT INTO tanulok (nev,eletkor,osztaly,atlag) VALUES
('Kiss Anna',16,'10.A',4.7),('Nagy Péter',17,'10.B',3.9),('Tóth Réka',16,'10.A',4.4),
('Szabó Márk',15,'9.C',3.6),('Varga Dóra',17,'11.B',4.9),('Kovács Levente',16,'10.C',4.1),
('Molnár Eszter',15,'9.A',4.3),('Balogh Máté',17,'11.A',3.8),('Horváth Lilla',16,'10.B',4.6),
('Juhász Bence',15,'9.B',3.5);

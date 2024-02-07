USE kiceo;

DROP TABLE IF EXISTS Station;
DROP TABLE IF EXISTS Ligne;
DROP TABLE IF EXISTS Jour;
DROP TABLE IF EXISTS Horaire;
DROP TABLE IF EXISTS Deservir;

CREATE TABLE IF NOT EXISTS Station(
   id_station INT AUTO_INCREMENT,
   nom_station VARCHAR(50)  NOT NULL,
   id_station_repli INT NULL,
   PRIMARY KEY(id_station),
   FOREIGN KEY(id_station_repli) REFERENCES Station(id_station)
);

CREATE TABLE IF NOT EXISTS Ligne(
   id_ligne INT AUTO_INCREMENT,
   numero_ligne INT NOT NULL,
   nom_ligne VARCHAR(50) ,
   station_depart INT NOT NULL,
   station_arrivee INT NOT NULL,
   PRIMARY KEY(id_ligne),
   FOREIGN KEY(station_depart) REFERENCES Station(id_station),
   FOREIGN KEY(station_arrivee) REFERENCES Station(id_station)
);

CREATE TABLE IF NOT EXISTS Jour(
   jour ENUM('Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi', 'Dimanche')  NOT NULL,
   PRIMARY KEY(jour)
);

CREATE TABLE IF NOT EXISTS Horaire(
   horaire TIME,
   PRIMARY KEY(horaire)
);

CREATE TABLE IF NOT EXISTS Deservir(
   id_station INT,
   id_ligne INT,
   jour ENUM('Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi', 'Dimanche'),
   horaire TIME,
   PRIMARY KEY(id_station, id_ligne, jour, horaire),
   FOREIGN KEY(id_station) REFERENCES Station(id_station),
   FOREIGN KEY(id_ligne) REFERENCES Ligne(id_ligne),
   FOREIGN KEY(jour) REFERENCES Jour(jour),
   FOREIGN KEY(horaire) REFERENCES Horaire(horaire)
);

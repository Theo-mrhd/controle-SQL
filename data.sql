USE kiceo;

DELETE FROM Station;
DELETE FROM Ligne;
DELETE FROM Horaire;
DELETE FROM Jour;
DELETE FROM Deservir;

ALTER TABLE Station AUTO_INCREMENT = 1;
ALTER TABLE Ligne AUTO_INCREMENT = 1;

INSERT INTO Station (nom_station, id_station_repli) VALUES 
('PR+ Ouest', NULL),
('Fourchêne 1', NULL),
('Madeleine', NULL),
('République', NULL),
('PIBS 2', NULL),
('Delestraint', NULL),
('Kersec', NULL)
;

INSERT INTO Station (nom_station, id_station_repli) VALUES  ('Petit Tohannic', 7);

INSERT INTO Ligne (numero_ligne, nom_ligne, station_depart, station_arrivee) VALUES (2, 'Direction Kersec', 1, 8);
INSERT INTO Ligne (numero_ligne, nom_ligne, station_depart, station_arrivee) VALUES (2, 'Direction P+R Ouest', 8, 1);

INSERT INTO Horaire VALUES
  ('6:32'), ('6:34'), ('6:37'), ('6:42'), ('6:46'), ('6:50'), ('6:51'), ('6:52'),
  ('6:44'), ('6:47'), ('6:54'), ('6:55'), ('6:56'), ('6:57'), ('7:00'), ('7:01'), ('7:02'), ('7:05'),
  ('7:06'), ('7:07'), ('7:11'), ('7:17'), ('7:21'), ('7:22'), ('7:26'), ('7:10'), ('7:12'),
  ('7:16'), ('7:27'), ('7:31'), ('7:32'), ('7:36');

INSERT INTO Jour VALUES ('Lundi'), ('Mardi'), ('Mercredi'), ('Jeudi'), ('Vendredi');

INSERT INTO Deservir VALUES 
    (1, 1, 'Lundi', '6:32'),
    (1, 1, 'Lundi', '6:42'),
    (1, 1, 'Lundi', '6:52'),
    (1, 1, 'Lundi', '7:00'),
    (1, 1, 'Lundi', '7:10'),

    (2, 1, 'Lundi', '6:34'),
    (2, 1, 'Lundi', '6:44'),
    (2, 1, 'Lundi', '6:54'),
    (2, 1, 'Lundi', '7:02'),
    (2, 1, 'Lundi', '7:12'),
    
    (3, 1, 'Lundi', '6:37'),
    (3, 1, 'Lundi', '6:47'),
    (3, 1, 'Lundi', '6:57'),
    (3, 1, 'Lundi', '7:06'),
    (3, 1, 'Lundi', '7:16'),

    (4, 1, 'Lundi', '6:42'),
    (4, 1, 'Lundi', '6:52'),
    (4, 1, 'Lundi', '7:02'),
    (4, 1, 'Lundi', '7:12'),
    (4, 1, 'Lundi', '7:22'),

    (5, 1, 'Lundi', '6:46'),
    (5, 1, 'Lundi', '6:56'),
    (5, 1, 'Lundi', '7:07'),
    (5, 1, 'Lundi', '7:17'),
    (5, 1, 'Lundi', '7:27'),

    (6, 1, 'Lundi', '6:50'),
    (6, 1, 'Lundi', '7:00'),
    (6, 1, 'Lundi', '7:11'),
    (6, 1, 'Lundi', '7:21'),
    (6, 1, 'Lundi', '7:31'),

    (7, 1, 'Lundi', '6:51'),
    (7, 1, 'Lundi', '7:01'),
    (7, 1, 'Lundi', '7:12'),
    (7, 1, 'Lundi', '7:22'),
    (7, 1, 'Lundi', '7:32'),

    (8, 1, 'Lundi', '6:55'),
    (8, 1, 'Lundi', '7:05'),
    (8, 1, 'Lundi', '7:16'),
    (8, 1, 'Lundi', '7:26'),
    (8, 1, 'Lundi', '7:36'),

    -- 6. Ajouter la ligne 2 dans la direction opposée Direction P+R Ouest ainsi que les stationsqu’elle dessert.
    (8, 2, 'Lundi', '6:32'),
    (8, 2, 'Lundi', '6:42'),
    (8, 2, 'Lundi', '6:52'),
    (8, 2, 'Lundi', '7:00'),
    (8, 2, 'Lundi', '7:10'),

    (7, 2, 'Lundi', '6:34'),
    (7, 2, 'Lundi', '6:44'),
    (7, 2, 'Lundi', '6:54'),
    (7, 2, 'Lundi', '7:02'),
    (7, 2, 'Lundi', '7:12'),
    
    (6, 2, 'Lundi', '6:37'),
    (6, 2, 'Lundi', '6:47'),
    (6, 2, 'Lundi', '6:57'),
    (6, 2, 'Lundi', '7:06'),
    (6, 2, 'Lundi', '7:16'),

    (5, 2, 'Lundi', '6:42'),
    (5, 2, 'Lundi', '6:52'),
    (5, 2, 'Lundi', '7:02'),
    (5, 2, 'Lundi', '7:12'),
    (5, 2, 'Lundi', '7:22'),

    (4, 2, 'Lundi', '6:46'),
    (4, 2, 'Lundi', '6:56'),
    (4, 2, 'Lundi', '7:07'),
    (4, 2, 'Lundi', '7:17'),
    (4, 2, 'Lundi', '7:27'),

    (3, 2, 'Lundi', '6:50'),
    (3, 2, 'Lundi', '7:00'),
    (3, 2, 'Lundi', '7:11'),
    (3, 2, 'Lundi', '7:21'),
    (3, 2, 'Lundi', '7:31'),

    (2, 2, 'Lundi', '6:51'),
    (2, 2, 'Lundi', '7:01'),
    (2, 2, 'Lundi', '7:12'),
    (2, 2, 'Lundi', '7:22'),
    (2, 2, 'Lundi', '7:32'),

    (1, 2, 'Lundi', '6:55'),
    (1, 2, 'Lundi', '7:05'),
    (1, 2, 'Lundi', '7:16'),
    (1, 2, 'Lundi', '7:26'),
    (1, 2, 'Lundi', '7:36')
;
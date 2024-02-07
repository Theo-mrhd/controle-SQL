-- 1. Afficher la table des horaires dans l’ordre chronologique à l’arrêt Madelaine. Faire demême pour l’arrêt République.

SELECT d.horaire AS "Horaires à l'arrêt Madelaine (Lundi)"
FROM Deservir d
JOIN Station s ON d.id_station = s.id_station
WHERE s.nom_station = "Madeleine"
ORDER BY horaire ASC;

SELECT d.horaire AS "Horaires à l'arrêt République (Lundi)"
FROM Deservir d
JOIN Station s ON d.id_station = s.id_station
WHERE s.nom_station = "République"
ORDER BY horaire ASC;

-- 2. Afficher le parcours complet de la ligne 2 Direction Kersec (la liste des arrêts dans l’ordre de passage).

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT nom_station AS "Parcours de la ligne 2 Direction Kersec"
FROM Ligne l
JOIN Deservir d ON l.id_ligne = d.id_ligne
JOIN Station s ON d.id_station = s.id_station
WHERE nom_ligne = "Direction Kersec"
GROUP BY nom_station
ORDER BY horaire;

-- 5. Écrire la requête pour mettre à jour l’arrêt Petit Tohannic et la requête pour afficher lemessage.

SELECT
  nom_station AS "Horaires à l'arrêt Petit Tohannic (Lundi)",
  CASE 
    WHEN id_station_repli IS NOT NULL THEN CONCAT("Arrêt temporairement non desservi, veuillez vous reporter à l'arrêt ", (SELECT nom_station FROM Station WHERE id_station = s.id_station_repli))
    ELSE (
      SELECT GROUP_CONCAT(horaire ORDER BY horaire) 
      FROM Deservir d
      JOIN Station s ON d.id_station = s.id_station
      WHERE nom_station = 'Petit Tohannic'
    )
  END AS resultat
FROM Station s
WHERE nom_station = 'Petit Tohannic';

-- 7. Afficher pour chaque ligne, le parcours complet (liste des arrêts dans l’ordre de passage).

SELECT nom_ligne AS "Ligne", GROUP_CONCAT(nom_station ORDER BY horaire) as "Arrêts desservis"
FROM Deservir d
JOIN Ligne l ON d.id_ligne = l.id_ligne
JOIN Station s ON d.id_station = s.id_station
GROUP BY nom_ligne;

-- 8. Bonus: Étant donnés les besoins actuels sur votre base, et d’après sa structure, sur quelles colonnes serait-il judicieux de créer des indexs ? Pourquoi ?

-- Il serait judicieux de créer des index sur les colonnes id_station, id_ligne, jour et horaire car elles sont souvent utilisées dans des requêtes de selections
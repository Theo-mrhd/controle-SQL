# Contrôle SQL: Kicéo

- [Installation de la base](#installation-de-la-base)
  - [Création](#création)
  - [Ajout des données](#ajout-des-données)
  - [Requêtage](#requêtage)
- [Conception](#conception)
  - [Dictionnaire de données](#dictionnaire-de-données)
  - [Modèle relationnel de données](#modèle-relationnel-de-données)

## Installation de la base

### Création

Exécutez la commande suivante :

```p
mysql -h localhost -u root -p < schema.sql
```

### Ajout des données

Exécutez la commande suivante :

```p
mysql -h localhost -u root -p < data.sql
```

### Requêtage

Exécutez la commande suivante :

```p
mysql -h localhost -u root -p < requetes.sql
```

## Conception

### Dictionnaire de données

| Donnée       | Type                                                                            |
| ------------ | ------------------------------------------------------------------------------- |
| id_ligne     | `INT AUTO_INCREMENT`                                                            |
| numero_ligne | `INT`                                                                           |
| nom_ligne    | `VARCHAR(50)`                                                                   |
| horaire      | `TIME`                                                                          |
| jour         | `ENUM('Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi', 'Dimanche')` |

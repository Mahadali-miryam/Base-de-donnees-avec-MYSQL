PROJET BASE DE DONNÉES TIFOSI
DESCRIPTION
Ce projet consiste à concevoir une base de données dynamique pour le restaurant "Le Tifosi", spécialisé dans la street-food italienne.
La base de données permet de gérer les informations sur :

Les focaccias
Les ingrédients
Les marques
Les boissons
PRÉ-REQUIS
Avant de commencer, assurez-vous d'avoir :

Serveur MySQL (via WAMP, XAMPP, ou autre).
phpMyAdmin pour l’administration des bases de données.
Un outil pour exécuter des scripts SQL (phpMyAdmin ou MySQL Workbench).
CONTENU DU PROJET
Le projet contient les fichiers suivants :

Script de structure (structure_tifosi.sql) : permet de créer la base de données, les tables et leurs relations.
Script de peuplement (populate_tifosi.sql) : insère des données de test dans les tables.
Script de sauvegarde (backup_tifosi.sql) : sauvegarde complète de la base de données (structure + données).
INSTALLATION ET CONFIGURATION
Étape 1 : Création de la base de données
Connectez-vous à phpMyAdmin.
Créez une base de données nommée tifosi.
Créez un utilisateur nommé tifosi avec :
Un mot de passe sécurisé.
Tous les droits attribués sur la base de données tifosi.
Étape 2 : Importation des scripts
Importez le fichier structure_tifosi.sql pour créer la structure de la base de données.
Importez le fichier populate_tifosi.sql pour insérer les données de test.
Étape 3 : Sauvegarde
Pour restaurer la base de données en cas de besoin, utilisez le fichier backup_tifosi.sql.
REMARQUES IMPORTANTES
Vérifiez que vos scripts s’exécutent sans erreur dans phpMyAdmin.
Assurez-vous que l’utilisateur tifosi a bien les privilèges nécessaires pour administrer la base.



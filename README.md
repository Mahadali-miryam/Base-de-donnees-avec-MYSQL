PROJET BASE DE DONNÉES TIFOSI

DESCRIPTION

Ce projet vise à concevoir une base de données dynamique pour le restaurant "Le Tifosi", spécialisé dans la street-food italienne. 

La base de données permet de gérer les informations sur les focaccias, les ingrédients, les marques et les boissons.
---------------------------------------------------------------------------------------------------------------------------------------------

PRÉ-REQUIS 

Serveur MySQL (via WAMP )
phpMyAdmin pour l’administration des bases de données
Outil pour exécuter des scripts SQL (phpMyAdmin)
----------------------------------------------------------------------------------------------------------------------------------------------

CONTENU DU PROJET

Le projet contient les éléments suivants :
-
Script de structure (structure_tifosi.sql) : permet de créer la base de données, les tables et leurs relations.
-
Script de peuplement (populate_tifosi.sql) : insère des données de test dans les tables.
-
Script de sauvegarde (backup_tifosi.sql) : sauvegarde complète de la base de données (structure + données).
-----------------------------------------------------------------------------------------------------------------------------------------------

INSTALLATION ET CONFIGURATION

Étape 1 : Création de la base de données-

Connectez-vous à phpMyAdmin.

Créez une base de données nommée tifosi.

Créez un utilisateur nommé tifosi avec un mot de passe sécurisé, et attribuez-lui tous les droits sur cette base.

Étape 2 : Importation des scripts
Importez le fichier structue_tifosi.sql pour créer la structure de la base.
Importez le fichier populate_tifosi.sql pour insérer les données de test.

Étape 3 : Sauvegarde
Utilisez le fichier backup_tifosi.sql pour restaurer la base en cas de besoin.


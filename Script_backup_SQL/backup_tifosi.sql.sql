-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 19 déc. 2024 à 09:46
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--
CREATE DATABASE IF NOT EXISTS `tifosi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tifosi`;

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
CREATE TABLE IF NOT EXISTS `boisson` (
  `id_boisson` int NOT NULL AUTO_INCREMENT,
  `id_marque` int NOT NULL,
  `nom_boisson` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `marque` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `id_marque` (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `id_marque`, `nom_boisson`, `marque`) VALUES
(1, 0, 'Coca-cola zéro', 'Coca-cola'),
(2, 0, 'Coca-cola original', 'Coca-cola'),
(3, 0, 'Fanta citron', 'Fanta'),
(4, 0, 'Fanta orange', 'Fanta'),
(5, 0, 'Capri-sun', 'Capri-sun'),
(6, 0, 'Pepsi', 'Pepsico'),
(7, 0, 'Pepsi Max Zéro', 'Pepsico'),
(8, 0, 'Lipton zéro citron', 'Lipton'),
(9, 0, 'Lipton Peach', 'Lipton'),
(10, 0, 'Monster energy ultra blue', 'Monster'),
(11, 0, 'Monster energy ultra blue', 'Monster'),
(12, 0, 'Eau de source', 'Cristalline');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `age` int NOT NULL,
  `cp_client` int NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client_focaccia`
--

DROP TABLE IF EXISTS `client_focaccia`;
CREATE TABLE IF NOT EXISTS `client_focaccia` (
  `id_client` int NOT NULL,
  `id_focaccia` int NOT NULL,
  `jour` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id_client`,`id_focaccia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client_menu`
--

DROP TABLE IF EXISTS `client_menu`;
CREATE TABLE IF NOT EXISTS `client_menu` (
  `id_client` int NOT NULL,
  `id_menu` int NOT NULL,
  `jour` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id_client`,`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
CREATE TABLE IF NOT EXISTS `focaccia` (
  `id_focaccia` int NOT NULL,
  `nom_focaccia` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prix` float NOT NULL,
  `ingrédients` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_focaccia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix`, `ingrédients`) VALUES
(1, 'nom_focaccia', 0, 'ingrédients'),
(2, 'Mozaccia', 9.8, 'Base tomate, Mozarella, cresson, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire'),
(3, 'Gorgonzollaccia', 10.8, 'Base tomate, Gorgonzola, cresson, ail, champignon, parmesan, poivre, olive noire'),
(4, 'Raclaccia', 8.9, 'Base tomate, raclette, cresson, ail, champignon, parmesan, poivre'),
(5, 'Emmentalaccia', 9.8, 'Base crème, Emmental, cresson, champignon, parmesan, poivre, oignon'),
(6, 'Tradizione', 8.9, 'Base tomate, Mozarella, cresson, jambon cuit, champignon, parmesan, poivre, olive noire, olive verte'),
(7, 'Hawaienne', 11.2, 'Base tomate, Mozarella, cresson, bacon, ananas, piment, parmesan, poivre, olive noire'),
(8, 'Américaine', 10.8, 'Base tomate, Mozarella, cresson, bacon, pomme de terre, parmesan, poivre, olive noire'),
(9, 'Paysanne', 12.8, 'Base crème, Chèvre, cresson, pomme de terre, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire, œuf');

-- --------------------------------------------------------

--
-- Structure de la table `focaccia_ingredient`
--

DROP TABLE IF EXISTS `focaccia_ingredient`;
CREATE TABLE IF NOT EXISTS `focaccia_ingredient` (
  `id_focaccia` int NOT NULL,
  `id_ingredient` int NOT NULL,
  PRIMARY KEY (`id_focaccia`,`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id_ingredient` int NOT NULL,
  `nom_ingredient` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(0, 'nom_ingredient'),
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `id_marque` int NOT NULL,
  `nom_marque` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(0, 'nom_marque'),
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico'),
(5, 'Fanta'),
(6, 'Capri-sun');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `id_focaccia` int NOT NULL,
  `nom_menu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prix_menu` float NOT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `id_focaccia` (`id_focaccia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menu_boisson`
--

DROP TABLE IF EXISTS `menu_boisson`;
CREATE TABLE IF NOT EXISTS `menu_boisson` (
  `id_menu` int NOT NULL,
  `id_boisson` int NOT NULL,
  PRIMARY KEY (`id_menu`,`id_boisson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD CONSTRAINT `boisson_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

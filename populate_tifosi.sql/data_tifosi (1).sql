-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 13 déc. 2024 à 11:38
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

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `id_marque`, `nom_boisson`, `marque`) VALUES
(1, 0, 'nom_boisson', 'marque'),
(2, 0, 'Coca-cola zéro', 'Coca-cola'),
(3, 0, 'Coca-cola original', 'Coca-cola'),
(4, 0, 'Fanta citron', 'Coca-cola'),
(5, 0, 'Fanta orange', 'Coca-cola'),
(6, 0, 'Capri-sun', 'Coca-cola'),
(7, 0, 'nom_boisson', 'marque'),
(8, 0, 'Coca-cola zéro', 'Coca-cola'),
(9, 0, 'Coca-cola original', 'Coca-cola'),
(10, 0, 'Fanta citron', 'Coca-cola'),
(11, 0, 'Fanta orange', 'Coca-cola'),
(12, 0, 'Capri-sun', 'Coca-cola'),
(13, 0, 'nom_boisson', 'marque'),
(14, 0, 'Coca-cola zéro', 'Coca-cola'),
(15, 0, 'Coca-cola original', 'Coca-cola'),
(16, 0, 'Fanta citron', 'Coca-cola'),
(17, 0, 'Fanta orange', 'Coca-cola'),
(18, 0, 'Capri-sun', 'Coca-cola'),
(19, 0, 'Pepsi', 'Pepsico'),
(20, 0, 'Pepsi Max Zéro', 'Pepsico'),
(21, 0, 'Lipton zéro citron', 'Pepsico'),
(22, 0, 'Lipton Peach', 'Pepsico'),
(23, 0, 'Monster energy ultra gold', 'Monster'),
(24, 0, 'Monster energy ultra blue', 'Monster'),
(25, 0, 'Eau de source ', 'Cristalline');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

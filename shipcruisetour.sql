-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 19 déc. 2022 à 11:19
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shipcruisetour`
--

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `id_chambre` int(11) NOT NULL,
  `nom_chambre` varchar(30) NOT NULL,
  `id_type_chambre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `croisiere`
--

CREATE TABLE `croisiere` (
  `id_croisiere` int(11) NOT NULL,
  `id_navire` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `prix_croisr` float NOT NULL,
  `nombr_nuit` int(50) NOT NULL,
  `id_type_chambre` int(11) NOT NULL,
  `id_port_depart` int(11) NOT NULL,
  `id_iténairair_croisr` int(11) NOT NULL,
  `id_port_arrive` int(11) NOT NULL,
  `date_depart` date NOT NULL,
  `description_croisire` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `navire`
--

CREATE TABLE `navire` (
  `id_navire` int(11) NOT NULL,
  `nom_navire` varchar(80) NOT NULL,
  `nombr_chambre` int(11) NOT NULL,
  `nombr_place` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `port`
--

CREATE TABLE `port` (
  `id_port` int(11) NOT NULL,
  `nom_port` varchar(80) NOT NULL,
  `pays` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_croisiere` int(11) NOT NULL,
  `id_chambre` int(11) NOT NULL,
  `prix_reservation` float NOT NULL,
  `date_reservation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `type_chambre`
--

CREATE TABLE `type_chambre` (
  `id_type_chambre` int(11) NOT NULL,
  `nom_chambre` varchar(80) NOT NULL,
  `prix_chambre` double NOT NULL,
  `capacite_chambre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 pour les Clients / 1 pour les Admins'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`id_chambre`),
  ADD KEY `id_type_chambre` (`id_type_chambre`);

--
-- Index pour la table `croisiere`
--
ALTER TABLE `croisiere`
  ADD PRIMARY KEY (`id_croisiere`),
  ADD KEY `id_navire_forgn` (`id_navire`),
  ADD KEY `id_port_depart_forgn` (`id_port_depart`),
  ADD KEY `id_port_arrive_forgn` (`id_port_arrive`),
  ADD KEY `id_iténairair_croisr_forgn` (`id_iténairair_croisr`);

--
-- Index pour la table `navire`
--
ALTER TABLE `navire`
  ADD PRIMARY KEY (`id_navire`);

--
-- Index pour la table `port`
--
ALTER TABLE `port`
  ADD PRIMARY KEY (`id_port`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `id_client_forgn` (`id_client`),
  ADD KEY `id_croisiere_forgn` (`id_croisiere`),
  ADD KEY `id_chambre_forgn` (`id_chambre`);

--
-- Index pour la table `type_chambre`
--
ALTER TABLE `type_chambre`
  ADD PRIMARY KEY (`id_type_chambre`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `id_chambre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `croisiere`
--
ALTER TABLE `croisiere`
  MODIFY `id_croisiere` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `navire`
--
ALTER TABLE `navire`
  MODIFY `id_navire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `port`
--
ALTER TABLE `port`
  MODIFY `id_port` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `type_chambre`
--
ALTER TABLE `type_chambre`
  MODIFY `id_type_chambre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD CONSTRAINT `chambre_ibfk_1` FOREIGN KEY (`id_type_chambre`) REFERENCES `type_chambre` (`id_type_chambre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `croisiere`
--
ALTER TABLE `croisiere`
  ADD CONSTRAINT `id_iténairair_croisr_forgn` FOREIGN KEY (`id_iténairair_croisr`) REFERENCES `port` (`id_port`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_navire_forgn` FOREIGN KEY (`id_navire`) REFERENCES `navire` (`id_navire`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_port_arrive_forgn` FOREIGN KEY (`id_port_arrive`) REFERENCES `port` (`id_port`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_port_depart_forgn` FOREIGN KEY (`id_port_depart`) REFERENCES `port` (`id_port`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `id_chambre_forgn` FOREIGN KEY (`id_chambre`) REFERENCES `chambre` (`id_chambre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_client_forgn` FOREIGN KEY (`id_client`) REFERENCES `users` (`id_users`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_croisiere_forgn` FOREIGN KEY (`id_croisiere`) REFERENCES `croisiere` (`id_croisiere`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

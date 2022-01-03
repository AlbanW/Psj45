-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 03 jan. 2022 à 15:26
-- Version du serveur : 10.1.48-MariaDB-0ubuntu0.18.04.1
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `psj45`
--

-- --------------------------------------------------------

--
-- Structure de la table `AdminAccount`
--

CREATE TABLE `AdminAccount` (
  `UserName` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `LastConnection` datetime NOT NULL,
  `PasswordChange` datetime NOT NULL,
  `lvl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `AdminAccount`
--

INSERT INTO `AdminAccount` (`UserName`, `password`, `Email`, `LastConnection`, `PasswordChange`, `lvl`) VALUES
('a.dumoulin', '$2y$10$Spuk88jIIQ2xktSIMySJWe2oG3w6VAWA4/KQCdYZn0PIQTuMWjjN6', 'aurel.dml@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
('admin', '$2y$10$WYavfo2m3Cj/We2vmK2bmuww/ZmxOpnwfHiQneJu0OfBHtqgG23qS', 'marcvirgili.contact@gmail.com', '2022-01-03 15:15:21', '2021-07-01 19:49:22', 4),
('c.pallot', '$2y$10$7Mv8opiia6TnSlds3Dw90eh2OPEWnQkiKOxcPlBQuMaT6Tw1UG0h6', 'celienpallot@gmail.com', '2021-10-06 18:01:26', '2021-10-06 18:01:01', 0),
('f.brioche', '$2y$10$7oWmBqjQUesEk.Brbuwbv.Y4A/M6UntMV3R4gXEw6QiUNXMkhe6vS', 'francis.brioche@orange.fr', '2021-12-30 10:59:41', '2021-08-17 17:48:30', 0),
('l.desherbais', '$2y$10$z73CKHPA0oeq8IF7kjfriOYHHJIqsZ5xlIAecZdRvHP2bJYfxwy4O', 'ldesherbais@gmail.com', '2021-10-21 17:18:27', '0000-00-00 00:00:00', 4),
('m.laguette', '$2y$10$MU1lo5a0cPEgOy9duHSwYeIUmW7hhXrNCNRf4BD3L0tQf5ZX7QrX6', 'muriele1804@hotmail.fr', '2021-10-22 20:51:03', '2021-10-20 18:54:40', 0),
('t.quetard', '$2y$10$w4CYApfzoqgLpEb9ypDLCOgHZR70/BR1vC2WvOjHoDq.zP4HzYv02', 'quetardt@gmail.com', '2021-12-04 13:41:32', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `banque`
--

CREATE TABLE `banque` (
  `Libellé_banque` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `banque`
--

INSERT INTO `banque` (`Libellé_banque`) VALUES
('Allianz Banque'),
('AXA Banque'),
('B For Bank'),
('Banque Accord'),
('Barclays'),
('BNP Paribas'),
('Boursorama Banque'),
('BRED'),
('Caisse d Epargne'),
('Cetelem'),
('CIC'),
('Coopabanque'),
('Cortal Consors'),
('Crédit agricole'),
('Crédit coopératif'),
('Crédit du nord'),
('Crédit Foncier'),
('Crédit mutuel'),
('Fortis Banque'),
('Fortuneo'),
('Groupama Banque'),
('Hello bank'),
('HSBC'),
('ING Direct'),
('La Banque Postale'),
('LCL'),
('Monabanq'),
('Société Générale'),
('Autre banque');

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE `famille` (
  `Numéro` int(11) NOT NULL,
  `Nom_famille` varchar(50) DEFAULT NULL,
  `Adresse` varchar(100) DEFAULT NULL,
  `Ville` varchar(100) DEFAULT NULL,
  `Tel_mobile` char(10) DEFAULT NULL,
  `Tel_domicile` char(10) DEFAULT NULL,
  `Tel_travail` char(10) DEFAULT NULL,
  `Email_perso` varchar(50) DEFAULT NULL,
  `Email_travail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `famille`
--

INSERT INTO `famille` (`Numéro`, `Nom_famille`, `Adresse`, `Ville`, `Tel_mobile`, `Tel_domicile`, `Tel_travail`, `Email_perso`, `Email_travail`) VALUES
(1, 'ABICHOU', '10 rue Jules Lenormand', '45140 ST JEAN DE LA RUELLE', '0611866503', '', '', 'aicha45140@gmail.com', ''),
(2, 'AIME', '11 rue Jean Painlévé', '45140 ST JEAN DE LA RUELLE', '0665402285', '0238433929', '', 'sharandrea@yahoo.fr', ''),
(3, 'ALLOUARD', '11 RUE MELUSINE', '45140 BOULAY LES BARRES', '0630242254', '', '', 'flomelusine@gmail.com', ''),
(4, 'AUBERT', '8 rue des Fusilles 1940-1944    ', '45000 ORLEANS', '0680363042', '0238657110', '', 'caubert@gmf.fr', ''),
(5, 'AUMOND', '47 rue de Charville', '28140 TERMINIERS', '0619840696', '0237321907', '', 'garros.sylvie@sfr.fr', ''),
(6, 'AVICE', '15 rue du Haut Vert', '45130 EPIEDS EN BEAUCE', '0663600367', '', '', 'angela.aol33@gmail.com', ''),
(7, 'BEAUSSANT', '6 rue du general Sarrail', '45000 ORLEANS', '0682005153', '0983036296', '', 'bf.beaussant@gmail.com', ''),
(8, 'BECHROURI', '2 rue des Diamants', '45140 ST JEAN DE LA RUELLE', '', '', '', '', ''),
(9, 'BELLENGER', '23 rue du Faubourg Bannier', '45000 ORLEANS', '0629339152', '0238622165', '', 'maxence.bellenger@laposte.net', ''),
(10, 'BENJELLOUN', '5 rue des Rets', '45000 ORLEANS', '0638653947', '', '', 'benjellounwiwi@hotmail.fr', ''),
(11, 'BERAULT', '22 Rue du Poirier', '45140 ST JEAN DE LA RUELLE', '0659347600', '0238220602', '', 'tberault@gmail.com', ''),
(12, 'BERNARD-COQUARD', '35 rue Paul Gauguin', '45140 ST JEAN DE LA RUELLE', '0667124363', '', '', 'eleacoquard@gmail.com', ''),
(13, 'BERTRAND', '63 rue basse d\'infe', '45000 ORLEANS', '', '', '', '', ''),
(14, 'BESNARD', '4 rue des echelles', '36320 VILLEDIEU SUR INDRE', '0783785931', '', '', 'educsees.section@apirjso.fr', ''),
(15, 'BEZY', '12 rue Marcel Reggui', '45140 ST JEAN DE LA RUELLE', '', '', '', '', ''),
(16, 'BLITTE', '8 RESIDENCE ST EXUPERY', '45310 PATAY', '0621178330', '0238801965', '', 'thibault.blitte@yahoo.fr', ''),
(17, 'BODARD', '10 rue Pierre Loti', '45140 ST JEAN DE LA RUELLE', '0624175421', '', '', 'julie.bodard45@gmail.com', ''),
(18, 'BOUDOUASSEL', '1 rue M-C Vaillant Couturier', '45140 ST JEAN DE LA RUELLE', '0628602585', '0950666537', '', 'faissal_1982@yahoo.fr', ''),
(19, 'BOUGNOUX', '15 Rue de la Grade', '45140 ST JEAN DE LA RUELLE', '0683283244', '0238885633', '', 'sandrine.laine55@sfr.fr', ''),
(20, 'BOUILHET', '7 rue Paul Doumer', '45140 ST JEAN DE LA RUELLE', '0643936396', '0238629175', '', 'catherine.blandin@wanadoo.fr', ''),
(21, 'BOULANGER', '28 rue de la madelaine', '45140 ST JEAN DE LA RUELLE', '0698401404', '0298479319', '', 'boulanger.n@gmail.com', ''),
(22, 'BRIOCHE', '30E, rue Pierre de Ronsard', '45400 SEMOY', '642870658', '0238734487', '', 'francis.brioche@orange.fr', ''),
(23, 'BROTHIER', '14 quai cypierre', '45000 ORLEANS', '0660029198', '', '', 'lbrothier@gmail.com', ''),
(24, 'BRULERE', '10 rue de la Vaudiere', '45140 ST JEAN DE LA RUELLE', '0652522763', '', '', 'ermainb@gmail.com', ''),
(25, 'BUREAU', '1 RUE DES ESCURES', '45400 FLEURY LES AUBRAIS', '', '', '', '', ''),
(26, 'CALISTO', '3 allee de la Paix', '45140 ST JEAN DE LA RUELLE', '0630775997', '0238613104', '', 'luciecorneat@hotmail.com', ''),
(27, 'CARRE', '16 RUE ROBERT LE PIEUX', '45000 ORLEANS', '', '0631576609', '', '', ''),
(28, 'CAUX', '9 RUE DES BLEUETS', '45140 INGRE', '0613806046', '', '', 'gcaux@hotmail.fr', ''),
(29, 'CAVIER-PAREAU', '6 rue des emeraudes', '45140 ST JEAN DE LA RUELLE', '0771752320', '0771759879', '', 'cendrillon4145@live.fr', ''),
(30, 'CHANTELOUX', '8 route de st denis', '45450 DONNERY', '0670500605', '0234500451', '', 'chanteloux.frederic@neuf.fr', ''),
(31, 'CHANUT', '6 rue Bernard Million', '45140 ST JEAN DE LA RUELLE', '0682048621', '', '', 'chris_chanut@yahoo.fr', ''),
(32, 'CHAUVEAU', '9 route nationale', '45130 EPIEDS EN BEAUCE', '', '', '', '', ''),
(33, 'CHAUVETTE', '9 rue DOMUSE', '45170 NEUVILLE AUX BOIS', '0684515887', '', '', 'coach.ping45@orange.fr', ''),
(34, 'CHEVALIER', '9 rue des fauvettes', '45760 BOIGNY SUR BIONNE', '0689474403', '0238759573', '', 'eliochevalier@yahoo.fr', ''),
(35, 'CHICHERY CONDE', '36 rue des Chaises', '45140 ST JEAN DE LA RUELLE', '0623351157', '', '', 'berchiche@gmail.com', ''),
(36, 'CISSÉ', '6 rue Jean Baptiste Massillon', '45000 ORLEANS', '0669264184', '', '', 'JULESKHADY@HOTMAIL.FR', ''),
(37, 'CLEMENT', '21 RUE SAINT CÔME', '45000 ORLEANS', '0687129369', '', '', 'julien.clement1234@gmail.com', ''),
(38, 'COLLIN', '64 rue masse', '45000 ORLEANS', '0670809391', '', '', '', ''),
(39, 'COMPAGNET', '12 rue chivache', '45140 INGRE', '0674006470', '', '', 'ninine.faure@wanadoo.fr', ''),
(40, 'CREICHE', '28 bis rue Nationale', '45190 CRAVANT', '0660782334', '0243692596', '', 'fctconseils@gmail.com', ''),
(41, 'DA FONSECA', '102 rue Gambetta', '45140 ST JEAN DE LA RUELLE', '0665927425', '0238887445', '', 'richarddafonseca@yahoo.fr', ''),
(42, 'DE MATOS', '193 rue de Pimelin', '45770 SARAN', '0625181046', '0238721982', '', 'tonio45.dematos@gmail.com', ''),
(43, 'DEBOURG', '3 Rue de la Patiniere', '37270 MONTLOUIS SUR LOIRE', '0782134517', '0247450463', '', 'debourg.loic@gmail.com', ''),
(44, 'DELMAS', '5 place Condorcet', '45140 ST JEAN DE LA RUELLE', '0699361259', '0245483523', '', 'legand.jennifer@sfr.fr', ''),
(45, 'DEPARDAY', '8 avenue du pin', '85300 CHALLANS', '0643852641', '', '', 'hien.nanou@gmail.com', ''),
(46, 'DESHERBAIS', '20, Rue des Coudriers', '45140 ORMES', '0619812742', '', '', 'ldesherbais@gmail.com', ''),
(48, 'DIARRA', '5 rue des Amethystes', '45140 ST JEAN DE LA RUELLE', '0625683366', '', '', 'yannickdiarra46@gmail.com', ''),
(49, 'DOLBEAU', '60 Rue du Petit Chasseur', '45000 ORLEANS', '0676599254', '0238725422', '', 'gregoire.dolbeau@gmail.com', ''),
(50, 'DUMAND', '14 Rue Guillaume de Lorris', '45000 ORLEANS', '0622292721', '', '', 'eric.dumand@gmail.com', ''),
(51, 'DUMOULIN', '128 rue de l\'herpiniere', '45430 CHECY', '0601443137', '0218692155', '', 'aurel.dml@gmail.com', ''),
(52, 'DUPRAT', '40 B rue de Coulmiers', '45000 ORLEANS', '0782016824', '', '', 'writetofranck@yahoo.fr', ''),
(53, 'EL BANAISSATI-A', '46 rue des Beryls', '45140 ST JEAN DE LA RUELLE', '0687047296', '', '', 'messao45140@gmail.com', ''),
(54, 'EL BANAISSATI-M', '33 rue des chaises', '45140 ST JEAN DE LA RUELLE', '0645616769', '', '', 'psj45@orange.fr', ''),
(55, 'ERGIN-KARACA', '21 rue des Amethystes', '45140 ST JEAN DE LA RUELLE', '0672665144', '', '', '', ''),
(56, 'FONTAINE', '6 allee de la Concorde', '45000 ORLEANS', '0699690950', '', '', 'ijarry@laposte.net', ''),
(57, 'FOURNIER', '79bis, Rue des Chaises', '45140 ST JEAN DE LA RUELLE', '', '0238433240', '', 'dominique.fournier2@free.fr', ''),
(58, 'GARCONNAT', '33 PLACE DROUOT', '45140 ST JEAN DE LA RUELLE', '', '0238720362', '', '', ''),
(59, 'GAUCHER', '1 rues des Emeraudes', '45140 ST JEAN DE LA RUELLE', '0662112170', '0234083597', '', 'g.christelle2@bbox.fr', ''),
(60, 'GAUTRON', '8 avenue du pin', '85300 CHALLANS', '0612285812', '', '', 'richardgautron@yahoo.fr', ''),
(61, 'GAYRARD', '12 B Rue François TRUFFAUT', '45140 ST JEAN DE LA RUELLE', '0614234047', '0953812903', '', 'jacq.gayrard@gmail.com', ''),
(62, 'GEORGE', '25 bd de Chateaudun', '45000 ORLEANS', '0661509566', '0238616516', '', 'enscie@yahoo.fr', ''),
(63, 'GERBE', '15 rue des Amethystes', '45140 ST JEAN DE LA RUELLE', '0662301735', '', '', '', ''),
(64, 'GIL', '32 ROUTE DES POIRIERS', '45380 CHAINGY', '0629973053', '0629973053', '', 'jorge.gil@aliceadsl.fr', ''),
(65, 'GIORGIS', '39 av de la petite Espere', '45140 ST JEAN DE LA RUELLE', '0683661884', '', '', 'giorgis.baptiste@gmail.com', ''),
(66, 'GIORGIS-JP', '39 AVENUE DE LA PETITE ESPERE', '45140 ST JEAN DE LA RUELLE', '0614631593', '0238432498', '', 'giorgis.jean-pierre@orange.fr', ''),
(67, 'GIRARD', '37 rue A. Gault', '45000 ORLEANS', '0761242528', '', '', 'xavier.girard45@gmail.com', ''),
(68, 'GRAFFE', '3 rue de la Suifferie', '45000 ORLEANS', '0610825903', '', '', 'sly77860@gmail.com', ''),
(69, 'GRILHAULT FONTAINES', '33 rue de Tarragonne', '45100 ORLEANS', '0676288085', '', '', 'alexisgdf@gmail.com', ''),
(70, 'GRIMONPONT', '8 RUE TEILHARD DE CHARDIN', '45100 ORLEANS', '0668289985', '', '', 'fred-grim@sfr.fr', ''),
(71, 'GUERIN VANNEAU', '12 rue Raymond Gaudry', '45140 ST JEAN DE LA RUELLE', '0771114981', '', '', 'Tguerin407@gmail.com', ''),
(72, 'GUILLEMAIN', '', ' ', '', '', '', '', ''),
(73, 'GUILLOT', '25 rue des Charrieres', '45000 ORLEANS', '0672828518', '0238435665', '', 'contact@stephaneguillot.com', ''),
(74, 'HERBIN', '126 av Clemenceau', '45140 ST JEAN DE LA RUELLE', '0686819980', '0238880023', '', '', ''),
(75, 'HERCENT-A', 'bât C 8 r Lahire', '45000 ORLEANS', '', '0238806669', '', 'andre.hercent@wanadoo.fr', ''),
(76, 'HERCENT-E', '9 RUE DE LA PAIX', '45000 ORLEANS', '', '0238623501', '', 'eric.hercent@club-internet.fr', ''),
(77, 'HERPIN-H', '140 rue des Alouettes', '45770 SARAN', '0667671324', '', '', 'patrickherpin@orange.fr', ''),
(78, 'HOULIERE', '4 venelle de la Boeche', '45000 ORLEANS', '0785200145', '0238681840', '', 'stephanie.yvan@wanadoo.fr', ''),
(79, 'HUBERT', '66 rue Paul Gauguin', '45140 ST JEAN DE LA RUELLE', '0685143417', '0238432966', '', 'erika.hubert@free.fr', ''),
(80, 'HURON', '8 impasse Bassada', '45130 MEUNG SUR LOIRE', '', '', '', 'nathalie.huron@free.fr', ''),
(81, 'JEAN', '64 rue Masse', '45000 ORLEANS', '0675276061', '', '', 'joffrey.collin@free.fr', ''),
(82, 'JOSSE-LAVERNOS', '51 rue Charles Beauhaire', '45140 ST JEAN DE LA RUELLE', '0612461138', '0983583083', '', 'francoise.lavernos@gmail.com', ''),
(83, 'JOSSET', '36 rue des Varennes', '37300 JOUE LES TOURS', '0661960783', '0236436074', '', 'francois.josset@neuf.fr', ''),
(84, 'JOURDAN MOREAU', '194 bis rue des Murlins', '45000 ORLEANS', '0685552123', '', '', 'lucinette.moreau@wanadoo.fr', ''),
(85, 'KARAOUI', '1 rue des Perles', '45140 ST JEAN DE LA RUELLE', '0673922842', '', '', 'akaraoui@ville-saintjeandelaruelle.fr', ''),
(86, 'KEMAYOU-TESSIER', '4 Rue des Sorbiers', '45140 ST JEAN DE LA RUELLE', '0682848956', '0238843961', '', 'sandrine.tessier.45@gmail.com', ''),
(87, 'KERDREUX', '14 clos des jardins de vincennes', '45470 LOURY', '0684754089', '0238707620', '', 'julien.kerdreux@hotmail.fr', ''),
(88, 'KIEFFER', '28 rue des Vignes', '45140 ORMES', '0633171868', '', '', 'jerome.kieffer@yahoo.com', ''),
(89, 'LAGUETTE', '41 rue des rubis', '45140 ST JEAN DE LA RUELLE', '', '', '', 'muriele1804@hotmail.fr', ''),
(90, 'LAMBOU', '196 rue des quintaux', '45770 SARAN', '0687184386', '0651456699', '', 'magali.dimitri@hotmail.fr', ''),
(91, 'LARQUET-CONNAN', '21 rue Damas Blanc', '45140 ST JEAN DE LA RUELLE', '0674901187', '', '', 'brslrqt@gmail.com', ''),
(92, 'LE GOFF', '41 rue du petit chasseur', '45000 ORLEANS', '0641597214', '', '', 'loic.legoff@laposte.net', ''),
(93, 'LEBAS', '9 rue Max Jacob', '45140 ST JEAN DE LA RUELLE', '0624758505', '0238727128', '', 'lebasf@yahoo.fr', ''),
(94, 'LEBOUX', '54 rue Jean Jaures', '45400 FLEURY LES AUBRAIS', '0619446304', '0953090310', '', 'familleleboux@free.fr', ''),
(95, 'LEFEVRE', '18 rue lazarre carnot', '45400 FLEURY LES AUBRAIS', '0650817083', '', '', 'carpentieragnes45@gmail.com', ''),
(96, 'LEGENDRE', '12 rue Louis Braille', '45000 ORLEANS', '0612621362', '', '', 'legendrelydie@netcourrier.com', ''),
(97, 'LEMAIRE', '51 B rue de la messe', '45000 ORLEANS', '0619314357', '', '', 'legueuxma@hotmail.fr', ''),
(98, 'LEMAIRE DE MARNE', '413 rue DES SABLONNIERES', '45770 SARAN', '0686164824', '0238411423', '', 'gae45.demarne@gmail.com', ''),
(99, 'LEMERET', '26 rue de la Jeunette', '45140 ST JEAN DE LA RUELLE', '0601231496', '0238438587', '', 'bruno.lemeret@sfr.fr', ''),
(100, 'LEMEUTHE', '14 rue des Hauts Champs', '45000 ORLEANS', '0601188280', '', '', '', ''),
(101, 'LENOIR', '375 rue du Nan', '45170 ST LYE LA FORET', '0631240877', '', '', 'lenoir_franck@yahoo.fr', ''),
(102, 'LESOURD', '161 bis route nationale', '45140 INGRE', '0652454586', '0769660329', '', 'thomles@hotmail.fr', ''),
(103, 'LHUILLIER', '12rue du clos St Gabriel', '45140 ST JEAN DE LA RUELLE', '0687700480', '0238883519', '', 'sicilhui@gmail.com', ''),
(104, 'LIMOUZY-S', '9 RUE DE LA DOMUSE', '45170 NEUVILLE AUX BOIS', '2631007339', '0238753789', '', 'stephanie.oger1977@orange.fr', ''),
(105, 'MAILLOT', '3 rue de la Suifferie', '45000 ORLEANS', '', '0610825903', '', 'adeline.gaurin@laposte.net', ''),
(106, 'MAKHLOUF', '16 rue Germaine Tillion', '45140 ST JEAN DE LA RUELLE', '0651896938', '', '', 'moufines45@free.fr', ''),
(107, 'MARIOLLE', '1 Rue Danton', '45400 FLEURY LES AUBRAIS', '0645479728', '', '', 'less-m@live.fr', ''),
(108, 'MARTINS', '109 rue Gambetta', '45140 ST JEAN DE LA RUELLE', '0766093359', '', '', 'wlk45@yahoo.fr', ''),
(109, 'MASLANKA', '6 Rue de la Planche', '45760 BOIGNY SUR BIONNE', '0787194971', '0238218994', '', 'magali.maslanka@wanadoo.fr', ''),
(110, 'MASSONNIERE-Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'MAURE', '38 rue de la Marmogne', '45140 ST JEAN DE LA RUELLE', '0673858753', '', '', 'sylvain.maure@wanadoo.fr', ''),
(112, 'MAURY-BOURLET', '81 Rue des Chaises', '45140 ST JEAN DE LA RUELLE', '0610454645', '0238884556', '', 'celromana@gmail.com', ''),
(113, 'MAZIERE', '390 RUE DE LA HAUTE MAISON', '45770 SARAN', '', '0238720724', '', '', ''),
(114, 'MAZUR', '12 RUE DES PETITS CLOS', '37260 ARTANNES SUR INDRE', '0615830937', '0238888761', '', '', ''),
(115, 'MERDRIGNAC', '223 rue des Murlins', '45000 ORLEANS', '0614082565', '', '', 'guigui.merdrignac@gmail.com', ''),
(116, 'MERLIN', '73 rue de Bagneux', '45140 ST JEAN DE LA RUELLE', '', '', '', '', ''),
(117, 'MEUNIER', '45 rue du Faubourg Bannier', '45000 ORLEANS', '0684895594', '', '', 'meunierfcaf@wanadoo.fr', ''),
(118, 'MICOULAUT-B', '44 rue des Closiers', '45000 ORLEANS', '', '0238433674', '', 'al-d@wanadoo.fr', ''),
(119, 'MONDOR', '38 Rue des Fontaines', '45140 ST JEAN DE LA RUELLE', '0620723494', '0632784006', '', 'mondorjeanlouis@gmail.com', ''),
(120, 'PALLOT', '18 rue de la Porte de Fer', '45380 LA CHAPELLE ST MESMIN', '0646175077', '', '', 'celienpallot@gmail.com', ''),
(121, 'PEROCHE', ' 8 RUE LAZARE CARNOT', '45100 ORLEANS', '0682941081', '0951384648', '', 'paul.peroche@laposte.net', ''),
(122, 'PETIT', '6 rue des emeraudes', '45140 ST JEAN DE LA RUELLE', '', '', '', '', ''),
(123, 'PICHON', '2 rue de la grosse pierre', '45140 INGRE', '0781609464', '0953514792', '', 'baptiste4521@gmail.com', ''),
(124, 'PORTHAULT', '422 rue Pimelin', '45770 SARAN', '0682037243', '0238730765', '', 'famille.acta@free.fr', ''),
(125, 'PRADELLE', '4 rue de Loigny', '45000 ORLEANS', '0633508343', '', '', 'asdefossez@hotmail.com', ''),
(126, 'QUETARD-T', '17 IMPASSE DU BOIS CHARMANT', '45100 ORLEANS', '0681826907', '0238660406', '', 'quetard.genevieve@wanadoo.fr', ''),
(127, 'QUETARD-N', '1 RUE GEORGES PAPELIER', '45000 ORLEANS', '0685472084', '0238660406', '', 'quetard.nicolas@gmail.com', ''),
(128, 'REMOND', '5 allee de la Bate d\'Or', '45140 ST JEAN DE LA RUELLE', '0642036241', '0238433364', '', 'drepha4@gmail.com', ''),
(129, 'ROBERT', '3 rue Henri Duvillard', '45000 ORLEANS', '0627810465', '0238549380', '', 'wfr3ch@hotmail.fr', ''),
(130, 'RODRIGUES DA SILVA', '1C, rue Francois Truffaut', '45140 ST JEAN DE LA RUELLE', '0650273440', '0236991808', '', 'solandir@hotmail.com', ''),
(131, 'ROUET', '20 RUE LOUISE DE LARNAGE', '45140 ORMES', '0618325891', '', '', 'ingrid.lambert@laposte.net', ''),
(132, 'SAMYH', '101 rue du 11 octobre', '45140 ST JEAN DE LA RUELLE', '', '0781177033', '', 'melaid@yahoo.fr', ''),
(133, 'SGHIR', '134 rue des Agates', '45140 ST JEAN DE LA RUELLE', '0064273889', '0234321878', '', 'houda488@yahoo.fr', ''),
(134, 'SIMON-B', '63 BIS CHEMIN DE CHAINGY', '45140 ST JEAN DE LA RUELLE', '', '0238725340', '', 'bernard.simon2@sfr.fr', ''),
(135, 'SIMON-R', '1 rue Danton', '45400 FLEURY LES AUBRAIS', '0645152131', '', '', 'ronan.sim@hotmail.com', ''),
(136, 'SIX', '460 rue des GRANDES BORDES', '45410 SOUGY', '0615386399', '0238741698', '', 'sixthierry@neuf.fr', ''),
(137, 'SOLON', '36 rue de la pucelle', '45590 ST CYR EN VAL', '0664250778', '0238579982', '', 'solon.frederic@sfr.fr', ''),
(138, 'TACCI', '191 rue des Poiriers', '45770 SARAN', '0620522624', '', '', 's.wiciak@free.fr', ''),
(139, 'TALLIH', '6 rue des fusilles 1940-1944', '45000 ORLEANS', '0688080081', '', '', 'chich45@hotmail.fr', ''),
(140, 'TARTIVOT', '2 rue de Verrines', '45300 ASCOUX', '0613416944', '0238881618', '', 'lenagi@laposte.net', ''),
(141, 'THOUVENIN', '60 bis rue Paul Doumer', '45140 ST JEAN DE LA RUELLE', '0631116888', '0238660627', '', 'milou.kanky@dbmail.com', ''),
(142, 'TIROT', '143 RUE PASSE DEBOUT', '45770 SARAN', '0643602526', '', '', 'brice.tirot@etu.univ-orleans.fr', ''),
(143, 'TOUCHAUD', '9 RUE ALBERT 1ER', '45000 ORLEANS', '', '0238427314', '', 'jean-luc.touchaud@wanadoo.fr', ''),
(144, 'TROJNAR', '7 rue Gustave Vapereau', '45000 ORLEANS', '0670392242', '0238623329', '', 'nathalie@trojnar.fr', ''),
(145, 'TROUSSARD', '132 rue du faubourg st Jean', '45000 ORLEANS', '0684052965', '', '', 'celie.troussard@gmail.com', ''),
(146, 'VINCENT-AGONDANOU', '10 rue du clos du renard', '45140 ST JEAN DE LA RUELLE', '0766808029', '0766687748', '', '', ''),
(152, 'TESTAJOUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'DUPONT MORETTI', '', '', '', '', '', '', ''),
(158, 'CLATOT', '4 Allée Marie Laurencin', '45800 St Jean de Braye ', '0672684271', '0238880248', '', 'fabienne.clatot@gmail.com', ''),
(159, 'GUIAVARCH', '14 rue Maurice DUBOIS', '45000 ORLEANS', '0658546809', '0238220644', '', 'louisguiavarch@laposte.net', ''),
(160, 'PERDEREAU', '94 rue Brise Bain', '45000 ORLEANS', '0619564796', '0238613353', '', 'steph-perdereau@gmail.com', ''),
(161, 'GIRAUD', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'TURKMEN', '16 rue Paul Doumer', '45140 SAINT JEAN DE LA RUELLE', '0760433838', '', '', 'hcurlu@gmail.com', ''),
(163, 'NIAF', '9 bis rue Max Jacob', '45140 SAINT JEAN DE LA RUELLE', '0675004488', '', '', '', ''),
(164, 'DELALANDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'PAVADE', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'GONCALVES -  NOVO', 'Appt 8 45 rue des Murlins', '45000 ORLEANS', '0695564398', '', '', 'goncalves-novo.thierry@orange.fr', ''),
(167, 'TOUTIN', '25 rue du Chateau d\'Eau', '45140 SAINT JEAN DE LA RUELLE', '0614267241', '', '', 'bhelo14@hotmail.fr', ''),
(168, 'PERIER', '93 rue des Chaises', '45140 SAINT JEAN DE LA RUELLE', '0628230887', '', '', 'franck.perier99@gmail.com', ''),
(169, 'DAHIA', '21 allée Claude Debussy', '45140 SAINT JEAN DE LA RUELLE', '0619893816', '', '', 'dahia.trade@gmail.com', ''),
(170, 'BARDALOU', '13 rue Croix Fauchet', '45140 SAINT JEAN DE LA RUELLE', '0645603837', '', '', 'mariongaste@hotmail.com', ''),
(171, 'GOINEAU', '35 rue de La Vaudière', '45140 SAINT JEAN DE LA RUELLE', '0781614112', '', '', 'mawashin@hotmail.fr', ''),
(172, 'GIGUET', '17 rue de la Vaudière', '45140 SAINT JEAN DE LA RUELLE', '0676818590', '0667470932', '', 'sangha.2983@gmail.com', ''),
(173, 'KLEIBER', '25 rue Jules Lenormand', '45140 SAINT JEAN DE LA RUELLE', '0627374341', '0679114550', '', 'kleibers@outlook.fr', ''),
(174, 'BOULKIR', '44 B, rue des Closiers', '45000 ORLEANS', '0750914823', '0658332997', '', 'massousdou@gmail.com', ''),
(175, 'MOIREZ', '60 chemin de Chaingy', '45140 SAINT JEAN DE LA RUELLE', '0663477007', '', '', 'gmo@nickel-chrome-services.com', ''),
(176, 'DEFRANCE', '5 rue Max Jacob', '45140 SAINT JEAN DE LA RUELLE', '0644705027', '', '', 'sylvette.defrance@gmail.com', ''),
(177, 'RAKOTOBE', '85 bis rue du Onze Octobre', '45140 SAINT JEAN DE LA RUELLE', '0623096185', '', '', 'rakt16@yahoo.fr', ''),
(178, 'PRIGENT', '68 rue de la Vaudière', 'St Jean de la Ruelle  45140', '', '', '', 'romain.prigent@orange.fr', ''),
(179, 'MABRIER', '12 rue des échats', 'St Jean de la Ruelle  45140', '0658201219', '', '', 'stephanie.manaranche@gmail.com', ''),
(180, 'POULAIN', '21 rue des Closiers', 'St Jean de la Ruelle  45140', '0776833284', '', '', 'torrescath@yahoo.fr', ''),
(181, 'QUINTIAO', '6 B rue Alexandre COLIN', 'La Chapelle st Mesmin 45380', '0669011762', '', '', 'julien.quintiao@gmail.com', 'julien@vroomiz.fr'),
(182, 'DHERDE', '42 rue des Aydes', 'SARAN', '0768128942', '0611174742', '0608015183', 'fabrice.dherde@hotmail.fr', ''),
(183, 'RIHOUM', '55 rue de la Grade', 'SAINT JEAN DE LA RUELLE', '0679123808', '', '', 'krihoum@hotmail.fr', ''),
(184, 'ZZZZZZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'HUART', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'DUPUY', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `libellé_opérations`
--

CREATE TABLE `libellé_opérations` (
  `Libellé` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `libellé_opérations`
--

INSERT INTO `libellé_opérations` (`Libellé`) VALUES
('Règlement Achat Fourniture'),
('Règlement Achat Service'),
('Règlement CI - Participation'),
('Règlement licence'),
('Règlement Finales par classement'),
('Règlement Repas AG'),
('Règlement Stage'),
('Règlement Vétéran Chpt - Inscription'),
('Règlement Vétéran Chpt - Repas'),
('Règlement Autre'),
('Don');

-- --------------------------------------------------------

--
-- Structure de la table `licencié`
--

CREATE TABLE `licencié` (
  `Numéro` int(11) NOT NULL,
  `Famille` varchar(50) DEFAULT NULL,
  `Nom_licencié` varchar(50) DEFAULT NULL,
  `Prénom_licencié` varchar(50) DEFAULT NULL,
  `Sexe` char(1) DEFAULT NULL,
  `Date_Naissance` date DEFAULT NULL,
  `Tel_mobile` char(10) DEFAULT NULL,
  `Tel_domicile` char(10) DEFAULT NULL,
  `Tel_travail` char(10) DEFAULT NULL,
  `Email_perso` varchar(50) DEFAULT NULL,
  `Email_travail` varchar(50) DEFAULT NULL,
  `Catégorie_1` char(1) DEFAULT NULL,
  `Catégorie_2` char(2) DEFAULT NULL,
  `Type_licence` varchar(10) DEFAULT NULL,
  `Participation_compétition_individuelle` char(2) DEFAULT NULL,
  `Saint_Jean_de_la_Ruelle` tinytext,
  `Numéro_licence` char(11) DEFAULT NULL,
  `Inscription` tinyint(1) DEFAULT NULL,
  `Date_inscription` char(10) DEFAULT NULL,
  `Certificat_médical` tinytext,
  `Nationalité` char(2) DEFAULT NULL,
  `Membre_bureau` tinytext,
  `1ere_licence` tinytext,
  `Autre_club` tinytext,
  `Essai` tinytext,
  `Handicap` tinytext,
  `Commentaire` varchar(100) DEFAULT NULL,
  `Stage_uniquement` tinytext,
  `Demie_tarif` tinytext,
  `Licence_gratuite` tinytext,
  `Participation_équipe_sénior` tinytext,
  `Autorisation_photo_vidéo` tinytext,
  `Loisir_hors_compétition` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `licencié`
--

INSERT INTO `licencié` (`Numéro`, `Famille`, `Nom_licencié`, `Prénom_licencié`, `Sexe`, `Date_Naissance`, `Tel_mobile`, `Tel_domicile`, `Tel_travail`, `Email_perso`, `Email_travail`, `Catégorie_1`, `Catégorie_2`, `Type_licence`, `Participation_compétition_individuelle`, `Saint_Jean_de_la_Ruelle`, `Numéro_licence`, `Inscription`, `Date_inscription`, `Certificat_médical`, `Nationalité`, `Membre_bureau`, `1ere_licence`, `Autre_club`, `Essai`, `Handicap`, `Commentaire`, `Stage_uniquement`, `Demie_tarif`, `Licence_gratuite`, `Participation_équipe_sénior`, `Autorisation_photo_vidéo`, `Loisir_hors_compétition`) VALUES
(1, 'ABICHOU', 'ABICHOU', 'Amine', 'M', '2011-06-14', '0611866503', '', '', 'aicha45140@gmail.com', '', NULL, NULL, NULL, '0', '0', NULL, 0, '', '0', 'FR', '0', '0', '0', '0', '', NULL, '0', '0', '0', '0', '0', NULL),
(2, 'AIME', 'AIME', 'Maxence', 'M', '2000-05-26', '0665402285', '0238433929', '', 'sharandrea@yahoo.fr', '', NULL, NULL, NULL, '0', '0', NULL, 0, '', '0', 'FR', '0', '0', '0', '0', '', NULL, '0', '0', '0', '0', '0', NULL),
(3, 'AIME', 'AIME', 'Stéphane', 'M', '1966-11-13', '0668739510', '0238433929', '', 'sharandrea@yahoo.fr', '', NULL, '', NULL, '0', '0', '', 0, '', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(4, 'ALLOUARD', 'ALLOUARD', 'Pierre', 'M', '2008-07-02', '0630242254', '', '', 'flomelusine@gmail.com', '', NULL, '', NULL, '0', '0', '', 0, '', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(5, 'AUBERT', 'AUBERT', 'Claude', 'M', '1959-10-11', '0680363042', '0238657110', '', 'caubert@gmf.fr', '', NULL, '', NULL, '0', '0', '', 0, '', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(6, 'AUMOND', 'AUMOND', 'Lucas', 'M', '2002-06-10', '0619840696', '0237321907', '', 'garros.sylvie@sfr.fr', '', 'S', '', 'TRADI', '1', '0', '', 1, '2021-09-15', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(7, 'AVICE', 'AVICE', 'William', 'M', '2012-03-30', '0663600367', '', '', 'angela.aol33@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 'BEAUSSANT', 'BEAUSSANT', 'Pierre', 'M', '2010-03-20', '0682005153', '0983036296', '', 'bf.beaussant@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'BEAUSSANT', 'BEAUSSANT', 'Thomas', 'M', '2011-09-03', '0682005153', '0983036296', '', 'bf.beaussant@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'BECHROURI', 'BECHROURI', 'Rayan', 'M', '2007-07-17', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'BELLENGER', 'BELLENGER', 'Maxence', 'M', '2005-05-27', '0629339152', '0238622165', '', 'maxence.bellenger@laposte.net', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 'BENJELLOUN', 'BENJELLOUN', 'Aimane', 'M', '2008-02-14', '0638653947', '', '', 'benjellounwiwi@hotmail.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 'BENJELLOUN', 'BENJELLOUN', 'Sofiane', 'M', '2009-07-17', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 'BERAULT', 'BERAULT', 'Thierry', 'M', '1963-01-16', '0659347600', '0238220602', '', 'tberault@gmail.com', '', 'V', '', 'TRADI', '0', '1', '', 1, '2021-09-24', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(15, 'BERNARD-COQUARD', 'BERNARD-COQUARD', 'Arthur', 'M', '2006-08-29', '0667124363', '', '', 'eleacoquard@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 'BERTRAND', 'BERTRAND', 'Sophie', 'F', '2004-08-15', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '0', '', '', '', '', '', '', '', '', '', '', ''),
(17, 'BESNARD', 'BESNARD', 'Remy', 'M', '2006-04-09', '0783785931', '', '', 'educsees.section@apirjso.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 'BEZY', 'BEZY', 'Evan', 'M', '2009-01-04', '0609230081', '', '', 'ludoetelo@live.fr', '', 'M', '', 'TRADI', '1', '1', '', 1, '2021-09-24', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(19, 'BEZY', 'BEZY', 'Kylian', 'M', '2005-12-19', '0609230081', '', '', '', '', 'C', '', 'TRADI', '0', '1', '', 1, '2021-09-24', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(20, 'BLITTE', 'BLITTE', 'Thibault', 'M', '1999-08-11', '0621178330', '0238801965', '', 'thibault.blitte@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 'BODARD', 'BODARD', 'Julie', 'F', '2000-02-05', '0624175421', '', '', 'julie.bodard45@gmail.com', '', 'S', '', 'TRADI', '1', '1', '', 1, '2021-09-14', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(22, 'BOUDOUASSEL', 'BOUDOUASSEL', 'Meriem', 'F', '2011-03-04', '0628602585', '0950666537', '', 'faissal_1982@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 'BOUDOUASSEL', 'BOUDOUASSEL', 'Mohamed', 'M', '2009-09-07', '0628602585', '0950666537', '', 'faissal_1982@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 'BOUGNOUX', 'BOUGNOUX', 'Tom', 'M', '2007-05-11', '0683283244', '0238885633', '', 'sandrine.laine55@sfr.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 'BOUILHET', 'BOUILHET', 'Jules', 'M', '2008-09-12', '0643936396', '0238629175', '', 'catherine.blandin@wanadoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 'BOULANGER', 'BOULANGER', 'Nicolas', 'M', '1984-04-14', '0698401404', '0298479319', '', 'boulanger.n@gmail.com', '', 'S', '', 'TRADI', '1', '1', '', 1, '2021-09-02', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(27, 'BRIOCHE', 'BRIOCHE', 'Francis', 'M', '1953-10-06', '0642870658', '0238734487', '', 'francis.brioche@orange.fr', '', 'V', '', 'TRADI', '0', '0', '', 1, '2021-09-21', '0', 'FR', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(28, 'BROTHIER', 'BROTHIER', 'Malo', 'M', '2007-10-12', '0660029198', '', '', 'lbrothier@gmail.com', '', 'M', '', 'TRADI', '1', '0', '', 1, '2021-09-15', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(29, 'BRULERE', 'BRULERE', 'Romain', 'M', '2001-05-14', '0652522763', '', '', 'ermainb@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 'BUREAU', 'BUREAU', 'Dominique', 'M', '1961-08-11', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 'CALISTO', 'CALISTO', 'Théo', 'M', '2011-10-26', '0630775997', '0238613104', '', 'luciecorneat@hotmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 'CARRE', 'CARRE', 'Steven', 'M', '1988-05-14', '', '0631576609', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 'CAUX', 'CAUX', 'Grégory', 'M', '1977-05-23', '0613806046', '', '', 'gcaux@hotmail.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 'CAVIER-PAREAU', 'CAVIER-PAREAU', 'Angelina', 'F', '2010-01-18', '0771752320', '0771759879', '', 'cendrillon4145@live.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 'CHANTELOUX', 'CHANTELOUX', 'Frederic', 'M', '1971-05-29', '0670500605', '0234500451', '', 'chanteloux.frederic@neuf.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 'CHANUT', 'CHANUT', 'Christian', 'M', '1977-07-11', '0682048621', '', '', 'chris_chanut@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 'CHAUVEAU', 'CHAUVEAU', 'Maëllys', 'F', '2009-05-04', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 'CHAUVETTE', 'CHAUVETTE', 'Christophe', 'M', '1971-07-13', '0684515887', '', '', 'coach.ping45@orange.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 'CHEVALIER', 'CHEVALIER', 'Elio', 'M', '2002-01-12', '0689474403', '0238759573', '', 'eliochevalier@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 'CHICHERY CONDE', 'CHICHERY CONDE', 'Arthur', 'M', '2005-05-23', '0623351157', '', '', 'berchiche@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 'CISSÉ', 'CISSÉ', 'Muhammad', 'M', '2008-02-10', '0669264184', '', '', 'JULESKHADY@HOTMAIL.FR', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 'CLEMENT', 'CLEMENT', 'Julien', 'M', '1992-11-19', '0687129369', '', '', 'julien.clement1234@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 'COLLIN', 'COLLIN', 'Charly', 'M', '2012-02-14', '0670809391', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 'COMPAGNET', 'COMPAGNET', 'Roxane', 'F', '2006-10-12', '0674006470', '', '', 'ninine.faure@wanadoo.fr', '', 'C', '', 'TRADI', '0', '0', '', 1, '2021-09-24', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(45, 'CREICHE', 'CREICHE', 'Florent', 'M', '1974-09-13', '0660782334', '0243692596', '', 'fctconseils@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 'DA FONSECA', 'DA FONSECA', 'Yohann', 'M', '2005-03-03', '0665927425', '0238887445', '', 'richarddafonseca@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 'DE MATOS', 'DE MATOS', 'Josua', 'M', '2006-03-28', '0625181046', '0238721982', '', 'tonio45.dematos@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 'DEBOURG', 'DEBOURG', 'Loic', 'M', '2001-04-27', '0782134517', '0247450463', '', 'debourg.loic@gmail.com', '', 'S', '', 'TRADI', '1', '0', '', 1, '2021-09-03', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(49, 'DELMAS', 'DELMAS', 'Evan', 'M', '2005-07-19', '0699361259', '0245483523', '', 'legand.jennifer@sfr.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 'DEPARDAY', 'DEPARDAY', 'Anne', 'F', '1965-07-25', '0643852641', '', '', 'hien.nanou@gmail.com', '', 'V', '', 'TRADI', '1', '0', '', 1, '2021-10-04', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(51, 'DESHERBAIS', 'DESHERBAIS', 'Laurent', 'M', '1972-03-19', '0619812742', '', '', 'ldesherbais@gmail.com', '', 'V', '', 'PROMO', '0', '0', '', 1, '2021-12-17', '0', 'FR', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(52, 'DESHERBAIS', 'DESHERBAIS', 'Paol', 'M', '2012-04-02', '0619812742', '', '', 'ldesherbais@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'DIARRA', 'DIARRA', 'Ines', 'F', '2011-05-30', '0625683366', '', '', 'yannickdiarra46@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, 'DIARRA', 'DIARRA', 'Yanis', 'M', '2011-05-30', '0625683366', '', '', 'dasnevescathy52@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 'DOLBEAU', 'DOLBEAU', 'Gregoire', 'M', '1988-07-13', '0676599254', '0238725422', '', 'gregoire.dolbeau@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'DUMAND', 'DUMAND', 'Raphaël', 'M', '2008-08-23', '0622292721', '', '', 'eric.dumand@gmail.com', '', 'M', '', 'PROMO', '0', '0', '', 1, '2021-09-03', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(58, 'DUMOULIN', 'DUMOULIN', 'Aurelien', 'M', '1993-07-06', '0601443137', '0218692155', '', 'aurel.dml@gmail.com', '', 'S', '', 'TRADI', '0', '0', '', 1, '2021-12-04', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '1', '1', '0', ''),
(60, 'DUPRAT', 'DUPRAT', 'Octave', 'M', '2007-03-17', '0782016824', '', '', 'writetofranck@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, 'EL BANAISSATI-A', 'EL BANAISSATI', 'Anas', 'M', '2007-10-07', '0687047296', '', '', 'messao45140@gmail.com', '', 'M', '', 'TRADI', '1', '1', '', 1, '2021-09-14', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(62, 'EL BANAISSATI-M', 'EL BANAISSATI', 'Mohamed ali', 'M', '2002-10-28', '0645616769', '', '', 'psj45@orange.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 'EL BANAISSATI-A', 'EL BANAISSATI', 'Qais', 'M', '2010-07-10', '0687047296', '', '', 'messao45140@gmail.com', '', 'B', '', 'TRADI', '1', '1', '', 1, '2021-09-24', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(64, 'EL BANAISSATI-A', 'EL BANAISSATI', 'Zakarya', 'M', '2004-01-03', '0687047296', '', '', 'psj45@orange.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 'ERGIN-KARACA', 'ERGIN-KARACA', 'Hasan', 'M', '2007-03-07', '0672665144', '', '', '', '', 'C', '', 'TRADI', '1', '1', '', 1, '2021-09-11', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(66, 'FONTAINE', 'FONTAINE', 'Antoine', 'M', '2012-08-27', '0699690950', '', '', 'ijarry@laposte.net', '', 'P', '', 'PROMO', '0', '0', '', 1, '2021-09-15', '0', 'FR', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(67, 'FOURNIER', 'FOURNIER', 'Julie', 'F', '1999-03-13', '', '0238433240', '', 'dominique.fournier2@free.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 'GARCONNAT', 'GARCONNAT', 'Laurence', 'F', '1964-09-10', '', '0238720362', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, 'GAUCHER', 'GAUCHER', 'Kévin', 'M', '2009-12-12', '0662112170', '0234083597', '', 'g.christelle2@bbox.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, 'DEPARDAY', 'GAUTRON', 'Richard', 'M', '1966-06-09', '0612285812', '', '', 'richardgautron@yahoo.fr', '', 'V', '', 'TRADI', '0', '0', '', 1, '2021-10-04', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(71, 'GAYRARD', 'GAYRARD', 'Jacqueline', 'F', '1940-03-29', '0614234047', '0953812903', '', 'jacq.gayrard@gmail.com', '', 'V', '', 'TRADI', '0', '1', '', 1, '2021-09-23', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(72, 'GEORGE', 'GEORGE', 'Sam', 'M', '2009-06-13', '0661509566', '0238616516', '', 'enscie@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(73, 'GERBE', 'GERBE', 'Anthony', 'M', '2005-09-08', '0662301735', '', '', '', '', 'J', '', 'TRADI', '1', '1', '', 1, '2021-10-20', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(74, 'GIL', 'GIL', 'Leslie', 'F', '2001-06-27', '0629973053', '0629973053', '', 'jorge.gil@aliceadsl.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 'GIORGIS-JP', 'GIORGIS', 'Baptiste', 'M', '1992-08-10', '0683661884', '', '', 'giorgis.baptiste@gmail.com', '', 'S', '', 'TRADI', '0', '0', '', 1, '2021-09-23', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(76, 'GIORGIS-JP', 'GIORGIS', 'Jean-pierre', 'M', '1958-10-31', '0614631593', '0238432498', '', 'giorgis.jean-pierre@orange.fr', '', 'V', '', 'TRADI', '0', '1', '', 1, '2021-09-23', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(77, 'GIRARD', 'GIRARD', 'Léonard', 'M', '2008-10-31', '0761242528', '', '', 'xavier.girard45@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, 'GRAFFE', 'GRAFFE', 'Sylvain', 'M', '1972-01-07', '0610825903', '', '', 'sly77860@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, 'GRILHAULT FONTAINES', 'GRILHAULT FONTAINES', 'Alexis', 'M', '1986-10-15', '0676288085', '', '', 'alexisgdf@gmail.com', '', 'S', '', 'TRADI', '0', '0', '', 1, '2021-09-24', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(80, 'GRIMONPONT', 'GRIMONPONT', 'Frederic', 'M', '1964-06-30', '0668289985', '', '', 'fred-grim@sfr.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, 'GUERIN VANNEAU', 'GUERIN VANNEAU', 'Theo', 'M', '2002-01-10', '0771114981', '', '', 'Tguerin407@gmail.com', '', 'S', '', 'TRADI', '0', '1', '', 1, '2021-09-24', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(82, 'GUILLEMAIN', 'GUILLEMAIN', 'David', 'M', '1985-06-07', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 'GUILLOT', 'GUILLOT', 'Stephane', 'M', '1970-01-06', '0672828518', '0238435665', '', 'contact@stephaneguillot.com', '', 'V', '', 'TRADI', '0', '0', '', 1, '2021-09-15', '1', 'FR', '1', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(84, 'HERBIN', 'HERBIN', 'Robert', 'M', '1931-05-11', '0686819980', '0238880023', '', '', '', 'V', '', 'TRADI', '0', '1', '', 1, '2021-10-21', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(85, 'HERCENT-A', 'HERCENT', 'André', 'M', '1934-09-23', '0643276334', '0238806669', '', 'andre.hercent@wanadoo.fr', '', 'V', '', 'TRADI', '0', '0', '', 1, '2021-09-02', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(86, 'HERCENT-E', 'HERCENT', 'Eric', 'M', '1963-08-26', '', '0238623501', '', 'eric.hercent@club-internet.fr', '', 'V', '', 'TRADI', '0', '0', '', 1, '2021-09-02', '0', 'FR', '1', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(87, 'HERPIN-H', 'HERPIN', 'Hugo', 'M', '2001-11-13', '0667671324', '', '', 'patrickherpin@orange.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, 'HERPIN-H', 'HERPIN', 'Nathan', 'M', '2005-06-18', '0667671324', '', '', 'patrickherpin@orange.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, 'HOULIERE', 'HOULIERE', 'Yvan', 'M', '1972-07-27', '0785200145', '0238681840', '', 'stephanie.yvan@wanadoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, 'HUBERT', 'HUBERT', 'Isaline', 'F', '2002-07-31', '0685143417', '0238432966', '', 'erika.hubert@free.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, 'HURON', 'HURON', 'Nathalie', 'F', '1964-05-20', '0768872027', '0238444745', '', 'nathalie.huron@free.fr', '', 'V', '', 'TRADI', '0', '0', '', 1, '2021-09-15', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(92, 'JEAN', 'JEAN', 'Tiphanie', 'F', '2008-08-11', '0675276061', '', '', 'joffrey.collin@free.fr', '', 'M', '', 'TRADI', '1', '0', '', 1, '2021-10-08', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '1', ''),
(93, 'JOSSE-LAVERNOS', 'JOSSE-LAVERNOS', 'Côme', 'M', '2007-01-09', '0612461138', '0983583083', '', 'francoise.lavernos@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(94, 'JOSSET', 'JOSSET', 'Lola', 'F', '2001-09-25', '0661960783', '0236436074', '', 'francois.josset@neuf.fr', '', 'S', '', 'TRADI', '0', '0', '', 1, '2021-09-23', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(95, 'JOURDAN MOREAU', 'JOURDAN MOREAU', 'Lucie', 'F', '1973-06-23', '0685552123', '', '', 'lucinette.moreau@wanadoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(96, 'KARAOUI', 'KARAOUI', 'Jebril', 'M', '2008-10-01', '0673922842', '', '', 'akaraoui@ville-saintjeandelaruelle.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(97, 'KEMAYOU-TESSIER', 'KEMAYOU-TESSIER', 'Jul', 'M', '2006-06-29', '0682848956', '0238843961', '', 'sandrine.tessier.45@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(98, 'KERDREUX', 'KERDREUX', 'Julien', 'M', '1978-01-30', '0684754089', '0238707620', '', 'julien.kerdreux@hotmail.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(99, 'KIEFFER', 'KIEFFER', 'Jérôme', 'M', '1980-04-05', '0633171868', '', '', 'jerome.kieffer@yahoo.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(100, 'LAGUETTE', 'murièle LAGUETTE', 'Muriele', 'F', '1968-04-18', '0650807248', '', '', 'muriele1804@hotmail.fr', '', 'V', '', 'TRADI', '0', '0', '', 1, '2021-10-21', '0', 'FR', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(101, 'LAMBOU', 'LAMBOU', 'Yoann', 'M', '2009-04-12', '0687184386', '0651456699', '', 'magali.dimitri@hotmail.fr', '', 'M', '', 'TRADI', '1', '0', '', 1, '2021-10-21', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(102, 'LARQUET-CONNAN', 'LARQUET-CONNAN', 'Yoan', 'M', '2008-05-06', '0674901187', '', '', 'brslrqt@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(103, 'LE GOFF', 'LE GOFF', 'Loïc', 'M', '1970-12-27', '0641597214', '', '', 'loic.legoff@laposte.net', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(104, 'LEBAS', 'LEBAS', 'Corentin', 'M', '2002-10-25', '0624758505', '0238727128', '', 'lebasf@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(105, 'LEBOUX', 'LEBOUX', 'Maël', 'M', '2002-09-02', '0619446304', '0953090310', '', 'familleleboux@free.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(106, 'LEFEVRE', 'LEFEVRE', 'Jules', 'M', '2009-01-24', '0650817083', '', '', 'carpentieragnes45@gmail.com', '', 'M', '', 'PROMO', '0', '0', '', 1, '2021-09-11', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(107, 'LEGENDRE', 'LEGENDRE', 'Charles', 'M', '2001-07-23', '0612621362', '', '', 'legendrelydie@netcourrier.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(108, 'LEMAIRE', 'LEMAIRE', 'Sarah', 'F', '2008-11-29', '0619314357', '', '', 'legueuxma@hotmail.fr', '', 'M', '', 'TRADI', '1', '0', '', 1, '2021-09-23', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(109, 'LEMAIRE DE MARNE', 'LEMAIRE DE MARNE', 'Gaëtan', 'M', '2002-08-07', '0686164824', '0238411423', '', 'gae45.demarne@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(110, 'LEMERET', 'LEMERET', 'Clément', 'M', '2002-05-08', '0601231496', '0238438587', '', 'bruno.lemeret@sfr.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(111, 'LEMEUTHE', 'LEMEUTHE', 'Tom', 'M', '2001-07-20', '0601188280', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(112, 'LENOIR', 'LENOIR', 'Gabin', 'M', '2012-02-23', '0631240877', '', '', 'lenoir_franck@yahoo.fr', '', 'P', '', 'TRADI', '1', '0', '', 1, '2021-09-02', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(113, 'LESOURD', 'LESOURD', 'Mathis', 'M', '2007-06-16', '0652454586', '0769660329', '', 'thomles@hotmail.fr', '', 'C', '', 'TRADI', '1', '0', '', 1, '2021-09-02', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(114, 'LHUILLIER', 'LHUILLIER', 'Léandro', 'M', '2006-08-05', '0687700480', '0238883519', '', 'sicilhui@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(115, 'LIMOUZY-S', 'LIMOUZY', 'Clément', 'M', '2005-08-02', '2631007339', '0238753789', '', 'stephanie.oger1977@orange.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(116, 'LIMOUZY-S', 'LIMOUZY', 'Emma', 'F', '2002-12-09', '0631007339', '', '', 'stephanie.oger1977@orange.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(117, 'MAILLOT', 'MAILLOT', 'Eliot', 'M', '2008-12-21', '', '0610825903', '', 'adeline.gaurin@laposte.net', '', 'M', '', 'TRADI', '1', '0', '', 1, '2021-09-23', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(118, 'MAKHLOUF', 'MAKHLOUF', 'Aymen', 'M', '2008-11-04', '0651896938', '', '', 'moufines45@free.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(119, 'MARIOLLE', 'MARIOLLE', 'Leslie', 'F', '1987-02-16', '0645479728', '', '', 'less-m@live.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(120, 'MARTINS', 'MARTINS', 'Lucenzo', 'M', '2010-10-18', '0766093359', '', '', 'wlk45@yahoo.fr', '', 'B', '', 'PROMO', '0', '1', '', 1, '2021-09-23', '0', 'FR', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(121, 'MASLANKA', 'MASLANKA', 'Claire', 'F', '2001-12-06', '0787194971', '0238218994', '', 'c.maslanka@mail.fr', '', 'S', '', 'TRADI', '1', '0', '', 1, '2021-09-03', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(122, 'MASSONNIERE-Y', 'MASSONNIERE', 'Gabriel', 'M', '2011-05-19', '0616192825', '0238721143', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(123, 'MASSONNIERE-Y', 'MASSONNIERE', 'Yael', 'M', '2008-07-18', '0616192825', '0238721143', '', 'aureli.moreau@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(124, 'MAURE', 'MAURE', 'Sylvain', 'M', '1969-11-08', '0673858753', '', '', 'sylvain.maure@wanadoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(125, 'MAURY-BOURLET', 'MAURY-BOURLET', 'Romain', 'M', '2007-01-17', '0610454645', '0238884556', '', 'celromana@gmail.com', '', 'C', '', 'TRADI', '1', '1', '', 1, '2021-09-15', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(126, 'MAZIERE', 'MAZIERE', 'Thomas', 'M', '1989-09-12', '', '0238720724', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(127, 'MAZUR', 'MAZUR', 'Frederic', 'M', '1961-05-28', '0615830937', '0238888761', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, 'MERDRIGNAC', 'MERDRIGNAC', 'Guillaume', 'M', '2001-10-28', '0614082565', '', '', 'guigui.merdrignac@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(129, 'MERLIN', 'MERLIN', 'Lucas', 'M', '2006-09-09', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(130, 'MEUNIER', 'MEUNIER', 'Frédéric', 'M', '1974-04-20', '0684895594', '', '', 'meunierfcaf@wanadoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(131, 'MICOULAUT-B', 'MICOULAUT', 'Benoit', 'M', '1964-06-17', '', '0238433674', '', 'al-d@wanadoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(132, 'MICOULAUT-B', 'MICOULAUT', 'Zoé', 'F', '2008-11-10', '0602330523', '0238433674', '', 'al-d@wanadoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(133, 'MONDOR', 'MONDOR', 'Joshua', 'M', '2006-04-30', '0620723494', '0632784006', '', 'mondorjeanlouis@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(134, 'PALLOT', 'PALLOT', 'Celien', 'M', '1995-03-10', '0646175077', '', '', 'celienpallot@gmail.com', '', 'S', '', 'TRADI', '0', '0', '', 1, '2021-12-04', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '1', '1', '1', ''),
(135, 'PEROCHE', 'PEROCHE', 'Paul', 'M', '1953-01-17', '0682941081', '0951384648', '', 'paul.peroche@laposte.net', '', 'V', '', 'TRADI', '0', '0', '', 1, '2021-09-02', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(136, 'PETIT', 'PETIT', 'Louka', 'M', '2009-01-14', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(137, 'PICHON', 'PICHON', 'Baptiste', 'M', '2000-09-21', '0781609464', '0953514792', '', 'baptiste4521@gmail.com', '', 'S', '', 'TRADI', '1', '0', '', 1, '2021-09-15', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(138, 'PORTHAULT', 'PORTHAULT', 'Christophe', 'M', '1965-10-27', '0682037243', '0238730765', '', 'famille.acta@free.fr', '', 'V', '', 'PROMO', '0', '0', '', 1, '2021-10-20', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(139, 'PRADELLE', 'PRADELLE', 'Quentin', 'M', '2008-11-13', '0633508343', '', '', 'asdefossez@hotmail.com', '', 'M', '', 'TRADI', '1', '0', '', 1, '2021-09-03', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(140, 'QUETARD-T', 'QUETARD', 'Genevieve', 'F', '1958-10-15', '0681826907', '0238660406', '', 'quetard.genevieve@wanadoo.fr', '', 'V', '', 'TRADI', '0', '0', '', 1, '2021-10-22', '0', 'FR', '1', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(141, 'QUETARD-N', 'QUETARD', 'Nicolas', 'M', '1982-04-15', '0685472084', '0238660406', '', 'quetard.nicolas@gmail.com', '', 'S', '', 'TRADI', '0', '0', '', 1, '2021-09-23', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(142, 'QUETARD-T', 'QUETARD', 'Thierry', 'M', '1957-04-13', '0678472673', '0238660406', '', 'quetard.thierry@wanadoo.fr', '', 'V', '', 'TRADI', '0', '0', '', 1, '2021-09-23', '0', 'FR', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(143, 'REMOND', 'REMOND', 'Guillaume', 'M', '2008-12-08', '0642036241', '0238433364', '', 'drepha4@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(144, 'ROBERT', 'ROBERT', 'Alan', 'M', '1998-10-15', '0627810465', '0238549380', '', 'wfr3ch@hotmail.fr', '', 'S', '', 'TRADI', '1', '0', '', 1, '2021-09-24', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(145, 'RODRIGUES DA SILVA', 'RODRIGUES DA SILVA', 'Hadass fernanda', 'F', '2013-09-26', '0650273440', '0236991808', '', 'solandir@hotmail.com', '', '', '', '', '', '', '', 0, '', '', 'IT', '', '', '', '', '', '', '', '', '', '', '', ''),
(146, 'ROUET', 'ROUET', 'Margaux', 'F', '2009-04-12', '0618325891', '', '', 'ingrid.lambert@laposte.net', '', 'M', '', 'TRADI', '1', '0', '', 1, '2021-09-14', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(147, 'SAMYH', 'SAMYH', 'Yacine', 'M', '2011-04-07', '', '0781177033', '', 'melaid@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(148, 'SGHIR', 'SGHIR', 'Aya', 'F', '2009-02-05', '0064273889', '0234321878', '', 'houda488@yahoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(149, 'SIMON-B', 'SIMON', 'Bernard', 'M', '1934-09-10', '', '0238725340', '', 'bernard.simon2@sfr.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(150, 'SIMON-R', 'SIMON', 'Ronan', 'M', '1990-04-25', '0645152131', '', '', 'ronan.sim@hotmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(151, 'SIX', 'SIX', 'Florian', 'M', '2002-05-03', '0615386399', '0238741698', '', 'sixthierry@neuf.fr', '', 'S', '', 'TRADI', '0', '0', '', 1, '2021-09-24', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '1', '0', ''),
(152, 'SOLON', 'SOLON', 'Frederic', 'M', '1969-11-09', '0664250778', '0238579982', '', 'solon.frederic@sfr.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(153, 'TACCI', 'TACCI', 'Silas', 'M', '2008-02-07', '0620522624', '', '', 's.wiciak@free.fr', '', 'M', '', 'TRADI', '0', '0', '', 1, '2021-09-23', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(154, 'TALLIH', 'TALLIH', 'Mehdi', 'M', '2011-09-12', '0688080081', '', '', 'chich45@hotmail.fr', '', 'B', '', 'TRADI', '1', '0', '', 1, '2021-09-14', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(155, 'TARTIVOT', 'TARTIVOT', 'Gilbert', 'M', '1963-10-26', '0613416944', '0238881618', '', 'lenagi@laposte.net', '', 'V', '', 'PROMO', '0', '0', '', 1, '2021-12-11', '1', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(156, 'THOUVENIN', 'THOUVENIN', 'Chloé', 'F', '2012-05-09', '0631116888', '0238660627', '', 'milou.kanky@dbmail.com', '', 'P', '', 'PROMO', '0', '1', '', 1, '2021-09-03', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(157, 'TIROT', 'TIROT', 'Brice', 'M', '1987-12-23', '0643602526', '', '', 'brice.tirot@etu.univ-orleans.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(158, 'TOUCHAUD', 'TOUCHAUD', 'Jean-luc', 'M', '1959-11-08', '', '0238427314', '', 'jean-luc.touchaud@wanadoo.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(159, 'TROJNAR', 'TROJNAR', 'Paul', 'M', '2006-05-15', '0670392242', '0238623329', '', 'nathalie@trojnar.fr', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(160, 'TROUSSARD', 'TROUSSARD', 'Nathan', 'M', '2007-03-19', '0684052965', '', '', 'celie.troussard@gmail.com', '', '', '', '', '', '', '', 0, '', '', 'FR', '', '', '', '', '', '', '', '', '', '', '', ''),
(161, 'VINCENT-AGONDANOU', 'VINCENT-AGONDANOU', 'Khylian', 'M', '2012-06-14', '0766808029', '0766687748', '', '', '', NULL, '', NULL, '0', '0', '', 0, '', '0', 'FR', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', ''),
(164, 'CLATOT', 'CLATOT', 'FABIENNE', 'F', '1961-09-28', '0672684271', '0238880248', '', 'fabienne.clatot@gmail.com', '', 'V', NULL, 'TRADI', '0', '0', NULL, 1, '2021-09-15', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '1', '0', NULL),
(165, 'THOUVENIN', 'THOUVENIN', 'KYLIAN', 'M', '2010-07-09', '0631116888', '0238660687', '', '', '', 'B', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-03', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(166, 'GUIAVARCH', 'GUIAVARCH', 'LOUIS', 'M', '2007-01-02', '0658546809', '0238220644', '', 'LOUISGUIAVARCH@LAPOSTE.NET', '', 'C', NULL, 'PROMO', '1', '0', NULL, 1, '2021-09-07', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(167, 'PERDEREAU', 'PERDEREAU', 'Lucien', 'M', '2011-04-09', '0619564796', '0238613353', '', '', '', 'B', NULL, 'PROMO', '0', '0', NULL, 1, '2021-09-11', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(168, 'GIRAUD', 'GIRAUD', 'CASEY', 'M', '2005-02-07', '0622472220', '0768417283', '', 'CASEY.GIRAUD45@GMAIL.COM', '', 'J', NULL, 'PROMO', '0', '1', NULL, 1, '2021-10-26', '1', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(169, 'TURKMEN', 'TURKMEN', 'IBRAHIM', 'M', '2013-06-04', '0760433838', '', '', 'HCURLU@GMAIL.COM', '', 'P', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-14', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(170, 'HUBERT', 'HUBERT', 'THÉOTIME', 'M', '2008-10-17', '0685143417', '0238432966', '', 'ERIKA.HUBERT@FREE.FR', '', 'M', NULL, 'PROMO', '1', '1', NULL, 1, '2021-09-14', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(171, 'NIAF', 'NIAF', 'MAËL', 'M', '2011-01-26', '0675004488', '', '', 'naisraffard@gmail.com', '', 'B', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-14', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(172, 'DELALANDE', 'DELALANDE', 'KENDRIX', 'M', '2011-11-13', '0663969012', '0951130208', '', 'MISSOUKI45@HOTMAIL.FR', '', 'P', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-14', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(173, 'PAVADE', 'PAVADE', 'JOANNA', 'F', '1992-10-20', '0637117666', '', '', '', '', 'S', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-15', '1', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(174, 'GONCALVES -  NOVO', 'GONCALVES - NOVO', 'THIERRY', 'M', '1969-03-22', '0695564398', '', '', 'GONCALVES-NOVO.THIERRY@ORANGE.FR', '', 'V', NULL, 'PROMO', '0', '0', NULL, 1, '2021-10-26', '1', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(175, 'TOUTIN', 'TOUTIN', 'HÉLOÏSE', 'F', '1985-01-20', '0614267241', '', '', 'BHELO14@HOTMAIL.FR', '', 'S', NULL, 'PROMO', '0', '1', NULL, 1, '2021-10-26', '1', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(176, 'PERIER', 'PERIER', 'FRANCK', 'M', '1963-06-30', '0628230827', '', '', 'franck.perier99@gmail.com', '', 'V', NULL, 'PROMO', '0', '1', NULL, 1, '2021-12-03', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(177, 'DAHIA', 'DAHIA', 'NOAÏM', 'M', '2010-11-25', '0619893816', '', '', 'DAHIA.TRADE@GMAIL.COM', '', 'B', NULL, 'TRADI', '1', '1', NULL, 1, '2021-09-15', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(178, 'BARDALOU', 'BARDALOU', 'JULIAN', 'M', '2010-08-06', '0645603837', '', '', 'MARIONGASTE@HOTMAIL.COM', '', 'B', NULL, 'TRADI', '1', '1', NULL, 1, '2021-09-15', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(179, 'GOINEAU', 'GOINEAU', 'WALYAN', 'M', '2013-08-22', '0781614112', '', '', 'MAWASHIN@HOTMAIL.FR', '', 'P', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-15', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(180, 'GIGUET', 'GIGUET', 'GAËL', 'M', '2012-10-23', '0676818590', '0667470932', '', 'SANGHA.2983@GMAIL.COM', '', 'P', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-23', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(181, 'LAMBOU', 'LAMBOU', 'ELSA', 'F', '2013-02-13', '0687184386', '', '', 'MAGALI.DIMITRI@HOTMAIL.FR', '', 'P', NULL, 'PROMO', '0', '0', NULL, 1, '2021-09-23', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(182, 'KLEIBER', 'KLEIBER', 'Elio', 'M', '2010-07-20', '0627374341', '0679114550', '', 'KLEIBERS@OUTLOOK.FR', '', 'B', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-23', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(186, 'BOULKIR', 'BOULKIR', 'Mahieddine', 'M', '2011-01-08', '0750914823', '0658332997', '', 'moussousdou@gmail.com', '', 'B', NULL, 'PROMO', '0', '0', NULL, 1, '2021-09-23', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(187, 'BOULKIR', 'BOULKIR', 'SOUHEÏLA', 'F', '2012-07-02', '0750914823', '0658332997', '', 'MOUSSOUSDOU@GMAIL.COM', '', 'P', NULL, 'PROMO', '0', '0', NULL, 1, '2021-09-23', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(188, 'BOULKIR', 'BOULKIR', 'MEHDI', 'M', '2015-01-15', '0750914823', '0658332997', '', 'MOUSSOUSDOU@GMAIL.COM', '', 'P', NULL, 'PROMO', '0', '0', NULL, 1, '2021-09-23', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(190, 'MOIREZ', 'MOIREZ', 'GILLES', 'M', '1960-02-24', '0663477007', '0238832560', '', 'GMO@NICKEL-CHROME-SERVICES.COM', '', 'V', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-24', '1', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(191, 'DEFRANCE', 'DEFRANCE', 'SYLVETTE', 'F', '1995-02-04', '0644705027', '', '', 'SYLVETTE.DEFRANCE@GMAIL.COM', '', 'S', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-24', '1', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(192, 'RAKOTOBE', 'RAKOTOBE', 'NATHALIE', 'F', '1982-07-16', '0623096185', '', '', 'RAKT16@YAHOO.FR', '', 'S', NULL, 'PROMO', '0', '1', NULL, 1, '2021-09-24', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(193, 'PRIGENT', 'PRIGENT', 'ROMAIN', 'M', '1989-07-02', '06 74 42 4', '', '', 'romain.prigent@orange.fr', '', 'S', NULL, 'PROMO', '0', '1', NULL, 1, '2021-12-03', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '1', NULL),
(194, 'LAMBOU', 'LAMBOU', 'IRIS', 'F', '2016-03-04', '', '', '', '', '', 'P', NULL, 'PROMO', '0', '0', NULL, 1, '2021-10-08', '0', '', '0', '0', '1', '0', '0', NULL, '0', '0', '0', '0', '1', NULL),
(195, 'MABRIER', 'MABRIER', 'LILIANA', 'F', '2014-03-12', '', '', '', '', '', 'P', NULL, 'PROMO', '0', '0', NULL, 1, '2021-10-08', '0', 'F', '0', '0', '1', '0', '0', NULL, '0', '0', '0', '0', '1', NULL),
(196, 'POULAIN', 'POULAIN', 'LOUIS', 'M', '2015-06-26', '', '', '', '', '', 'P', NULL, 'PROMO', '0', '1', NULL, 1, '2021-10-08', '1', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '1', NULL),
(197, 'POULAIN', 'POULAIN', 'CAMILLE', 'F', '2017-12-16', '', '', '', 'THORRESCATH@YAHOO.FR', '', NULL, NULL, 'PROMO', '0', '0', NULL, 1, '2021-10-08', '0', 'F', '0', '0', '1', '0', '0', NULL, '0', '0', '0', '0', '1', NULL),
(198, 'QUINTIAO', 'QUINTIAO', 'JULIEN', 'M', '1988-04-12', '0609011762', '', '', 'julien.quintiao@gmail.com', 'julien@vroomiz.fr', 'S', NULL, 'PROMO', '0', '0', NULL, 1, '2021-10-08', '1', 'F', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(199, 'DHERDE', 'DHERDE', 'STAN', 'M', '2005-08-19', '0768128942', '0611174742', '0608015183', 'FABRICE.DHERDE@HOTMAIL.COM', '', 'J', NULL, 'TRADI', '1', '0', NULL, 1, '2021-10-21', '0', '', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '1', '0', NULL),
(200, 'RIHOUM', 'RIHOUM', 'FIRAS', 'M', '2014-12-06', '0679123808', '', '', 'KRIHOUM@HOTMAIL.FR', '', 'P', NULL, 'PROMO', '0', '1', NULL, 1, '2021-10-21', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(201, 'BOULKIR', 'BOULKIR', 'SALEL', 'F', '2007-06-25', '058332997', '', '', 'MASSOUSDOU@GMAIL.COM', '', 'C', NULL, 'PROMO', '0', '0', NULL, 1, '2021-10-21', '0', '', '0', '1', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL),
(203, 'DUMOULIN', 'DUMOULIN', 'LAURENT', 'M', '1970-10-23', '0618228099', '0218692155', '', '', '', 'V', NULL, 'TRADI', '0', '0', NULL, 1, '2021-10-22', '1', '', '1', '0', '0', '0', '0', NULL, '0', '0', '0', '1', '0', NULL),
(204, 'HUART', 'HUART', 'WILSON', 'M', '1990-08-07', '0645749319', '', '', 'WILSONH@HOTMAIL.FR', '', 'S', NULL, 'TRADI', '0', '0', NULL, 1, '2021-12-04', '1', '', '0', '0', '0', '0', '0', NULL, '0', '0', '1', '1', '0', NULL),
(205, 'DUPUY', 'DUPUY', 'OLIVIER', 'M', '2010-07-14', '0625753059', '', '', 'VALERIEDUPUY03@GMAIL.COM', '', 'B', NULL, 'TRADI', '0', '0', NULL, 1, '2021-12-11', '1', 'FR', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `opérations_compte_famille`
--

CREATE TABLE `opérations_compte_famille` (
  `Numéro` int(11) NOT NULL,
  `NuméroLicencié` int(11) DEFAULT NULL,
  `Famille` varchar(50) DEFAULT NULL,
  `Prénom` varchar(50) DEFAULT NULL,
  `Code_opération` varchar(50) DEFAULT NULL,
  `Libellé_libre_opération` varchar(100) DEFAULT NULL,
  `Date_opération` date DEFAULT NULL,
  `Débit` int(4) DEFAULT '0',
  `Crédit` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `opérations_compte_famille`
--

INSERT INTO `opérations_compte_famille` (`Numéro`, `NuméroLicencié`, `Famille`, `Prénom`, `Code_opération`, `Libellé_libre_opération`, `Date_opération`, `Débit`, `Crédit`) VALUES
(92, NULL, 'MACHIN-L', NULL, 'REM-DON', 'Remise don', '2021-07-10', 0, 34),
(93, NULL, 'MACHIN-L', NULL, 'Don', 'Don', '2021-07-10', 0, 100),
(97, NULL, 'DUPONT MORETTI', NULL, 'code', 'Règlement Achat Fourniture Chèque bancaire AXA Banque 145876', '2021-08-17', 0, 120),
(98, 85, 'HERCENT-A', 'André', 'LIC-PROMO', 'Licence HERCENT-A André', '2021-09-02', 110, 0),
(100, 85, 'HERCENT-A', 'André', 'Passage à TRADI', 'Licence HERCENT-A André', '2021-09-02', 0, 0),
(101, 85, 'HERCENT-A', 'André', 'LIC-TRADI', 'Licence HERCENT-A André hors St Jean', '2021-09-02', 10, 0),
(102, 85, 'HERCENT-A', 'André', 'Règlement licence', 'Règlement licence Chèque bancaire Caisse d Epargne 0003113', '2021-09-02', 0, 120),
(103, 86, 'HERCENT-E', 'Eric', 'LIC-BUR', 'Licence HERCENT-E Eric', '2021-09-02', 110, 0),
(104, 86, 'HERCENT-E', 'Eric', 'LIC-BUR', 'Licence HERCENT-E Eric hors St Jean', '2021-09-02', 0, 0),
(105, NULL, 'HERCENT-E', NULL, 'REM-DON', 'Remise don', '2021-09-02', 0, 34),
(106, NULL, 'HERCENT-E', NULL, 'Don', 'Don', '2021-09-02', 0, 100),
(107, 86, 'HERCENT-E', 'Eric', 'Règlement licence', 'Règlement licence Chèque bancaire BNP Paribas 7880927', '2021-09-02', 0, 76),
(108, 112, 'LENOIR', 'Gabin', 'LIC-TRADI', 'Licence LENOIR Gabin', '2021-09-02', 110, 0),
(109, 112, 'LENOIR', 'Gabin', 'LIC-TRADI', 'Licence LENOIR Gabin hors St Jean', '2021-09-02', 10, 0),
(110, 112, 'LENOIR', 'Gabin', 'Compet indiv', 'Compet indiv LENOIR Gabin', '2021-09-02', 30, 0),
(111, 112, 'LENOIR', 'Gabin', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 114163914 à 114163915', '2021-09-02', 0, 40),
(112, 112, 'LENOIR', 'Gabin', 'Règlement licence', 'Règlement licence Chèque bancaire Société Générale 0001801', '2021-09-02', 0, 110),
(113, 135, 'PEROCHE', 'Paul', 'LIC-TRADI', 'Licence PEROCHE Paul', '2021-09-02', 110, 0),
(114, 135, 'PEROCHE', 'Paul', 'LIC-TRADI', 'Licence PEROCHE Paul hors St Jean', '2021-09-02', 10, 0),
(115, NULL, 'PEROCHE', NULL, 'REM-DON', 'Remise don', '2021-09-02', 0, 34),
(116, NULL, 'PEROCHE', NULL, 'Don', 'Don', '2021-09-02', 0, 100),
(117, 135, 'PEROCHE', 'Paul', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 6520029', '2021-09-02', 0, 86),
(118, 91, 'HURON', 'Nathalie', 'LIC-TRADI', 'Licence HURON Nathalie', '2021-09-02', 110, 0),
(120, 91, 'HURON', 'Nathalie', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 7191230', '2021-09-02', 0, 110),
(121, 26, 'BOULANGER', 'Nicolas', 'LIC-TRADI', 'Licence BOULANGER Nicolas', '2021-09-02', 110, 0),
(122, 26, 'BOULANGER', 'Nicolas', 'Compet indiv', 'Compet indiv BOULANGER Nicolas', '2021-09-02', 30, 0),
(123, 26, 'BOULANGER', 'Nicolas', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 4403323', '2021-09-02', 0, 70),
(124, 26, 'BOULANGER', 'Nicolas', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 4403324', '2021-09-02', 0, 70),
(125, 113, 'LESOURD', 'Mathis', 'LIC-TRADI', 'Licence LESOURD Mathis', '2021-09-02', 110, 0),
(126, 113, 'LESOURD', 'Mathis', 'LIC-TRADI', 'Licence LESOURD Mathis hors St Jean', '2021-09-02', 10, 0),
(127, 113, 'LESOURD', 'Mathis', 'Compet indiv', 'Compet indiv LESOURD Mathis', '2021-09-02', 30, 0),
(128, 113, 'LESOURD', 'Mathis', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 0605019', '2021-09-02', 0, 150),
(129, 121, 'MASLANKA', 'Claire', 'LIC-TRADI', 'Licence MASLANKA Claire', '2021-09-03', 110, 0),
(130, 121, 'MASLANKA', 'Claire', 'LIC-TRADI', 'Licence MASLANKA Claire hors St Jean', '2021-09-03', 10, 0),
(131, 121, 'MASLANKA', 'Claire', 'Compet indiv', 'Compet indiv MASLANKA Claire', '2021-09-03', 30, 0),
(132, 121, 'MASLANKA', 'Claire', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 0743054', '2021-09-03', 0, 150),
(133, 48, 'DEBOURG', 'Loic', 'LIC-TRADI', 'Licence DEBOURG Loic', '2021-09-03', 110, 0),
(134, 48, 'DEBOURG', 'Loic', 'LIC-TRADI', 'Licence DEBOURG Loic hors St Jean', '2021-09-03', 10, 0),
(135, 48, 'DEBOURG', 'Loic', 'Compet indiv', 'Compet indiv DEBOURG Loic', '2021-09-03', 30, 0),
(136, 48, 'DEBOURG', 'Loic', 'Règlement licence', 'Règlement licence Chèque bancaire Autre banque 0001629', '2021-09-03', 0, 150),
(137, 139, 'PRADELLE', 'Quentin', 'LIC-TRADI', 'Licence PRADELLE Quentin', '2021-09-03', 110, 0),
(138, 139, 'PRADELLE', 'Quentin', 'LIC-TRADI', 'Licence PRADELLE Quentin hors St Jean', '2021-09-03', 10, 0),
(139, 139, 'PRADELLE', 'Quentin', 'Compet indiv', 'Compet indiv PRADELLE Quentin', '2021-09-03', 30, 0),
(140, 139, 'PRADELLE', 'Quentin', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 086943318 à 086943319', '2021-09-03', 0, 20),
(141, 139, 'PRADELLE', 'Quentin', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 086943334 à 086943335', '2021-09-03', 0, 100),
(142, 139, 'PRADELLE', 'Quentin', 'Règlement licence', 'Règlement licence Chèque bancaire Société Générale 0001826', '2021-09-03', 0, 30),
(143, 156, 'THOUVENIN', 'Chloé', 'LIC-PROMO', 'Licence THOUVENIN Chloé', '2021-09-03', 110, 0),
(144, 21, 'BODARD', 'Julie', 'LIC-TRADI', 'Licence BODARD Julie', '2021-09-03', 110, 0),
(145, 21, 'BODARD', 'Julie', 'Règlement Achat Fourniture', 'Règlement Achat Fourniture Chèque bancaire Autre banque 0000003', '2021-09-03', 0, 110),
(146, 165, 'THOUVENIN', 'Kylian', 'LIC-PROMO', 'Licence THOUVENIN Kylian', '2021-09-03', 110, 0),
(147, 165, 'THOUVENIN', 'Kylian', 'LIC-REM', 'Remise famille 2 THOUVENIN', '2021-09-03', 0, 20),
(148, 156, 'THOUVENIN', 'Chloé', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-09-03', 0, 100),
(149, 165, 'THOUVENIN', 'KYLIAN', 'Règlement licence', 'Règlement licence CAF Autre banque ', '2021-09-03', 0, 80),
(150, 165, 'THOUVENIN', 'KYLIAN', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel 8429561', '2021-09-03', 0, 20),
(151, 57, 'DUMAND', 'Raphaël', 'LIC-PROMO', 'Licence DUMAND Raphaël', '2021-09-03', 110, 0),
(152, 57, 'DUMAND', 'Raphaël', 'LIC-PROMO', 'Licence DUMAND Raphaël hors St Jean', '2021-09-03', 10, 0),
(153, 57, 'DUMAND', 'Raphaël', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel 2326227', '2021-09-03', 0, 120),
(154, 166, 'GUIAVARCH', 'Louis', 'LIC-PROMO', 'Licence GUIAVARCH Louis', '2021-09-07', 110, 0),
(155, 166, 'GUIAVARCH', 'Louis', 'LIC-PROMO', 'Licence GUIAVARCH Louis hors St Jean', '2021-09-07', 10, 0),
(156, 166, 'GUIAVARCH', 'Louis', 'Compet indiv', 'Compet indiv GUIAVARCH Louis', '2021-09-07', 30, 0),
(157, 166, 'GUIAVARCH', 'LOUIS', 'Règlement licence', 'Règlement licence Coupon Sport Autre banque 000669845 à 000669856', '2021-09-07', 0, 120),
(158, 166, 'GUIAVARCH', 'LOUIS', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 0654031', '2021-09-07', 0, 4),
(161, 167, 'PERDEREAU', 'ADRIEN', 'Règlement licence', 'Règlement licence Chèque bancaire LCL 4175702', '2021-09-11', 0, 120),
(162, 167, 'PERDEREAU', 'Lucien', 'LIC-PROMO', 'Licence PERDEREAU Lucien', '2021-09-11', 110, 0),
(163, 167, 'PERDEREAU', 'Lucien', 'LIC-PROMO', 'Licence PERDEREAU Lucien hors St Jean', '2021-09-11', 10, 0),
(164, 106, 'LEFEVRE', 'Jules', 'LIC-PROMO', 'Licence LEFEVRE Jules', '2021-09-11', 110, 0),
(165, 106, 'LEFEVRE', 'Jules', 'LIC-PROMO', 'Licence LEFEVRE Jules hors St Jean', '2021-09-11', 10, 0),
(166, 106, 'LEFEVRE', 'Jules', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 002705077 à 002705079', '2021-09-11', 0, 30),
(167, 106, 'LEFEVRE', 'Jules', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 004158064 à 004158067', '2021-09-11', 0, 40),
(168, 65, 'ERGIN-KARACA', 'Hasan', 'LIC-TRADI', 'Licence ERGIN-KARACA Hasan', '2021-09-11', 110, 0),
(169, 65, 'ERGIN-KARACA', 'Hasan', 'Compet indiv', 'Compet indiv ERGIN-KARACA Hasan', '2021-09-11', 30, 0),
(170, 65, 'ERGIN-KARACA', 'Hasan', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-09-11', 0, 150),
(173, 21, 'BODARD', 'Julie', 'Compet indiv', 'Compet indiv BODARD Julie', '2021-09-14', 30, 0),
(174, 21, 'BODARD', 'Julie', 'Règlement licence', 'Règlement licence Chèque bancaire Autre banque 0000004', '2021-09-14', 0, 30),
(175, 169, 'TURKMEN', 'Ibrahim', 'LIC-L1', 'Licence TURKMEN Ibrahim', '2021-09-14', 110, 0),
(176, 169, 'TURKMEN', 'IBRAHIM', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 124809366 à 124809367', '2021-09-14', 0, 40),
(177, 169, 'TURKMEN', 'IBRAHIM', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 112969284 à 112969288', '2021-09-14', 0, 50),
(178, 169, 'TURKMEN', 'IBRAHIM', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 119255642 à 119255643', '2021-09-14', 0, 20),
(179, 170, 'HUBERT', 'Théotime', 'LIC-L1', 'Licence HUBERT Théotime', '2021-09-14', 110, 0),
(180, 170, 'HUBERT', 'Théotime', 'Compet indiv', 'Compet indiv HUBERT Théotime', '2021-09-14', 30, 0),
(181, 170, 'HUBERT', 'THÉOTIME', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 130829614 à 130829615', '2021-09-14', 0, 40),
(182, 170, 'HUBERT', 'THÉOTIME', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 130829632 à 130829633', '2021-09-14', 0, 100),
(185, 172, 'DELALANDE', 'Kendrix', 'LIC-L1', 'Licence DELALANDE Kendrix', '2021-09-14', 110, 0),
(186, 172, 'DELALANDE', 'KENDRIX', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-09-14', 0, 60),
(187, 154, 'TALLIH', 'Mehdi', 'LIC-TRADI', 'Licence TALLIH Mehdi', '2021-09-14', 110, 0),
(188, 154, 'TALLIH', 'Mehdi', 'LIC-TRADI', 'Licence TALLIH Mehdi hors St Jean', '2021-09-14', 10, 0),
(189, 154, 'TALLIH', 'Mehdi', 'Compet indiv', 'Compet indiv TALLIH Mehdi', '2021-09-14', 30, 0),
(190, 154, 'TALLIH', 'Mehdi', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel 0525807', '2021-09-14', 0, 150),
(191, 146, 'ROUET', 'Margaux', 'LIC-TRADI', 'Licence ROUET Margaux', '2021-09-14', 110, 0),
(192, 146, 'ROUET', 'Margaux', 'LIC-TRADI', 'Licence ROUET Margaux hors St Jean', '2021-09-14', 10, 0),
(193, 146, 'ROUET', 'Margaux', 'Compet indiv', 'Compet indiv ROUET Margaux', '2021-09-14', 30, 0),
(194, 146, 'ROUET', 'Margaux', 'Règlement licence', 'Règlement licence Autre paiement Autre banque 2124906 a 2124910', '2021-09-14', 0, 50),
(195, 146, 'ROUET', 'Margaux', 'Règlement licence', 'Règlement licence Autre paiement Autre banque 2124916 à 2124920', '2021-09-14', 0, 50),
(196, 146, 'ROUET', 'Margaux', 'Règlement licence', 'Règlement licence Autre paiement Autre banque 2124921 à 2124925', '2021-09-14', 0, 50),
(197, 146, 'ROUET', 'Margaux', 'Règlement Achat Fourniture', 'Règlement Achat Fourniture Chèque bancaire Allianz Banque ', '2021-09-14', 0, 0),
(198, 61, 'EL BANAISSATI-A', 'Anas', 'LIC-TRADI', 'Licence EL BANAISSATI-A Anas', '2021-09-14', 110, 0),
(201, 61, 'EL BANAISSATI-A', 'Anas', 'Compet indiv', 'Compet indiv EL BANAISSATI-A Anas', '2021-09-14', 30, 0),
(202, 61, 'EL BANAISSATI-A', 'Anas', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 113518741 à 113518744', '2021-09-14', 0, 80),
(203, 61, 'EL BANAISSATI-A', 'Anas', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-09-14', 0, 10),
(204, 6, 'AUMOND', 'Lucas', 'LIC-TRADI', 'Licence AUMOND Lucas', '2021-09-15', 110, 0),
(205, 6, 'AUMOND', 'Lucas', 'LIC-TRADI', 'Licence AUMOND Lucas hors St Jean', '2021-09-15', 10, 0),
(206, 6, 'AUMOND', 'Lucas', 'Compet indiv', 'Compet indiv AUMOND Lucas', '2021-09-15', 30, 0),
(207, 6, 'AUMOND', 'Lucas', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-09-15', 0, 150),
(208, 173, 'PAVADE', 'Joanna', 'LIC-L1', 'Licence PAVADE Joanna', '2021-09-15', 110, 0),
(209, 173, 'PAVADE', 'JOANNA', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-09-15', 0, 110),
(210, 14, 'BERAULT', 'Thierry', 'LIC-TRADI', 'Licence BERAULT Thierry', '2021-09-15', 110, 0),
(216, 164, 'CLATOT', 'FABIENNE', 'LIC-TRADI', 'Licence CLATOT FABIENNE', '2021-09-15', 110, 0),
(217, 164, 'CLATOT', 'FABIENNE', 'LIC-TRADI', 'Licence CLATOT FABIENNE hors St Jean', '2021-09-15', 10, 0),
(218, 164, 'CLATOT', 'FABIENNE', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 7415739', '2021-09-15', 0, 120),
(219, 91, 'HURON', 'Nathalie', 'LIC-TRADI', 'Licence HURON Nathalie hors St Jean', '2021-09-15', 10, 0),
(220, 137, 'PICHON', 'Baptiste', 'LIC-TRADI', 'Licence PICHON Baptiste', '2021-09-15', 110, 0),
(221, 137, 'PICHON', 'Baptiste', 'LIC-TRADI', 'Licence PICHON Baptiste hors St Jean', '2021-09-15', 10, 0),
(222, 137, 'PICHON', 'Baptiste', 'Compet indiv', 'Compet indiv PICHON Baptiste', '2021-09-15', 30, 0),
(224, 73, 'GERBE', 'Anthony', 'LIC-TRADI', 'Licence GERBE Anthony', '2021-09-15', 110, 0),
(226, 83, 'GUILLOT', 'Stephane', 'LIC-BUR', 'Licence GUILLOT Stephane', '2021-09-15', 110, 0),
(227, 83, 'GUILLOT', 'Stephane', 'LIC-BUR', 'Licence GUILLOT Stephane hors St Jean', '2021-09-15', 0, 0),
(228, 83, 'GUILLOT', 'Stephane', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 018435902 à 018435912', '2021-09-15', 0, 110),
(229, 91, 'HURON', 'Nathalie', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 7191231', '2021-09-15', 0, 10),
(230, 125, 'MAURY-BOURLET', 'Romain', 'LIC-TRADI', 'Licence MAURY-BOURLET Romain', '2021-09-15', 110, 0),
(231, 125, 'MAURY-BOURLET', 'Romain', 'Compet indiv', 'Compet indiv MAURY-BOURLET Romain', '2021-09-15', 30, 0),
(232, 125, 'MAURY-BOURLET', 'Romain', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 066408166 à 066408172', '2021-09-15', 0, 70),
(233, 125, 'MAURY-BOURLET', 'Romain', 'Règlement licence', 'Règlement licence Chèque bancaire Caisse d Epargne 1833770', '2021-09-15', 0, 70),
(234, 176, 'PERIER', 'Franck', 'LIC-PROMO', 'Licence PERIER Franck', '2021-09-15', 110, 0),
(235, 176, 'PERIER', 'FRANCK', 'Règlement licence', 'Règlement licence Chèque bancaire Société Générale 0000455', '2021-09-15', 0, 110),
(236, 28, 'BROTHIER', 'Malo', 'LIC-TRADI', 'Licence BROTHIER Malo', '2021-09-15', 110, 0),
(237, 28, 'BROTHIER', 'Malo', 'LIC-TRADI', 'Licence BROTHIER Malo hors St Jean', '2021-09-15', 10, 0),
(238, 28, 'BROTHIER', 'Malo', 'Compet indiv', 'Compet indiv BROTHIER Malo', '2021-09-15', 30, 0),
(239, 28, 'BROTHIER', 'Malo', 'Règlement licence', 'Règlement licence Chèque bancaire Autre banque 0000202', '2021-09-15', 0, 150),
(240, 18, 'BEZY', 'Evan', 'LIC-TRADI', 'Licence BEZY Evan', '2021-09-15', 110, 0),
(242, 177, 'DAHIA', 'Noaïm', 'LIC-TRADI', 'Licence DAHIA Noaïm', '2021-09-15', 110, 0),
(243, 177, 'DAHIA', 'Noaïm', 'Compet indiv', 'Compet indiv DAHIA Noaïm', '2021-09-15', 30, 0),
(244, 177, 'DAHIA', 'NOAÏM', 'Règlement licence', 'Règlement licence CAF Autre banque ', '2021-09-15', 0, 80),
(245, 177, 'DAHIA', 'NOAÏM', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 0702018', '2021-09-15', 0, 60),
(246, 66, 'FONTAINE', 'Antoine', 'LIC-L1', 'Licence FONTAINE Antoine', '2021-09-15', 110, 0),
(247, 66, 'FONTAINE', 'Antoine', 'LIC-L1', 'Licence FONTAINE Antoine hors St Jean', '2021-09-15', 10, 0),
(248, 66, 'FONTAINE', 'Antoine', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 086452836 0 086452842', '2021-09-15', 0, 70),
(249, 178, 'BARDALOU', 'Julian', 'LIC-TRADI', 'Licence BARDALOU Julian', '2021-09-15', 110, 0),
(250, 178, 'BARDALOU', 'Julian', 'Compet indiv', 'Compet indiv BARDALOU Julian', '2021-09-15', 30, 0),
(251, 178, 'BARDALOU', 'JULIAN', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel 6632996', '2021-09-15', 0, 140),
(252, 179, 'GOINEAU', 'Walyan', 'LIC-L1', 'Licence GOINEAU Walyan', '2021-09-15', 110, 0),
(253, 179, 'GOINEAU', 'WALYAN', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel 6562596', '2021-09-15', 0, 110),
(254, 27, 'BRIOCHE', 'Francis', 'LIC-BUR', 'Licence BRIOCHE Francis', '2021-09-21', 110, 0),
(255, 27, 'BRIOCHE', 'Francis', 'LIC-BUR', 'Licence BRIOCHE Francis hors St Jean', '2021-09-21', 0, 0),
(256, 27, 'BRIOCHE', 'Francis', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 1441016', '2021-09-21', 0, 80),
(257, NULL, 'BRIOCHE', NULL, 'REM-DON', 'Remise don', '2021-09-21', 0, 34),
(258, NULL, 'BRIOCHE', NULL, 'Don', 'Don', '2021-09-21', 0, 100),
(259, 180, 'GIGUET', 'Gaël', 'LIC-L1', 'Licence GIGUET Gaël', '2021-09-23', 110, 0),
(260, 180, 'GIGUET', 'GAËL', 'Règlement licence', 'Règlement licence Chèque bancaire CIC 8590731', '2021-09-23', 0, 110),
(261, 71, 'GAYRARD', 'Jacqueline', 'LIC-TRADI', 'Licence GAYRARD Jacqueline', '2021-09-23', 110, 0),
(262, 71, 'GAYRARD', 'Jacqueline', 'Règlement licence', 'Règlement licence Chèque bancaire Caisse d Epargne 0001686', '2021-09-23', 0, 110),
(263, 117, 'MAILLOT', 'Eliot', 'LIC-TRADI', 'Licence MAILLOT Eliot', '2021-09-23', 110, 0),
(264, 117, 'MAILLOT', 'Eliot', 'LIC-TRADI', 'Licence MAILLOT Eliot hors St Jean', '2021-09-23', 10, 0),
(265, 117, 'MAILLOT', 'Eliot', 'Compet indiv', 'Compet indiv MAILLOT Eliot', '2021-09-23', 30, 0),
(266, 117, 'MAILLOT', 'Eliot', 'Règlement licence', 'Règlement licence Coupon Sport Autre banque 000683744 à 000683753', '2021-09-23', 0, 100),
(267, 120, 'MARTINS', 'Lucenzo', 'LIC-L1', 'Licence MARTINS Lucenzo', '2021-09-23', 110, 0),
(268, 120, 'MARTINS', 'Lucenzo', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-09-23', 0, 110),
(269, 108, 'LEMAIRE', 'Sarah', 'LIC-TRADI', 'Licence LEMAIRE Sarah', '2021-09-23', 110, 0),
(270, 108, 'LEMAIRE', 'Sarah', 'LIC-TRADI', 'Licence LEMAIRE Sarah hors St Jean', '2021-09-23', 10, 0),
(271, 108, 'LEMAIRE', 'Sarah', 'Compet indiv', 'Compet indiv LEMAIRE Sarah', '2021-09-23', 30, 0),
(272, 108, 'LEMAIRE', 'Sarah', 'Règlement licence', 'Règlement licence Chèque bancaire Société Générale 0001591', '2021-09-23', 0, 120),
(273, 108, 'LEMAIRE', 'Sarah', 'Règlement licence', 'Règlement licence Chèque bancaire Société Générale 0001592', '2021-09-23', 0, 30),
(274, 94, 'JOSSET', 'Lola', 'LIC-TRADI', 'Licence JOSSET Lola', '2021-09-23', 110, 0),
(275, 94, 'JOSSET', 'Lola', 'LIC-TRADI', 'Licence JOSSET Lola hors St Jean', '2021-09-23', 10, 0),
(276, 94, 'JOSSET', 'Lola', 'Règlement licence', 'Règlement licence Chèque bancaire Autre banque 0001387', '2021-09-23', 0, 120),
(277, 181, 'LAMBOU', 'Elsa', 'LIC-L1', 'Licence LAMBOU Elsa', '2021-09-23', 110, 0),
(278, 181, 'LAMBOU', 'Elsa', 'LIC-L1', 'Licence LAMBOU Elsa hors St Jean', '2021-09-23', 10, 0),
(279, 181, 'LAMBOU', 'ELSA', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 079884264 à 079884270', '2021-09-23', 0, 80),
(280, 181, 'LAMBOU', 'ELSA', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 0658027', '2021-09-23', 0, 40),
(281, 153, 'TACCI', 'Silas', 'LIC-TRADI', 'Licence TACCI Silas', '2021-09-23', 110, 0),
(282, 153, 'TACCI', 'Silas', 'LIC-TRADI', 'Licence TACCI Silas hors St Jean', '2021-09-23', 10, 0),
(283, 153, 'TACCI', 'Silas', 'Règlement licence', 'Règlement licence Chèque bancaire Autre banque 0001051', '2021-09-23', 0, 60),
(284, 153, 'TACCI', 'Silas', 'Règlement licence', 'Règlement licence Chèque bancaire Autre banque 0001052', '2021-09-23', 0, 60),
(286, 182, 'KLEIBER', 'EIIO', 'Règlement licence', 'Règlement licence Chèque bancaire BNP Paribas 3128981', '2021-09-23', 0, 110),
(287, 182, 'KLEIBER', 'Elio', 'LIC-PROMO', 'Licence KLEIBER Elio', '2021-09-23', 110, 0),
(288, 141, 'QUETARD-N', 'Nicolas', 'LIC-TRADI', 'Licence QUETARD-N Nicolas', '2021-09-23', 110, 0),
(289, 141, 'QUETARD-N', 'Nicolas', 'LIC-TRADI', 'Licence QUETARD-N Nicolas hors St Jean', '2021-09-23', 10, 0),
(290, 141, 'QUETARD-N', 'Nicolas', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 0484022', '2021-09-23', 0, 120),
(291, 142, 'QUETARD-T', 'Thierry', 'LIC-BUR', 'Licence QUETARD-T Thierry', '2021-09-23', 110, 0),
(292, 142, 'QUETARD-T', 'Thierry', 'LIC-BUR', 'Licence QUETARD-T Thierry hors St Jean', '2021-09-23', 0, 0),
(293, NULL, 'QUETARD-T', NULL, 'REM-DON', 'Remise don', '2021-09-23', 0, 34),
(294, NULL, 'QUETARD-T', NULL, 'Don', 'Don', '2021-09-23', 0, 100),
(295, 142, 'QUETARD-T', 'Thierry', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 0484021', '2021-09-23', 0, 76),
(296, 76, 'GIORGIS-JP', 'Jean-pierre', 'LIC-TRADI', 'Licence GIORGIS-JP Jean-pierre', '2021-09-23', 110, 0),
(299, 75, 'GIORGIS-JP', 'Baptiste', 'LIC-TRADI', 'Licence GIORGIS-JP Baptiste', '2021-09-23', 110, 0),
(300, 75, 'GIORGIS-JP', 'Baptiste', 'LIC-TRADI', 'Licence GIORGIS-JP Baptiste hors St Jean', '2021-09-23', 10, 0),
(301, 75, 'GIORGIS-JP', 'Baptiste', 'LIC-REM', 'Remise famille 2 GIORGIS-JP', '2021-09-23', 0, 20),
(302, 76, 'GIORGIS-JP', 'Jean-pierre', 'Règlement licence', 'Règlement licence Chèque bancaire Caisse d Epargne 9433451', '2021-09-23', 0, 210),
(321, 186, 'BOULKIR', 'Mahieddine', 'LIC-L1', 'Licence BOULKIR Mahieddine', '2021-09-23', 110, 0),
(322, 186, 'BOULKIR', 'Mahieddine', 'LIC-L1', 'Licence BOULKIR Mahieddine hors St Jean', '2021-09-23', 10, 0),
(323, 187, 'BOULKIR', 'Souheïla', 'LIC-L1', 'Licence BOULKIR Souheïla', '2021-09-23', 110, 0),
(324, 187, 'BOULKIR', 'Souheïla', 'LIC-L1', 'Licence BOULKIR Souheïla hors St Jean', '2021-09-23', 10, 0),
(326, 188, 'BOULKIR', 'Mehdi', 'LIC-L1', 'Licence BOULKIR Mehdi', '2021-09-23', 110, 0),
(327, 188, 'BOULKIR', 'Mehdi', 'LIC-L1', 'Licence BOULKIR Mehdi hors St Jean', '2021-09-23', 10, 0),
(329, 186, 'BOULKIR', 'Mahieddine', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-09-23', 0, 160),
(330, 79, 'GRILHAULT FONTAINES', 'Alexis', 'LIC-TRADI', 'Licence GRILHAULT FONTAINES Alexis', '2021-09-24', 110, 0),
(331, 79, 'GRILHAULT FONTAINES', 'Alexis', 'LIC-TRADI', 'Licence GRILHAULT FONTAINES Alexis hors St Jean', '2021-09-24', 10, 0),
(332, 79, 'GRILHAULT FONTAINES', 'Alexis', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 3501275', '2021-09-24', 0, 120),
(333, 144, 'ROBERT', 'Alan', 'LIC-TRADI', 'Licence ROBERT Alan', '2021-09-24', 110, 0),
(334, 144, 'ROBERT', 'Alan', 'LIC-TRADI', 'Licence ROBERT Alan hors St Jean', '2021-09-24', 10, 0),
(335, 144, 'ROBERT', 'Alan', 'Compet indiv', 'Compet indiv ROBERT Alan', '2021-09-24', 30, 0),
(336, 144, 'ROBERT', 'Alan', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 2382415', '2021-09-24', 0, 120),
(340, 190, 'MOIREZ', 'Gilles', 'LIC-L1', 'Licence MOIREZ Gilles', '2021-09-24', 110, 0),
(341, 190, 'MOIREZ', 'GILLES', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 2849073', '2021-09-24', 0, 110),
(342, 14, 'BERAULT', 'Thierry', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 0354844773 à 035484783', '2021-09-24', 0, 110),
(343, 81, 'GUERIN VANNEAU', 'Theo', 'LIC-TRADI', 'Licence GUERIN VANNEAU Theo', '2021-09-24', 110, 0),
(344, 151, 'SIX', 'Florian', 'LIC-TRADI', 'Licence SIX Florian', '2021-09-24', 110, 0),
(345, 151, 'SIX', 'Florian', 'LIC-TRADI', 'Licence SIX Florian hors St Jean', '2021-09-24', 10, 0),
(346, 151, 'SIX', 'Florian', 'Règlement licence', 'Règlement licence Chèque bancaire LCL 9525601', '2021-09-24', 0, 120),
(347, 63, 'EL BANAISSATI-A', 'Qais', 'LIC-TRADI', 'Licence EL BANAISSATI-A Qais', '2021-09-24', 110, 0),
(351, 63, 'EL BANAISSATI-A', 'Qais', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 113518737', '2021-09-24', 0, 20),
(352, 63, 'EL BANAISSATI-A', 'Qais', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 113518739', '2021-09-24', 0, 20),
(353, 63, 'EL BANAISSATI-A', 'Qais', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque 113518740', '2021-09-24', 0, 20),
(354, 63, 'EL BANAISSATI-A', 'Qais', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-09-24', 0, 10),
(355, 63, 'EL BANAISSATI-A', 'Qais', 'LIC-REM', 'Remise famille 2 EL BANAISSATI-A', '2021-09-24', 0, 20),
(356, 63, 'EL BANAISSATI-A', 'Qais', 'Compet indiv', 'Compet indiv EL BANAISSATI-A Qais', '2021-09-24', 30, 0),
(357, 191, 'DEFRANCE', 'Sylvette', 'LIC-L1', 'Licence DEFRANCE Sylvette', '2021-09-24', 110, 0),
(358, 191, 'DEFRANCE', 'SYLVETTE', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel 6552900', '2021-09-24', 0, 110),
(359, 18, 'BEZY', 'Evan', 'Compet indiv', 'Compet indiv BEZY Evan', '2021-09-24', 30, 0),
(360, 19, 'BEZY', 'Kylian', 'LIC-TRADI', 'Licence BEZY Kylian', '2021-09-24', 110, 0),
(361, 19, 'BEZY', 'Kylian', 'LIC-REM', 'Remise famille 2 BEZY', '2021-09-24', 0, 20),
(362, 19, 'BEZY', 'Kylian', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel 1287705', '2021-09-24', 0, 230),
(363, 192, 'RAKOTOBE', 'Nathalie', 'LIC-L1', 'Licence RAKOTOBE Nathalie', '2021-09-24', 110, 0),
(364, 192, 'RAKOTOBE', 'NATHALIE', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-09-24', 0, 110),
(365, 44, 'COMPAGNET', 'Roxane', 'LIC-TRADI', 'Licence COMPAGNET Roxane', '2021-09-24', 110, 0),
(366, 44, 'COMPAGNET', 'Roxane', 'LIC-TRADI', 'Licence COMPAGNET Roxane hors St Jean', '2021-09-24', 10, 0),
(367, 44, 'COMPAGNET', 'Roxane', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 5964560', '2021-09-24', 0, 110),
(368, 50, 'DEPARDAY', 'Anne', 'LIC-TRADI', 'Licence DEPARDAY Anne', '2021-10-04', 110, 0),
(369, 50, 'DEPARDAY', 'Anne', 'LIC-TRADI', 'Licence DEPARDAY Anne hors St Jean', '2021-10-04', 10, 0),
(370, 50, 'DEPARDAY', 'Anne', 'Compet indiv', 'Compet indiv DEPARDAY Anne', '2021-10-04', 30, 0),
(371, NULL, 'DEPARDAY', NULL, 'code', 'Règlement licence Chèque bancaire Crédit agricole 9807193', '2021-10-04', 0, 240),
(372, NULL, 'DEPARDAY', NULL, 'code', 'Règlement licence Espèces Autre banque ', '2021-10-04', 0, 10),
(373, 70, 'DEPARDAY', 'Richard', 'LIC-TRADI', 'Licence DEPARDAY Richard', '2021-10-04', 110, 0),
(374, 70, 'DEPARDAY', 'Richard', 'LIC-TRADI', 'Licence DEPARDAY Richard hors St Jean', '2021-10-04', 10, 0),
(375, 70, 'DEPARDAY', 'Richard', 'LIC-REM', 'Remise famille 2 DEPARDAY', '2021-10-04', 0, 20),
(376, 193, 'PRIGENT', 'Romain', 'LIC-PROMO', 'Licence PRIGENT Romain', '2021-10-08', 110, 0),
(377, 193, 'PRIGENT', 'ROMAIN', 'Règlement licence', 'Règlement licence Chèque bancaire BNP Paribas N° 6456216', '2021-10-08', 0, 110),
(378, 194, 'LAMBOU', 'Iris', 'LIC-AC', 'Licence LAMBOU Iris', '2021-10-08', 60, 0),
(379, 194, 'LAMBOU', 'Iris', 'LIC-AC', 'Licence LAMBOU Iris hors St Jean', '2021-10-08', 0, 0),
(381, 194, 'LAMBOU', 'IRIS', 'Règlement licence', 'Règlement licence Chèque vancances Allianz Banque ', '2021-10-08', 0, 60),
(382, 195, 'MABRIER', 'Liliana', 'LIC-AC', 'Licence MABRIER Liliana', '2021-10-08', 60, 0),
(383, 195, 'MABRIER', 'Liliana', 'LIC-AC', 'Licence MABRIER Liliana hors St Jean', '2021-10-08', 0, 0),
(384, 195, 'MABRIER', 'LILIANA', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale N°21 1447008 D', '2021-10-08', 0, 60),
(385, 196, 'POULAIN', 'Louis', 'LIC-PROMO', 'Licence POULAIN Louis', '2021-10-08', 110, 0),
(386, 197, 'POULAIN', 'Camille', 'LIC-AC', 'Licence POULAIN Camille', '2021-10-08', 60, 0),
(387, 197, 'POULAIN', 'Camille', 'LIC-AC', 'Licence POULAIN Camille hors St Jean', '2021-10-08', 0, 0),
(388, 197, 'POULAIN', 'Camille', 'LIC-REM', 'Remise famille 2 POULAIN', '2021-10-08', 0, 20),
(389, 196, 'POULAIN', 'LOUIS', 'Règlement licence', 'Règlement licence Chèque bancaire LCL N°1218427', '2021-10-08', 0, 50),
(390, 196, 'POULAIN', 'LOUIS', 'Règlement licence', 'Règlement licence Chèque bancaire LCL n° 1218429 fin Déc', '2021-10-08', 0, 50),
(391, 197, 'POULAIN', 'CAMILLE', 'Règlement licence', 'Règlement licence Chèque bancaire LCL N° 1218430 fin mars', '2021-10-08', 0, 50),
(392, 198, 'QUINTIAO', 'Julien', 'LIC-PROMO', 'Licence QUINTIAO Julien', '2021-10-08', 110, 0),
(394, 198, 'QUINTIAO', 'JULIEN', 'LIC-PROMO', 'Licence QUINTIAO JULIEN hors St Jean', '2021-10-08', 10, 0),
(395, 198, 'QUINTIAO', 'JULIEN', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel N° 7470498', '2021-10-08', 0, 120),
(396, 92, 'JEAN', 'Tiphanie', 'LIC-TRADI', 'Licence JEAN Tiphanie', '2021-10-08', 110, 0),
(397, 92, 'JEAN', 'Tiphanie', 'LIC-TRADI', 'Licence JEAN Tiphanie hors St Jean', '2021-10-08', 10, 0),
(398, 92, 'JEAN', 'Tiphanie', 'Compet indiv', 'Compet indiv JEAN Tiphanie', '2021-10-08', 30, 0),
(399, 92, 'JEAN', 'Tiphanie', 'Règlement licence', 'Règlement licence Chèque bancaire Boursorama Banque N°1823509', '2021-10-08', 0, 150),
(400, 171, 'NIAF', 'MAËL', 'LIC-PROMO', 'Licence NIAF MAËL', '2021-10-17', 110, 0),
(401, 171, 'NIAF', 'MAËL', 'Règlement licence', 'Règlement licence Chèque bancaire Caisse d Epargne Chèque n° 0000988', '2021-09-15', 0, 110),
(404, 73, 'GERBE', 'Anthony', 'Compet indiv', 'Compet indiv GERBE Anthony', '2021-10-20', 30, 0),
(405, 73, 'GERBE', 'Anthony', 'Règlement licence', 'Règlement licence CAF Autre banque ', '2021-10-20', 0, 80),
(406, 73, 'GERBE', 'Anthony', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-10-20', 0, 60),
(410, 138, 'PORTHAULT', 'Christophe', 'LIC-PROMO', 'Licence PORTHAULT Christophe', '2021-10-20', 110, 0),
(411, 138, 'PORTHAULT', 'Christophe', 'LIC-PROMO', 'Licence PORTHAULT Christophe hors St Jean', '2021-10-20', 10, 0),
(412, 138, 'PORTHAULT', 'Christophe', 'Règlement licence', 'Règlement licence Chèque bancaire Caisse d Epargne 1886196', '2021-10-20', 0, 120),
(413, 199, 'DHERDE', 'Stan', 'LIC-TRADI', 'Licence DHERDE Stan', '2021-10-21', 110, 0),
(414, 199, 'DHERDE', 'Stan', 'LIC-TRADI', 'Licence DHERDE Stan hors St Jean', '2021-10-21', 10, 0),
(415, 199, 'DHERDE', 'Stan', 'Compet indiv', 'Compet indiv DHERDE Stan', '2021-10-21', 30, 0),
(416, 199, 'DHERDE', 'STAN', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel 8102591', '2021-10-21', 0, 140),
(419, 101, 'LAMBOU', 'Yoann', 'LIC-TRADI', 'Licence LAMBOU Yoann', '2021-10-21', 110, 0),
(420, 101, 'LAMBOU', 'Yoann', 'LIC-TRADI', 'Licence LAMBOU Yoann hors St Jean', '2021-10-21', 10, 0),
(421, 101, 'LAMBOU', 'Yoann', 'LIC-REM', 'Remise famille 3 LAMBOU', '2021-10-21', 0, 55),
(422, 101, 'LAMBOU', 'Yoann', 'Compet indiv', 'Compet indiv LAMBOU Yoann', '2021-10-21', 30, 0),
(423, 101, 'LAMBOU', 'Yoann', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 0658035', '2021-10-21', 0, 95),
(424, 144, 'ROBERT', 'Alan', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 2382417', '2021-10-21', 0, 20),
(426, 200, 'RIHOUM', 'FIRAS', 'LIC-L1', 'Licence RIHOUM FIRAS', '2021-10-21', 110, 0),
(427, 200, 'RIHOUM', 'FIRAS', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel 6636408', '2021-10-21', 0, 60),
(428, 201, 'BOULKIR', 'Salel', 'LIC-L1', 'Licence BOULKIR Salel', '2021-10-21', 110, 0),
(429, 201, 'BOULKIR', 'Salel', 'LIC-L1', 'Licence BOULKIR Salel hors St Jean', '2021-10-21', 10, 0),
(430, 201, 'BOULKIR', 'Salel', 'LIC-REM', 'Remise famille 4 BOULKIR', '2021-10-21', 0, 110),
(431, 84, 'HERBIN', 'Robert', 'LIC-TRADI', 'Licence HERBIN Robert', '2021-10-21', 110, 0),
(433, 84, 'HERBIN', 'Robert', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 8752026', '2021-10-21', 0, 110),
(434, 100, 'LAGUETTE', 'Muriele', 'LIC-BUR', 'Licence LAGUETTE Muriele', '2021-10-21', 110, 0),
(435, 100, 'LAGUETTE', 'Muriele', 'LIC-BUR', 'Licence LAGUETTE Muriele hors St Jean', '2021-10-21', 0, 0),
(436, 100, 'LAGUETTE', 'Muriele', 'Règlement licence', 'Règlement licence Chèque vancances Autre banque ', '2021-10-21', 0, 100),
(437, 100, 'LAGUETTE', 'Muriele', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-10-21', 0, 10),
(442, 137, 'PICHON', 'Baptiste', 'Règlement licence', 'Règlement licence Coupon Sport Autre banque 2233048 à 2233057', '2021-10-21', 0, 60),
(443, 137, 'PICHON', 'Baptiste', 'Règlement licence', 'Règlement licence Coupon Sport Autre banque 2233058 à 2233067', '2021-10-21', 0, 60),
(444, 137, 'PICHON', 'Baptiste', 'Règlement licence', 'Règlement licence Coupon Sport Allianz Banque ', '2021-10-21', 0, 6),
(445, 137, 'PICHON', 'Baptiste', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit mutuel 0682402', '2021-10-21', 0, 24),
(448, 203, 'DUMOULIN', 'Laurent', 'LIC-BUR', 'Licence DUMOULIN Laurent', '2021-10-22', 110, 0),
(449, 203, 'DUMOULIN', 'Laurent', 'LIC-BUR', 'Licence DUMOULIN Laurent hors St Jean', '2021-10-22', 0, 0),
(450, 203, 'DUMOULIN', 'LAURENT', 'Règlement licence', 'Règlement licence Chèque bancaire Autre banque 0000095', '2021-10-22', 0, 110),
(451, 140, 'QUETARD-T', 'Genevieve', 'LIC-BUR', 'Licence QUETARD-T Genevieve', '2021-10-22', 110, 0),
(452, 140, 'QUETARD-T', 'Genevieve', 'LIC-BUR', 'Licence QUETARD-T Genevieve hors St Jean', '2021-10-22', 0, 0),
(453, 140, 'QUETARD-T', 'Genevieve', 'LIC-REM', 'Remise famille 2 QUETARD-T', '2021-10-22', 0, 20),
(454, NULL, 'QUETARD-T', NULL, 'REM-DON', 'Remise don', '2021-10-22', 0, 34),
(455, NULL, 'QUETARD-T', NULL, 'Don', 'Don', '2021-10-22', 0, 100),
(456, 140, 'QUETARD-T', 'Genevieve', 'Règlement licence', 'Règlement licence Chèque bancaire La Banque Postale 1622046', '2021-10-22', 0, 76),
(457, 168, 'GIRAUD', 'CASEY', 'LIC-PROMO', 'Licence GIRAUD CASEY', '2021-10-26', 110, 0),
(458, 174, 'GONCALVES -  NOVO', 'THIERRY', 'LIC-L1', 'Licence GONCALVES -  NOVO THIERRY', '2021-10-26', 110, 0),
(459, 174, 'GONCALVES -  NOVO', 'THIERRY', 'LIC-L1', 'Licence GONCALVES -  NOVO THIERRY hors St Jean', '2021-10-26', 10, 0),
(460, 175, 'TOUTIN', 'HÉLOÏSE', 'LIC-L1', 'Licence TOUTIN HÉLOÏSE', '2021-10-26', 110, 0),
(461, 168, 'GIRAUD', 'CASEY', 'Règlement licence', 'Règlement licence Chèque bancaire BNP Paribas n° 2610568 ', '2021-10-26', 0, 110),
(462, 174, 'GONCALVES -  NOVO', 'THIERRY', 'Règlement licence', 'Règlement licence Chèque bancaire LCL n° 8534028', '2021-09-15', 0, 120),
(463, 175, 'TOUTIN', 'HÉLOÏSE', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 8260506', '2021-10-18', 0, 110),
(464, 58, 'DUMOULIN', 'Aurelien', 'LIC-TRADI', 'Licence DUMOULIN Aurelien', '2021-12-04', 110, 0),
(465, 58, 'DUMOULIN', 'Aurelien', 'LIC-TRADI', 'Licence DUMOULIN Aurelien hors St Jean', '2021-12-04', 10, 0),
(466, 58, 'DUMOULIN', 'Aurelien', 'LIC-REM', 'Remise famille 2 DUMOULIN', '2021-12-04', 0, 20),
(467, 134, 'PALLOT', 'Celien', 'LIC-TRADI', 'Licence PALLOT Celien', '2021-12-04', 110, 0),
(468, 134, 'PALLOT', 'Celien', 'LIC-TRADI', 'Licence PALLOT Celien hors St Jean', '2021-12-04', 10, 0),
(469, 204, 'HUART', 'Wilson', 'LIC-TRADI', 'Licence HUART Wilson', '2021-12-04', 110, 0),
(470, 204, 'HUART', 'Wilson', 'LIC-TRADI', 'Licence HUART Wilson hors St Jean', '2021-12-04', 10, 0),
(471, 144, 'ROBERT', 'Alan', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 2382421', '2021-12-11', 0, 10),
(472, 205, 'DUPUY', 'Olivier', 'LIC-TRADI', 'Licence DUPUY Olivier', '2021-12-11', 110, 0),
(475, 205, 'DUPUY', 'OLIVIER', 'LIC-TRADI', 'Licence DUPUY OLIVIER hors St Jean', '2021-12-11', 10, 0),
(476, 205, 'DUPUY', 'OLIVIER', 'Règlement licence', 'Règlement licence Chèque bancaire Société Générale 0001137', '2021-12-11', 0, 120),
(477, 155, 'TARTIVOT', 'Gilbert', 'LIC-PROMO', 'Licence TARTIVOT Gilbert', '2021-12-11', 110, 0),
(478, 155, 'TARTIVOT', 'Gilbert', 'LIC-PROMO', 'Licence TARTIVOT Gilbert hors St Jean', '2021-12-11', 10, 0),
(479, 155, 'TARTIVOT', 'Gilbert', 'Règlement licence', 'Règlement licence Chèque bancaire Caisse d Epargne 3594737', '2021-12-11', 0, 120),
(480, NULL, 'TARTIVOT', NULL, 'REM-DON', 'Remise don', '2021-12-11', 0, 34),
(481, NULL, 'TARTIVOT', NULL, 'Don', 'Don', '2021-12-11', 0, 100),
(482, 61, 'EL BANAISSATI-A', 'Anas', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-11', 0, 50),
(483, 63, 'EL BANAISSATI-A', 'Qais', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-11', 0, 50),
(484, 106, 'LEFEVRE', 'Jules', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-11', 0, 50),
(485, 66, 'FONTAINE', 'Antoine', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-11', 0, 50),
(486, 172, 'DELALANDE', 'KENDRIX', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-11', 0, 50),
(487, 188, 'BOULKIR', 'MEHDI', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-11', 0, 50),
(488, 187, 'BOULKIR', 'SOUHEÏLA', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-11', 0, 50),
(489, 186, 'BOULKIR', 'Mahieddine', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-11', 0, 50),
(490, 117, 'MAILLOT', 'Eliot', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-11', 0, 50),
(491, 51, 'DESHERBAIS', 'Laurent', 'LIC-BUR', 'Licence DESHERBAIS Laurent', '2021-12-17', 110, 0),
(492, 51, 'DESHERBAIS', 'Laurent', 'LIC-BUR', 'Licence DESHERBAIS Laurent hors St Jean', '2021-12-17', 0, 0),
(493, 51, 'DESHERBAIS', 'Laurent', 'Règlement licence', 'Règlement licence Chèque bancaire Crédit agricole 2097211', '2021-12-17', 0, 110),
(494, 81, 'GUERIN VANNEAU', 'Theo', 'Règlement licence', 'Règlement licence Espèces Autre banque ', '2021-12-17', 0, 110),
(495, 200, 'RIHOUM', 'FIRAS', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-24', 0, 0),
(496, 201, 'BOULKIR', 'SALEL', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-24', 0, 0),
(497, 200, 'RIHOUM', 'FIRAS', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-30', 0, 50),
(498, 201, 'BOULKIR', 'SALEL', 'Règlement licence', 'Règlement licence Autre paiement Autre banque ', '2021-12-30', 0, 50);

-- --------------------------------------------------------

--
-- Structure de la table `opérations_compte_famille2`
--

CREATE TABLE `opérations_compte_famille2` (
  `Famille` varchar(50) NOT NULL,
  `Date_opération` date NOT NULL,
  `Objet_règlement` varchar(50) NOT NULL,
  `Type_paiement` varchar(50) NOT NULL,
  `Montant` int(11) NOT NULL,
  `Banque` varchar(50) NOT NULL,
  `Code_chèque` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `paramètre_age_catégorie`
--

CREATE TABLE `paramètre_age_catégorie` (
  `Année_naissance_mini` int(11) NOT NULL,
  `Année_naissance_maxi` int(11) NOT NULL,
  `Catégorie1` char(1) NOT NULL,
  `Catégorie2` char(2) NOT NULL,
  `Numéro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `paramètre_age_catégorie`
--

INSERT INTO `paramètre_age_catégorie` (`Année_naissance_mini`, `Année_naissance_maxi`, `Catégorie1`, `Catégorie2`, `Numéro`) VALUES
(121, 81, 'V', 'V5', 15),
(80, 71, 'V', 'V4', 16),
(70, 61, 'V', 'V3', 17),
(60, 51, 'V', 'V2', 18),
(50, 41, 'V', 'V1', 19),
(40, 19, 'S', 'S', 20),
(18, 18, 'J', 'J3', 21),
(17, 17, 'J', 'J2', 22),
(16, 16, 'J', 'J1', 23),
(15, 15, 'C', 'C2', 24),
(14, 14, 'C', 'C1', 25),
(13, 13, 'M', 'M2', 26),
(12, 12, 'M', 'M1', 27),
(11, 11, 'B', 'B2', 28),
(10, 10, 'B', 'B1', 29),
(9, 4, 'P', 'P', 30);

-- --------------------------------------------------------

--
-- Structure de la table `paramètre_catégorie`
--

CREATE TABLE `paramètre_catégorie` (
  `Catégorie` char(1) DEFAULT NULL,
  `Numéro_catégorie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `paramètre_catégorie`
--

INSERT INTO `paramètre_catégorie` (`Catégorie`, `Numéro_catégorie`) VALUES
('P', 1),
('B', 2),
('M', 3),
('C', 4),
('J', 5),
('S', 6),
('V', 7);

-- --------------------------------------------------------

--
-- Structure de la table `participants_stage`
--

CREATE TABLE `participants_stage` (
  `Numéro` int(11) NOT NULL,
  `Nom` varchar(32) NOT NULL,
  `Prenom` varchar(32) NOT NULL,
  `Tel_mobile` varchar(10) DEFAULT NULL,
  `Email` varchar(64) DEFAULT NULL,
  `Date_Naissance` date DEFAULT NULL,
  `Numéro_licencie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `participants_stage`
--

INSERT INTO `participants_stage` (`Numéro`, `Nom`, `Prenom`, `Tel_mobile`, `Email`, `Date_Naissance`, `Numéro_licencie`) VALUES
(52, '', '', NULL, NULL, NULL, 35),
(53, '', '', NULL, NULL, NULL, 11);

-- --------------------------------------------------------

--
-- Structure de la table `participation_stage`
--

CREATE TABLE `participation_stage` (
  `Numéro` int(11) NOT NULL,
  `Numéro_participant` int(11) NOT NULL,
  `Numéro_stage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

CREATE TABLE `stages` (
  `ID` int(11) NOT NULL,
  `Libellé` varchar(128) DEFAULT NULL,
  `Num_Tarif` varchar(16) DEFAULT NULL,
  `Jour1` date DEFAULT NULL,
  `Jour2` date DEFAULT NULL,
  `Jour3` date DEFAULT NULL,
  `Jour4` date DEFAULT NULL,
  `Jour5` date DEFAULT NULL,
  `Jour6` date DEFAULT NULL,
  `Jour7` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stages`
--

INSERT INTO `stages` (`ID`, `Libellé`, `Num_Tarif`, `Jour1`, `Jour2`, `Jour3`, `Jour4`, `Jour5`, `Jour6`, `Jour7`) VALUES
(37, 'Stage Toussaint 2021', '16', '2021-10-25', '2021-10-26', '2021-10-27', '2021-10-28', '2021-10-29', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tarif`
--

CREATE TABLE `tarif` (
  `Code` varchar(30) DEFAULT NULL,
  `Nom_service` varchar(50) DEFAULT NULL,
  `Critère_mini` char(1) DEFAULT NULL,
  `Critère_maxi` char(1) DEFAULT NULL,
  `Tarif` int(11) DEFAULT '0',
  `Taux_montant_remise_club` float DEFAULT '0',
  `Majoration_externe` int(11) DEFAULT '0',
  `Numéro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tarif`
--

INSERT INTO `tarif` (`Code`, `Nom_service`, `Critère_mini`, `Critère_maxi`, `Tarif`, `Taux_montant_remise_club`, `Majoration_externe`, `Numéro`) VALUES
('LIC-PROMO', 'Licence promo', 'J', 'V', 110, 0, 10, 1),
('LIC-PROMO', 'Licence promo', 'M', 'C', 110, 0, 10, 2),
('LIC-PROMO', 'Licence promo', 'P', 'B', 110, 0, 10, 3),
('LIC-AC', 'Licence - Autre club', 'P', 'V', 60, 0, 0, 4),
('LIC-BUR', 'Licence - membre Bureau', 'S', 'V', 110, 0, 0, 5),
('LIC-ESS', 'Licence - Essai', 'P', 'V', 40, 0, 0, 6),
('LIC-L1', 'Licence - 1ère', 'P', 'V', 110, 0, 10, 7),
('LIC-R', 'Remise famille 1', '1', '1', 0, 0, 0, 8),
('LIC-R', 'Remise famille 2', '2', '2', 0, 20, 0, 9),
('LIC-R', 'Remise famille 3', '3', '3', 0, 55, 0, 10),
('LIC-R', 'Remise famille 4', '4', '4', 0, 110, 0, 11),
('CI', 'Compet indiv', 'P', 'V', 30, 0, 0, 12),
('LIC-TRADI', 'Licence tradi', 'J', 'V', 110, 0, 10, 13),
('LIC-TRADI', 'Licence tradi', 'M', 'C', 110, 0, 10, 14),
('LIC-TRADI', 'Licence tradi', 'P', 'B', 110, 0, 10, 15),
('REM-DON', 'Remise don', '0', '0', 0, 0.34, 0, 16);

-- --------------------------------------------------------

--
-- Structure de la table `tarif_stage`
--

CREATE TABLE `tarif_stage` (
  `Code` varchar(32) NOT NULL,
  `Libellé` varchar(64) NOT NULL,
  `Semaine` int(11) NOT NULL,
  `Lundi_mat` int(11) NOT NULL,
  `Lundi_apr` int(11) NOT NULL,
  `Mardi_mat` int(11) NOT NULL,
  `Mardi_apr` int(11) NOT NULL,
  `Mercredi_mat` int(11) NOT NULL,
  `Mercredi_apr` int(11) NOT NULL,
  `Jeudi_mat` int(11) NOT NULL,
  `Jeudi_apr` int(11) NOT NULL,
  `Vendredi_mat` int(11) NOT NULL,
  `Vendredi_apr` int(11) NOT NULL,
  `Samedi_mat` int(11) NOT NULL,
  `Samedi_apr` int(11) NOT NULL,
  `Dimanche_mat` int(11) DEFAULT NULL,
  `Dimanche_apr` int(11) DEFAULT NULL,
  `Numéro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tarif_stage`
--

INSERT INTO `tarif_stage` (`Code`, `Libellé`, `Semaine`, `Lundi_mat`, `Lundi_apr`, `Mardi_mat`, `Mardi_apr`, `Mercredi_mat`, `Mercredi_apr`, `Jeudi_mat`, `Jeudi_apr`, `Vendredi_mat`, `Vendredi_apr`, `Samedi_mat`, `Samedi_apr`, `Dimanche_mat`, `Dimanche_apr`, `Numéro`) VALUES
('Stage Club ', 'Stage club classique', 65, 6, 9, 6, 16, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 16);

-- --------------------------------------------------------

--
-- Structure de la table `travaillicencié`
--

CREATE TABLE `travaillicencié` (
  `Numéro` int(11) NOT NULL,
  `Famille` varchar(50) DEFAULT NULL,
  `Nom_licencié` varchar(50) DEFAULT NULL,
  `Prénom_licencié` varchar(50) DEFAULT NULL,
  `Sexe` char(1) DEFAULT NULL,
  `Date_Naissance` varchar(10) DEFAULT NULL,
  `Tel_mobile` char(10) DEFAULT NULL,
  `Tel_domicile` char(10) DEFAULT NULL,
  `Tel_travail` char(10) DEFAULT NULL,
  `Email_perso` varchar(50) DEFAULT NULL,
  `Email_travail` varchar(50) DEFAULT NULL,
  `Catégorie_1` char(1) DEFAULT NULL,
  `Catégorie_2` char(2) DEFAULT NULL,
  `Type_licence` varchar(10) DEFAULT NULL,
  `Participation_compétition_individuelle` tinyint(1) DEFAULT NULL,
  `Saint_Jean_de_la_Ruelle` tinyint(1) DEFAULT NULL,
  `Numéro_licence` int(11) DEFAULT NULL,
  `Inscription` tinyint(1) DEFAULT NULL,
  `Date_inscription` date DEFAULT NULL,
  `Certificat_médical` tinyint(1) DEFAULT NULL,
  `Nationalité` char(2) DEFAULT NULL,
  `Membre_bureau` tinyint(1) DEFAULT NULL,
  `1ere_licence` tinyint(1) DEFAULT NULL,
  `Autre_club` tinyint(1) DEFAULT NULL,
  `Essai` tinyint(1) DEFAULT NULL,
  `Handicap` tinyint(1) DEFAULT NULL,
  `Commentaire` varchar(100) DEFAULT NULL,
  `Stage_uniquement` tinyint(1) DEFAULT NULL,
  `Demie_tarif` tinyint(1) DEFAULT NULL,
  `Licence_gratuite` tinyint(1) DEFAULT NULL,
  `Participation_équipe_sénior` tinyint(1) DEFAULT NULL,
  `Autorisation_photo_vidéo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `travaillicencié`
--

INSERT INTO `travaillicencié` (`Numéro`, `Famille`, `Nom_licencié`, `Prénom_licencié`, `Sexe`, `Date_Naissance`, `Tel_mobile`, `Tel_domicile`, `Tel_travail`, `Email_perso`, `Email_travail`, `Catégorie_1`, `Catégorie_2`, `Type_licence`, `Participation_compétition_individuelle`, `Saint_Jean_de_la_Ruelle`, `Numéro_licence`, `Inscription`, `Date_inscription`, `Certificat_médical`, `Nationalité`, `Membre_bureau`, `1ere_licence`, `Autre_club`, `Essai`, `Handicap`, `Commentaire`, `Stage_uniquement`, `Demie_tarif`, `Licence_gratuite`, `Participation_équipe_sénior`, `Autorisation_photo_vidéo`) VALUES
(1, 'ALLEMAND', 'ALLEMAND', 'Patrick', 'M', '04-01-1965', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4521274, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(2, 'ARCELIN', 'ARCELIN', 'Vince', 'M', '07-07-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4523654, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(3, 'AUDIBERT-F', 'AUDIBERT', 'Françoise', 'F', '22-11-1949', '', '', '', '', '', 'V', 'V3', '', 0, 0, 4517615, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(4, 'BARET', 'BARET', 'Ilan', 'M', '28-06-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(5, 'BAYON', 'BAYON', 'Sylvain', 'M', '19-11-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4521050, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(6, 'BENMERZOUG', 'BENMERZOUG', 'Yanis', 'M', '03-09-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523032, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(7, 'BERAULT', 'BERAULT', 'Thierry', 'M', '16-01-1963', '', '', '', '', '', 'V', 'V2', '', 0, 1, 45617, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(8, 'BERNARD-COQUARD', 'BERNARD-COQUARD', 'Arthur', 'M', '29-08-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 4523894, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(9, 'BERTIN', 'BERTIN', 'Thomas', 'M', '08-09-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4523112, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(10, 'BERTRAND', 'BERTRAND', 'SAMUEL', 'M', '11-04-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4523646, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(11, 'BERTRAND', 'BERTRAND', 'FANNY', 'F', '30-07-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523645, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(12, 'BIDEAULT', 'BIDEAULT', 'Nicolas', 'M', '24-12-1997', '', '', '', '', '', 'S', 'S', '', 0, 0, 4516933, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(13, 'BIDEAULT', 'BIDEAULT', 'Frederic', 'M', '01-04-1966', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4519700, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(14, 'BONHOMME', 'BONHOMME', 'Julie', 'F', '23-05-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523514, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(15, 'BONHOMME', 'BONHOMME', 'Hugo', 'M', '20-08-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(16, 'BOUGRé', 'BOUGRé', 'Léo', 'M', '30-12-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4522158, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(17, 'BOURSELOT', 'BOURSELOT', 'Lucas', 'M', '27-04-1997', '', '', '', '', '', 'S', 'S', '', 0, 1, 6313032, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(18, 'BOUVET', 'BOUVET', 'Amaury', 'M', '17-08-1985', '', '', '', '', '', 'S', 'S', '', 0, 0, 4519360, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(19, 'BRIOCHE', 'BRIOCHE', 'Francis', 'M', '06-10-1953', '', '', '', '', '', 'V', 'V3', '', 0, 0, 4519334, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(20, 'BROSSARD', 'BROSSARD', 'Emile', 'M', '23-03-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 4523351, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(21, 'BROT-SOUCHU', 'SOUCHU', 'Jennifer', 'M', '10-02-1979', '', '', '', '', '', 'S', 'S', '', 0, 1, 4522972, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(22, 'BRULE-D', 'BRULE', 'Damien', 'M', '19-08-1987', '', '', '', '', '', 'S', 'S', '', 0, 0, 4522976, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(23, 'BRULERE', 'BRULERE', 'Didier', 'M', '26-03-1961', '', '', '', '', '', 'V', 'V2', '', 0, 1, 4522677, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(24, 'BRULERE', 'BRULERE', 'Erwan', 'M', '14-05-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4521178, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(25, 'BRULERE', 'BRULERE', 'Romain', 'M', '14-05-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4521177, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(26, 'BRUNEAU', 'BRUNEAU', 'Liza', 'F', '15-07-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 4523801, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(27, 'CAMU', 'CAMU', 'Flavie', 'F', '08-12-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(28, 'CAMU', 'CAMU', 'Matthieu', 'M', '16-12-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(29, 'CARIGNON', 'CARIGNON', 'Loic', 'M', '16-11-1984', '', '', '', '', '', 'S', 'S', '', 0, 0, 4522499, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(30, 'CHANTELOUX-F', 'CHANTELOUX', 'Frederic', 'M', '29-05-1971', '', '', '', '', '', 'V', 'V1', '', 0, 0, 451048, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(31, 'CHANTELOUX-O', 'CHANTELOUX', 'OLIVIER', 'M', '29-05-1971', '', '', '', '', '', 'V', 'V1', '', 0, 0, 451855, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(32, 'CHARIGNON', 'CHARIGNON', 'Louis', 'M', '11-02-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(33, 'CIMETIERE', 'CIMETIERE', 'Maud', 'F', '24-02-1998', '', '', '', '', '', 'S', 'S', '', 0, 1, 4519179, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(34, 'CLOSSET', 'CLOSSET', 'Axel', 'M', '19-08-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4522131, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(35, 'COENEN', 'COENEN', 'Nicolas', 'M', '11-04-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4522237, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Diabétique, intolérant au gluten', 0, 0, 0, 0, 0),
(36, 'COSSON', 'COSSON', 'Jean-claude', 'M', '14-10-1936', '', '', '', '', '', 'V', 'V4', '', 0, 0, 45624, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(37, 'CRINON-HERRENSCHMIDT', 'CRINON-HERRENSCHMIDT', 'Celestin', 'M', '12-07-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 4523667, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(38, 'DEFRANCE', 'DEFRANCE', 'Florian', 'M', '01-08-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523515, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(39, 'DEFRANCE', 'DEFRANCE', 'Elodie', 'F', '19-06-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4523663, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(40, 'DESCHAMPS', 'DESCHAMPS', 'Maxime', 'M', '21-02-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4523650, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(41, 'DESCHAMPS', 'DESCHAMPS', 'Kevin', 'M', '14-04-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4523649, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(42, 'DHAINAUT', 'DHAINAUT', 'Capucine', 'F', '10-02-1995', '', '', '', '', '', 'S', 'S', '', 0, 0, 4515739, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(43, 'DOLBEAU', 'DOLBEAU', 'Gregoire', 'M', '13-07-1988', '', '', '', '', '', 'S', 'S', '', 0, 0, 458996, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(44, 'DOLLEANS', 'DOLLEANS', 'Dominique', 'M', '28-08-1965', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4523674, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(45, 'DOLLEANS', 'DOLLEANS', 'Mathilde', 'F', '16-01-1996', '', '', '', '', '', 'S', 'S', '', 0, 0, 4518711, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(46, 'DOLLEANS', 'DOLLEANS', 'Theo', 'M', '22-02-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4520268, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(47, 'DOMINGUES', 'DOMINGUES', 'Luca', 'M', '05-11-1997', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(48, 'DUCHENE', 'DUCHENE', 'Elodie', 'F', '24-03-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4521272, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(49, 'DUCHENE', 'DUCHENE', 'Kevin', 'M', '11-02-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4521273, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(50, 'DUCHENE', 'DUCHENE', 'Sophie', 'F', '13-08-1973', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4521869, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(51, 'ECHE', 'ECHE', 'Soren', 'M', '04-09-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4522444, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(52, 'FAURE', 'FAURE', 'Fabrice', 'M', '06-03-1965', '', '', '', '', '', 'V', 'V2', '', 0, 0, 456678, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(53, 'GODIN-F', 'FOUCAULT', 'Mathias', 'M', '24-12-1971', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4523691, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(54, 'FOURNIER', 'FOURNIER', 'Bastien', 'M', '04-10-1997', '', '', '', '', '', 'S', 'S', '', 0, 1, 4513828, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(55, 'FOURNIER', 'FOURNIER', 'Julie', 'F', '13-03-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4515349, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(56, 'FOURNIER', 'FOURNIER', 'Damien', 'M', '14-07-1991', '', '', '', '', '', 'S', 'S', '', 0, 1, 4512107, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(57, 'GARLET', 'GARLET', 'Alexandre', 'M', '12-11-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4523669, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(58, 'GASNIER', 'GASNIER', 'Axel', 'M', '01-11-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4523752, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(59, 'GAYRARD', 'GAYRARD', 'Jacqueline', 'F', '29-03-1940', '', '', '', '', '', 'V', 'V4', '', 0, 1, 4513119, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(60, 'GILLET', 'GILLET', 'Matthieu', 'M', '07-03-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 4523655, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(61, 'GILLET', 'GILLET', 'Romain', 'M', '04-12-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4523656, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(62, 'GIORGIS', 'GIORGIS', 'Jean-pierre', 'M', '31-10-1958', '', '', '', '', '', 'V', 'V2', '', 0, 1, 4514585, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(63, 'GODIN-F', 'GODIN', 'Florian', 'M', '31-07-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4524091, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(64, 'GODIN-F', 'GODIN', 'Corentin', 'M', '04-02-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4523662, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(65, 'GOJON', 'GOJON', 'Adrien', 'M', '30-12-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4523651, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(66, 'GOMEZ', 'GOMEZ', 'Thibault', 'M', '20-08-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4523648, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(67, 'GOUEFFON', 'GOUEFFON', 'Laurent', 'M', '26-06-1969', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4521280, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(68, 'GOUEFFON', 'GOUEFFON', 'Quentin', 'M', '21-07-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 4519757, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(69, 'GRAPAIN', 'GRAPAIN', 'Valentin', 'M', '21-09-1998', '', '', '', '', '', 'S', 'S', '', 0, 1, 4519366, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Alergie à chlorheoidine', 0, 0, 0, 0, 0),
(70, 'GRELLARD', 'GRELLARD', 'Lino', 'M', '07-08-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523661, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(71, 'GRICHINE', 'GRICHINE', 'Nicolas', 'M', '20-10-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4523653, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(72, 'GRILHAULT FONTAINES', 'GRILHAULT FONTAINES', 'Alexis', 'M', '15-10-1986', '', '', '', '', '', 'S', 'S', '', 0, 0, 4523706, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(73, 'GUERIN VANNEAU', 'GUERIN VANNEAU', 'Theo', 'M', '10-01-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523350, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(74, 'GUILLOT', 'GUILLOT', 'Stephane', 'M', '06-01-1970', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4523677, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(75, 'GUILLOT', 'GUILLOT', 'Adel', 'M', '29-04-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4521776, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(76, 'HERBIN-R', 'HERBIN', 'Robert', 'M', '11-05-1931', '', '', '', '', '', 'V', 'V4', '', 0, 1, 4522414, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(77, 'HERCENT-E', 'HERCENT', 'Eric', 'M', '26-08-1963', '', '', '', '', '', 'V', 'V2', '', 0, 0, 2589, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(78, 'HERPIN', 'HERPIN', 'Hugo', 'M', '13-11-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4523657, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(79, 'HERPIN', 'HERPIN', 'Nathan', 'M', '18-06-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 4523658, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(80, 'HOSPITAL', 'HOSPITAL', 'Baptiste', 'M', '04-06-2008', '', '', '', '', '', 'P', 'P', '', 0, 1, 4523698, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(81, 'HOSPITAL', 'HOSPITAL', 'Aurelien', 'M', '08-01-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4522878, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(82, 'HOULIERE', 'HOULIERE', 'Yvan', 'M', '27-07-1972', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4522686, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(83, 'HUBERT', 'HUBERT', 'Tony', 'M', '03-10-1979', '', '', '', '', '', 'S', 'S', '', 0, 1, 4523750, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(84, 'HUBERT', 'HUBERT', 'Isaline', 'F', '31-07-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4522159, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(85, 'KERDREUX', 'KERDREUX', 'Julien', 'M', '30-01-1978', '', '', '', '', '', 'S', 'S', '', 0, 0, 4516775, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(86, 'KRETZ', 'KRETZ', 'Manon', 'F', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(87, 'KRETZ', 'KRETZ', 'Charles', 'M', '27-04-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 4523660, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(88, 'LAGRANGE', 'LAGRANGE', 'Charlotte', 'F', '11-08-1988', '', '', '', '', '', 'S', 'S', '', 0, 0, 459708, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(89, 'LAQUIS-GUENIER', 'LAQUIS-GUENIER', 'Baptiste', 'M', '02-11-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523672, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(90, 'LEGER', 'LEGER', 'Alexis', 'M', '18-03-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4521535, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(91, 'LEITE TEXEIRA', 'LEITE TEXEIRA', 'Jonathan', 'M', '10-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4521331, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(92, 'LESAUX', 'LESAUX', 'Gabriel', 'M', '29-08-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523659, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(93, 'LESERRE', 'LESERRE', 'Loann', 'M', '10-08-1996', '', '', '', '', '', 'S', 'S', '', 0, 0, 4523895, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'UFOLEP', 0, 0, 0, 0, 0),
(94, 'MAITE', 'MAITE', 'Nicolas', 'M', '12-10-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4517280, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(95, 'MAITE', 'MAITE', 'Elodie', 'F', '13-03-1990', '', '', '', '', '', 'S', 'S', '', 0, 1, 4521268, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(96, 'MARIE', 'MARIE', 'Edouard', 'M', '21-11-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4520305, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(97, 'MARIGNY', 'MARIGNY', 'Alexis', 'M', '19-01-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523310, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE Paul Doumer', 0, 0, 0, 0, 0),
(98, 'MARTIN-G', 'MARTIN', 'Gregoire', 'M', '22-08-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4522772, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(99, 'MARTIN-G', 'MARTIN', 'Hubert', 'M', '21-11-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4522773, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(100, 'MARTIN-M', 'MARTIN', 'Milo', 'M', '02-08-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4522223, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'cours Pole Excellence Jean-mermoz', 0, 0, 0, 0, 0),
(101, 'MAUCUIT', 'MAUCUIT', 'Maxime', 'M', '28-05-1997', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(102, 'MERIC', 'MERIC', 'Louise', 'F', '15-09-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(103, 'MEYRIEUX', 'MEYRIEUX', 'Hugo', 'M', '03-01-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4522614, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(104, 'MIGNAN', 'MIGNAN', 'David', 'M', '27-04-1991', '', '', '', '', '', 'S', 'S', '', 0, 0, 4513821, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(105, 'MOUSSEAUX', 'MOUSSEAUX', 'Chloe', 'F', '22-01-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4523673, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(106, 'NAUDIN', 'NAUDIN', 'Laura', 'F', '17-05-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4523647, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(107, 'NAUDIN', 'NAUDIN', 'John', 'M', '03-09-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523670, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(108, 'OVIER', 'OVIER', 'Ethan', 'M', '06-08-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(109, 'OVIER', 'OVIER', 'Waah', 'M', '01-08-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(110, 'OVIER', 'OVIER', 'Noah', 'M', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(111, 'PALLOT', 'PALLOT', 'Celien', 'M', '10-03-1995', '', '', '', '', '', 'S', 'S', '', 0, 0, 4513825, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(112, 'PAOLI', 'PAOLI', 'MARIE', 'F', '27-05-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4523473, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(113, 'PAOLI', 'PAOLI', 'Guillaume', 'M', '03-10-1975', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4523802, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(114, 'PAOLI', 'PAOLI', 'Pierre', 'M', '23-08-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4520782, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(115, 'PAWLOWICZ', 'PAWLOWICZ', 'Julien', 'M', '20-01-1988', '', '', '', '', '', 'S', 'S', '', 0, 0, 458458, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(116, 'PERDEREAU', 'PERDEREAU', 'Adrien', 'M', '13-09-1995', '', '', '', '', '', 'S', 'S', '', 0, 0, 4520523, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(117, 'PICHON', 'PICHON', 'Marion', 'F', '13-01-2007', '', '', '', '', '', 'B', 'B1', '', 0, 0, 4523668, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(118, 'PICHON', 'PICHON', 'Lucas', 'M', '12-05-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 4522874, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(119, 'POITOU', 'POITOU', 'Théo', 'M', '09-09-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Licencié à St  Lyé', 0, 0, 0, 0, 0),
(120, 'PORFIRIO', 'PORFIRIO', 'Alexandre', 'M', '01-01-1996', '', '', '', '', '', 'S', 'S', '', 0, 0, 4514312, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(121, 'PRIEUR', 'PRIEUR', 'Amandine', 'F', '26-05-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4521174, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(122, 'PUERTOLAS', 'PUERTOLAS', 'Jean-philippe', 'M', '15-07-1964', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4511098, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(123, 'QUETARD-J', 'QUETARD', 'Julien', 'M', '02-01-1985', '', '', '', '', '', 'S', 'S', '', 0, 0, 454755, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(124, 'QUINCE', 'QUINCE', 'Manon', 'F', '26-11-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(125, 'QUINCE', 'QUINCE', 'Yohan', 'M', '14-02-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(126, 'QUINCE', 'QUINCE', 'Nicolas', 'M', '04-04-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(127, 'RABETTE', 'RABETTE', 'Matthieu', 'M', '02-02-1982', '', '', '', '', '', 'S', 'S', '', 0, 0, 873536, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(128, 'RABIER', 'RABIER', 'Adrien', 'M', '23-05-1986', '', '', '', '', '', 'S', 'S', '', 0, 0, 458679, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(129, 'RATISSEAU', 'RATISSEAU', 'Romain', 'M', '26-09-1995', '', '', '', '', '', 'S', 'S', '', 0, 0, 4518017, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(130, 'REYNAUD', 'REYNAUD', 'Vinciane', 'F', '20-04-1968', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4512331, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(131, 'REYNAUD', 'REYNAUD', 'Jean-robert', 'M', '18-04-1962', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4512330, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(132, 'ROBLET', 'ROBLET', 'Franck', 'M', '11-04-1979', '', '', '', '', '', 'S', 'S', '', 0, 1, 4514933, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(133, 'ROUQUET', 'ROUQUET', 'Valentin', 'M', '17-08-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4522162, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(134, 'SANCHEZ', 'SANCHEZ', 'Jean francois', 'M', '25-10-1961', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4514184, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(135, 'SAVIN', 'SAVIN', 'Christine', 'F', '20-01-1956', '', '', '', '', '', 'V', 'V3', '', 0, 1, 4523800, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(136, 'SAVIN', 'BITHOUN', 'Charline', 'F', '24-09-1993', '', '', '', '', '', 'S', 'S', '', 0, 1, 4512355, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(137, 'SBROLLINI', 'SBROLLINI', 'Quentin', 'M', '11-04-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 4523768, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(138, 'SCAGNELLI', 'SCAGNELLI', 'Clément', 'M', '10-11-1992', '', '', '', '', '', 'S', 'S', '', 0, 0, 9421444, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(139, 'SEVOT', 'SEVOT', 'Romain', 'M', '03-08-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4520644, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(140, 'SOLON', 'SOLON', 'Frederic', 'M', '09-11-1969', '', '', '', '', '', 'V', 'V1', '', 0, 0, 456160, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(141, 'TATIGNE', 'TATIGNE', 'Tristan', 'M', '05-05-2007', '', '', '', '', '', 'B', 'B1', '', 0, 0, 4522785, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(142, 'THIBAULT-G', 'THIBAULT', 'Gabriel', 'M', '30-07-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4521267, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(143, 'THIBAULT-S', 'THIBAULT', 'Sébastien', 'M', '02-01-1996', '', '', '', '', '', 'S', 'S', '', 0, 1, 4516614, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(144, 'TISSIER', 'TISSIER', 'Quentin', 'M', '17-12-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4521868, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(145, 'TOUCHAUD', 'TOUCHAUD', 'Jean-luc', 'M', '08-11-1959', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4512386, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(146, 'VILLET', 'VILLET', 'LOUIS', 'M', '16-10-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4523652, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(147, 'ZABET', 'ZABET', 'Paul', 'M', '30-06-1949', '', '', '', '', '', 'V', 'V3', '', 0, 0, 458497, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(148, 'ABUREGAIBA', 'ABUREGAIBA', 'Nils', 'M', '11-12-1987', '', '', '', '', '', 'S', 'S', '', 0, 0, 4523397, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(149, 'ALBARET', 'ALBARET', 'Clement', 'M', '08-02-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4522443, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(150, 'ANDRE', 'ANDRE', 'Theo', 'M', '02-01-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4523034, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(151, 'ARAUJO LOPEZ', 'ARAUJO LOPEZ', 'Joao', 'M', '29-03-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4523312, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(152, 'ARAUJO LOPEZ', 'ARAUJO LOPEZ', 'Adriana', 'F', '12-11-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523313, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(153, 'ARFI', 'ARFI', 'Nabil', 'M', '16-01-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4523600, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(154, 'ATTOUAMAMI', 'ATTOUAMAMI', 'Lea', 'F', '28-07-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523320, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(155, 'AYYILDIZ', 'AYYILDIZ', 'Tayyip', 'M', '23-11-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523204, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(156, 'AYYILDIZ', 'AYYILDIZ', 'Umran', 'F', '27-07-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523205, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(157, 'BARBET', 'BARBET', 'Rémi', 'M', '12-12-1997', '', '', '', '', '', 'S', 'S', '', 0, 1, 4520347, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(158, 'BAUDIN', 'BAUDIN', 'Maxime', 'M', '05-06-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4523461, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(159, 'BERNARD', 'BERNARD', 'Chloe', 'F', '17-09-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4522973, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(160, 'BEUCHER', 'BEUCHER', 'Cyril', 'M', '11-07-1994', '', '', '', '', '', 'S', 'S', '', 0, 0, 4512695, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(161, 'BIDIVILLE', 'BIDIVILLE', 'Lenny', 'M', '28-10-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523206, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(162, 'BLANVILLAIN', 'BLANVILLAIN', 'Florian', 'M', '17-08-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4522235, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(163, 'BLOT', 'BLOT', 'Dylan', 'M', '08-01-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4522132, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(164, 'BOLONGO', 'BOLONGO', 'Josias', 'M', '23-02-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4523418, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(165, 'BOUDHENE', 'BOUDHENE', 'Mohamed', 'M', '26-11-1995', '', '', '', '', '', 'S', 'S', '', 0, 1, 4522866, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(166, 'BOUKHETACHE', 'BOUKHETACHE', 'Samy', 'M', '07-05-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4522829, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(167, 'BOURGEOIS', 'BOURGEOIS', 'Etienne', 'M', '26-03-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 4522876, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(168, 'BOURGEOIS', 'BOURGEOIS', 'Cecile', 'F', '04-04-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4522877, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(169, 'BRARD', 'BRARD', 'Isabelle', 'F', '15-10-1981', '', '', '', '', '', 'S', 'S', '', 0, 0, 4511753, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(170, 'BROSSARD', 'BROSSARD', 'Mathieu', 'M', '30-12-1972', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4523352, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(171, 'BROT-SOUCHU', 'BROT-SOUCHU', 'Maxim', 'M', '23-02-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4522972, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(172, 'CAMARA', 'CAMARA', 'Fred', 'M', '16-11-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4523601, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(173, 'CAMPANA', 'CAMPANA', 'Loîc', 'M', '27-02-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4520259, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(174, 'CAMPANA', 'CAMPANA', 'Maelle', 'F', '03-03-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4521760, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(175, 'CHAUVIN', 'CHAUVIN', 'Solly', 'M', '17-06-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4522529, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(176, 'CHOLET', 'CHOLET', 'Charlotte', 'F', '11-11-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523209, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(177, 'DA SILVA GLOMEAU', 'DA SILVA GLOMEAU', 'Jeremy', 'M', '02-03-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 4522615, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(178, 'DECASTRO', 'DECASTRO', 'Hugo', 'M', '03-12-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523015, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(179, 'DEMAY', 'DEMAY', 'Killian', 'M', '08-08-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523305, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE', 0, 0, 0, 0, 0),
(180, 'DESALEUX', 'DESALEUX', 'Nataniel', 'M', '08-11-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4522879, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(181, 'DESBONNES', 'DESBONNES', 'Karolane', 'F', '02-06-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 4523602, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(182, 'DESOUSA', 'DESOUSA', 'Flavie', 'M', '08-02-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4522870, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(183, 'DIA', 'DIA', 'Alhousseiny', 'M', '21-06-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4523378, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(184, 'DIABY', 'DIABY', 'Fatoumata', 'F', '19-04-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523306, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(185, 'DOREAU', 'DOREAU', 'Thomas', 'M', '10-04-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4523481, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(186, 'DRAME', 'DRAME', 'Souareba', 'F', '09-04-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4523603, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(187, 'DUPAS', 'DUPAS', 'Melanie', 'F', '30-06-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4522556, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(188, 'DUPIOT', 'DUPIOT', 'Maite', 'F', '20-11-1946', '', '', '', '', '', 'V', 'V4', '', 0, 0, 4522236, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(189, 'DUPIOT', 'DE VIAL', 'Philippe', 'M', '21-08-1953', '', '', '', '', '', 'V', 'V3', '', 0, 0, 4522982, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(190, 'ECHE', 'ECHE', 'Thibault', 'M', '03-02-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 4522979, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(191, 'ECHE', 'ECHE', 'Rebecca', 'F', '27-12-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 4522980, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(192, 'ECHE', 'ECHE', 'Jean-francois', 'M', '16-09-1956', '', '', '', '', '', 'V', 'V3', '', 0, 0, 4523465, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(193, 'EL GARFAT', 'EL GARFAT', 'Rhym', 'M', '01-03-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4523508, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(194, 'FANTIN', 'FANTIN', 'Joffrey', 'M', '06-10-1992', '', '', '', '', '', 'S', 'S', '', 0, 0, 7719388, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(195, 'FIDAN', 'FIDAN', 'Sezer', 'M', '08-03-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4522241, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(196, 'FREDON', 'FREDON', 'Karine', 'F', '29-05-1972', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4522530, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(197, 'GARCIA', 'GARCIA', 'Leo', 'M', '17-08-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4522875, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(198, 'GAUTHIER-Max', 'GAUTHIER', 'Maxime', 'M', '05-09-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 4522139, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(199, 'GAUTHIER-Mic', 'GAUTHIER', 'Mickael', 'M', '24-07-1985', '', '', '', '', '', 'S', 'S', '', 0, 0, 242389, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(200, 'GEORGES', 'GEORGES', 'Killian', 'M', '04-12-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4520982, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(201, 'GEYIK', 'GEYIK', 'Mehmet', 'M', '18-06-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523308, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(202, 'GHOUIL', 'GHOUIL', 'Rayan', 'M', '24-05-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4522872, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(203, 'GIORGIS', 'GIORGIS', 'Baptiste', 'M', '08-10-1992', '', '', '', '', '', 'S', 'S', '', 0, 1, 4512837, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(204, 'GIRARD', 'GIRARD', 'Hugo', 'M', '26-07-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523316, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(205, 'GOSME', 'GOSME', 'Matheo', 'M', '07-06-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4522871, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(206, 'GOUEFFON', 'GOUEFFON', 'Hugo', 'M', '18-08-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4519758, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(207, 'GUERRAS', 'GUERRAS', 'Amir', 'M', '23-01-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4522218, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(208, 'GUIAVARCH', 'GUIAVARCH', 'Thomas', 'M', '10-02-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4522038, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(209, 'GUIAVARCH', 'GUIAVARCH', 'Erwan', 'M', '18-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4523379, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(210, 'GUILBERT', 'GUILBERT', 'Ambre', 'F', '28-04-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4522219, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(211, 'HABERT', 'HABERT', 'Ludovic', 'M', '08-09-1977', '', '', '', '', '', 'S', 'S', '', 0, 0, 4523113, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(212, 'HABIB', 'HABIB', 'Ilias', 'M', '01-02-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4522220, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(213, 'HAMEAU', 'HAMEAU', 'Arthur', 'M', '21-09-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4522483, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(214, 'HAMEAU', 'HAMEAU', 'Denis', 'M', '01-02-1972', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4522484, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(215, 'HAMEAU', 'HAMEAU', 'Heloise', 'F', '02-11-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523018, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(216, 'HELALI', 'HELALI', 'Anais', 'F', '08-01-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523207, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(217, 'HERBIN-I', 'HERBIN', 'Isabelle', 'F', '16-12-1963', '', '', '', '', '', 'V', 'V2', '', 0, 1, 4516776, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(218, 'HOUSNI', 'HOUSNI', 'Ilies', 'M', '28-07-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523317, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(219, 'HUBERT', 'HUBERT', 'Noéli', 'F', '18-12-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4522160, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(220, 'JAMET DOUARD', 'JAMET DOUARD', 'Romain', 'M', '07-08-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4523462, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(221, 'JEGOU', 'JEGOU', 'Leoni', 'F', '04-07-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523463, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(222, 'JENDOUBI', 'JENDOUBI', 'Jade', 'F', '29-11-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4523509, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(223, 'KAFI', 'KAFI', 'Karim', 'M', '19-10-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523307, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(224, 'KAFI', 'KAFI', 'Medhi', 'M', '18-07-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4523318, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(225, 'KARACA', 'KARACA', 'Ozgur', 'M', '01-06-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4523314, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(226, 'KARAKAYA', 'KARAKAYA', 'Mikail', 'M', '30-09-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4522974, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(227, 'KARAKAYA', 'KARAKAYA', 'Ismail', 'M', '13-06-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4523349, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE Paul Doumer', 0, 0, 0, 0, 0),
(228, 'KARAMOKO', 'KARAMOKO', 'Kadhy', 'M', '21-04-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4523419, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(229, 'KHATTOU', 'KHATTOU', 'Adrien', 'M', '16-06-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523019, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(230, 'KONDO', 'KONDO', 'Brandon', 'M', '07-02-1998', '', '', '', '', '', 'S', 'S', '', 0, 1, 4523360, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(231, 'KOUVOUAMA', 'KOUVOUAMA', 'Abel', 'M', '06-07-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4522869, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(232, 'LAURENCEAU', 'LAURENCEAU', 'Frederic', 'M', '03-05-1975', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4523027, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(233, 'LAURENT', 'LAURENT', 'Esteban', 'M', '08-03-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4523309, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(234, 'LAURENT', 'LAURENT', 'Ludivine', 'F', '25-09-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523422, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(235, 'LE BRUSQUET', 'LE BRUSQUET', 'Yohan', 'M', '02-05-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4522042, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(236, 'LE MAO', 'LE MAO', 'Dimitry', 'M', '21-11-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 4521172, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(237, 'LECOUR', 'LECOUR', 'Maxence', 'M', '12-04-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523014, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(238, 'LEDON', 'LEDON', 'Tom', 'M', '04-01-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 4521847, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(239, 'LEDON', 'LEDON', 'Morgane', 'F', '23-08-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4521848, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(240, 'LENORMAND', 'LENORMAND', 'Chloe', 'F', '30-11-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523017, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(241, 'LESAGE', 'LESAGE', 'Emma', 'F', '19-04-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4522261, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(242, 'LIM', 'LIM', 'Angela', 'F', '07-10-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4521448, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(243, 'MAITE', 'MAITE', 'Isabelle', 'F', '17-06-1961', '', '', '', '', '', 'V', 'V2', '', 0, 1, 4522995, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(244, 'MAJOREL', 'MAJOREL', 'Antoine', 'M', '28-02-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4523464, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(245, 'MAQUIN', 'MAQUIN', 'Godefroy', 'M', '17-06-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4520200, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(246, 'MARION', 'MARION', 'Adel', 'M', '20-01-1998', '', '', '', '', '', 'S', 'S', '', 0, 1, 4522687, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(247, 'MARTIN-A', 'MARTIN', 'Amael', 'M', '24-09-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4521536, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(248, 'MARTINS COELHO', 'MARTINS COELHO', 'Bruno', 'M', '26-12-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4521233, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(249, 'MASSON', 'MASSON', 'Lucas', 'M', '25-07-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4519079, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(250, 'MASSON', 'MASSON', 'Quentin', 'M', '02-12-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4522868, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(251, 'MASSON', 'MASSON', 'Carla', 'F', '15-10-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523013, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(252, 'MENANT', 'MENANT', 'Mathilde', 'F', '16-02-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4522867, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(253, 'MERANDON', 'MERANDON', 'Kylian', 'M', '06-07-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4522873, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(254, 'MERT', 'MERT', 'Furkan', 'M', '05-10-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4522224, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(255, 'METURA', 'METURA', 'Axel', 'M', '10-02-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523208, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'mairie', 0, 0, 0, 0, 0),
(256, 'MONTEILS', 'MONTEILS', 'Alicia', 'F', '22-05-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4522981, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(257, 'MONTIGNY', 'MONTIGNY', 'Victor', 'M', '14-04-1998', '', '', '', '', '', 'S', 'S', '', 0, 0, 4520515, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(258, 'MONTMEAS', 'MONTMEAS', 'Jean-yves', 'M', '13-08-1962', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4523468, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(259, 'MONTMEAS', 'MONTMEAS', 'Guillaume', 'M', '23-06-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4523469, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(260, 'MONTMEAS', 'MONTMEAS', 'Pierre', 'M', '03-11-1998', '', '', '', '', '', 'S', 'S', '', 0, 0, 4523471, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(261, 'MORAIS', 'MORAIS', 'Michel', 'M', '10-04-1978', '', '', '', '', '', 'S', 'S', '', 0, 0, 4516230, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(262, 'MOUKRIM', 'MOUKRIM', 'Sanae', 'F', '05-10-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4523510, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(263, 'MOUKRIM', 'MOUKRIM', 'Sanae', 'F', '05-10-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4523510, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(264, 'MUELLE', 'MUELLE', 'Sylvain', 'M', '03-03-1975', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4521192, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(265, 'MURIA', 'MURIA', 'Luna', 'F', '14-09-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4522675, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(266, 'NDOUGOU NGUINI', 'NDOUGOU NGUINI', 'Harry', 'M', '29-08-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4523511, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(267, 'OUSSENI-ANLI', 'OUSSENI-ANLI', 'Choucra', 'M', '06-03-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4523315, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(268, 'PALAIS', 'PALAIS', 'Rayan', 'M', '26-02-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4523416, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(269, 'PALAIS', 'PALAIS', 'Ines', 'M', '11-02-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4523420, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(270, 'PALLOT', 'DUVAL', 'Laurence', 'F', '22-02-1965', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4517768, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(271, 'PALLOT', 'PALLOT', 'Frank', 'M', '20-08-1959', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4522303, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(272, 'PARINELLO', 'PARINELLO', 'Hugo', 'M', '25-08-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4522771, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(273, 'PERDEREAU', 'PERDEREAU', 'Armand', 'M', '17-07-1992', '', '', '', '', '', 'S', 'S', '', 0, 0, 4523380, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(274, 'PHILIPPE', 'PHILIPPE', 'Benjamin', 'M', '19-07-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4522889, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(275, 'PINOT', 'PINOT', 'Alexandre', 'M', '09-08-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4519843, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(276, 'PIZARRO', 'PIZARRO', 'Medhi', 'M', '24-12-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4522975, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(277, 'POPELIN ', 'POPELIN ', 'Benoit', 'M', '12-11-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4520258, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(278, 'PORTHEAULT', 'PORTHEAULT', 'Maxime', 'M', '30-12-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 4523414, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(279, 'POTEL', 'POTEL', 'Lou-anne', 'F', '17-08-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 4523381, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(280, 'PRAULT', 'PRAULT', 'Gabriel', 'M', '28-01-2006', '', '', '', '', '', 'B', 'B2', '', 0, 0, 4523499, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(281, 'RIBAC', 'RIBAC', 'Clodyo', 'M', '01-11-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4522227, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(282, 'SAGLAM', 'SAGLAM', 'Melhi', 'M', '19-01-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4523203, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(283, 'SAHLI', 'SAHLI', 'Samy', 'M', '24-03-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4523415, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(284, 'SANGARE', 'SANGARE', 'Moise', 'M', '05-02-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4523421, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(285, 'SEVOT', 'SEVOT', 'Maxime', 'M', '18-09-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4521330, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(286, 'SIDIBE', 'SIDIBE', 'Naniboula', 'F', '25-05-1996', '', '', '', '', '', 'S', 'S', '', 0, 1, 4515352, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(287, 'SIDIBE', 'SIDIBE', 'Naniba', 'F', '25-05-1996', '', '', '', '', '', 'S', 'S', '', 0, 1, 4515353, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(288, 'SILVESTRO', 'SILVESTRO', 'Mathia', 'M', '04-11-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4523382, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(289, 'SILVESTRO', 'SILVESTRO', 'Anna', 'F', '25-12-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4523383, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(290, 'SO', 'SO', 'Thibault', 'M', '17-03-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4522230, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(291, 'SOUIDI', 'SOUIDI', 'Kamel', 'M', '07-08-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4522044, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(292, 'SUM TITH', 'SUM TITH', 'Nicolas', 'M', '21-01-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4523606, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(293, 'SYED', 'SYED', 'Lobna', 'F', '10-02-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4523423, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(294, 'THIBAULT-M', 'THIBAULT', 'Mathieu', 'M', '17-11-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4523016, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(295, 'TURKEL', 'TURKEL', 'Yakup', 'M', '18-11-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523311, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(296, 'UZMEZ', 'UZMEZ', 'Enes', 'M', '27-07-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4523319, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(297, 'VAUTIER', 'VAUTIER', 'Aurore', 'F', '03-07-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4523413, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);
INSERT INTO `travaillicencié` (`Numéro`, `Famille`, `Nom_licencié`, `Prénom_licencié`, `Sexe`, `Date_Naissance`, `Tel_mobile`, `Tel_domicile`, `Tel_travail`, `Email_perso`, `Email_travail`, `Catégorie_1`, `Catégorie_2`, `Type_licence`, `Participation_compétition_individuelle`, `Saint_Jean_de_la_Ruelle`, `Numéro_licence`, `Inscription`, `Date_inscription`, `Certificat_médical`, `Nationalité`, `Membre_bureau`, `1ere_licence`, `Autre_club`, `Essai`, `Handicap`, `Commentaire`, `Stage_uniquement`, `Demie_tarif`, `Licence_gratuite`, `Participation_équipe_sénior`, `Autorisation_photo_vidéo`) VALUES
(298, 'VULLEMIN-CHAIGNOT', 'VULLEMIN-CHAIGNOT', 'Leo', 'M', '17-04-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4523607, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(299, 'DIONE', 'DIONE', 'Malik', 'M', '10-12-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 4523946, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(300, 'MASDOUMIER', 'MASDOUMIER', 'Vincent', 'M', '06-06-1990', '', '', '', '', '', 'S', 'S', '', 0, 0, 4523947, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(301, 'LEGRAIS', 'LEGRAIS', 'Bertrand', 'M', '26-04-1980', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(302, 'HEITZMANN', 'HEITZMANN', 'Philippe', 'M', '02-04-1970', '', '', '', '', '', 'V', 'V1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(303, 'MAURY-BOURLET', 'MAURY-BOURLET', 'Romain', 'M', '17-01-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 4523984, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(304, 'HAIROULABADINE', 'HAIROULABADINE', 'Tajudeen', 'M', '13-09-1980', '', '', '', '', '', 'S', 'S', '', 0, 1, 4523978, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(305, 'HAIROULABADINE', 'HAIROULABADINE', 'Lee-lou', 'F', '13-08-2008', '', '', '', '', '', 'P', 'P', '', 0, 1, 4523979, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(306, 'HAIROULABADINE', 'HAIROULABADINE', 'Yuri', 'M', '14-01-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 4523981, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(307, 'HAIROULABADINE', 'POINTEAU', 'Sophie', 'F', '08-11-1980', '', '', '', '', '', 'S', 'S', '', 0, 1, 4523982, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(308, 'LUFLADE-D', 'LUFLADE', 'Dominique', 'F', '21-02-1954', '', '', '', '', '', 'V', 'V3', '', 0, 0, 4524003, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(309, 'LUFLADE-N', 'LUFLADE', 'Nicole', 'F', '21-06-1951', '', '', '', '', '', 'V', 'V3', '', 0, 1, 4524004, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(310, 'MENAGE', 'MENAGE', 'David', 'M', '03-07-1968', '', '', '', '', '', 'V', 'V1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Licencié à Vennecy', 0, 0, 0, 0, 0),
(311, 'MASLE', 'MASLE', 'Nathan', 'M', '30-10-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4523803, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(312, 'MASLE', 'MASLE', 'Mikael', 'M', '16-02-1976', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4523896, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(313, 'LEMONNIER', 'LEMONNIER', 'Jean-yves', 'M', '25-09-1961', '', '', '', '', '', 'V', 'V2', '', 0, 1, 4513125, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(314, 'LACOU', 'LACOU', 'Baptiste', 'M', '28-07-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 4524018, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(315, 'LEBAS', 'LEBAS', 'Corentin', 'M', '25-10-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4520493, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(316, 'LEBAS', 'LEBAS', 'Nathan', 'M', '25-07-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4521398, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(317, 'CHEVALLIER-M', 'CHEVALLIER', 'Mick', 'M', '26-01-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4523417, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(318, 'MARIN', 'MARIN', 'Paul', 'M', '13-07-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4522246, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(319, 'PINEAU', 'PINEAU', 'Gerald', 'M', '03-11-1969', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4510906, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(320, 'TARTIVOT', 'TARTIVOT', 'Gilbert', 'M', '26-10-1963', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4524056, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(321, 'BIZOUARNE', 'BIZOUARNE', 'Nolwenn', 'F', '20-07-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4524057, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(322, 'HURSON', 'HURSON', 'Theo', 'M', '05-02-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524104, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(323, 'LAMBERT', 'LAMBERT', 'Stephane', 'M', '20-08-1968', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4524106, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(324, 'ROUSSEAU', 'ROUSSEAU', 'Aymerick', 'M', '30-09-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 4524105, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(325, 'PICHON', 'PICHON', 'Landry', 'M', '12-08-1977', '', '', '', '', '', 'S', 'S', '', 0, 0, 4524175, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(326, 'VOISIN', 'VOISIN', 'Sacha', 'F', '08-06-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 4524232, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(327, 'REGUIGNE', 'REGUIGNE', 'Eric', 'M', '19-07-1969', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4524233, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(328, 'PRAULT', 'PRAULT', 'Maxime', 'M', '08-05-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4521690, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(329, 'AKAMBANE', 'AKAMBANE', 'Mohamed-amine', 'M', '18-07-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524257, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE Paul Doumer', 0, 0, 0, 0, 0),
(330, 'ANTUNES', 'ANTUNES', 'Eduardo', 'M', '30-12-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4524247, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Mercredi Mairie', 0, 0, 0, 0, 0),
(331, 'BAUDOIN', 'BAUDOIN', 'Yelena', 'F', '16-08-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524253, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE Paul Doumer', 0, 0, 0, 0, 0),
(332, 'BLOT', 'BLOT', 'Timothy', 'M', '04-05-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524248, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Mercredi Mairie', 0, 0, 0, 0, 0),
(333, 'JABBIE', 'JABBIE', 'Souleymane', 'M', '10-07-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524254, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE Paul Doumer', 0, 0, 0, 0, 0),
(334, 'KONTE', 'KONTE', 'Mohamed', 'M', '13-03-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524256, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE Paul Doumer', 0, 0, 0, 0, 0),
(335, 'MANZOOR', 'MANZOOR', 'Bisma', 'F', '19-03-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524259, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE Paul Doumer', 0, 0, 0, 0, 0),
(336, 'MARTIN', 'MARTIN', 'Fanny', 'F', '12-02-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524249, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Mercredi Mairie', 0, 0, 0, 0, 0),
(337, 'RIFFET', 'RIFFET', 'Hugo', 'M', '06-03-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524250, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Mercredi Mairie', 0, 0, 0, 0, 0),
(338, 'RIHOUM', 'RIHOUM', 'Maysan', 'M', '18-12-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524251, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Mercredi Mairie', 0, 0, 0, 0, 0),
(339, 'ROBINET', 'ROBINET', 'Jules', 'M', '13-07-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524252, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Mercredi Mairie', 0, 0, 0, 0, 0),
(340, 'SAVIGNY', 'SAVIGNY', 'Regis', 'M', '08-07-1976', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4518500, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(341, 'SEBASTIAO', 'SEBASTIAO', 'Sabrina', 'F', '22-05-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524255, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE Paul Doumer', 0, 0, 0, 0, 0),
(342, 'SOUIDI', 'SOUIDI', 'Lyavis', 'M', '02-07-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524258, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE Paul Doumer', 0, 0, 0, 0, 0),
(343, 'MOLAND', 'MOLAND', 'Richard', 'M', '28-01-1971', '', '', '', '', '', 'V', 'V1', '', 0, 1, 458606, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(344, 'SEVOT', 'SEVOT', 'Dimitri', 'M', '26-06-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 4524289, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(345, 'TATIGNE', 'TATIGNE', 'Stephane', 'M', '25-07-1967', '', '', '', '', '', 'V', 'V1', '', 0, 0, 416671, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(346, 'AHUELI', 'AHUELI', 'Evans', 'M', '16-09-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4524326, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE PELLETIER', 0, 0, 0, 0, 0),
(347, 'BERCK', 'BERCK', 'Axel', 'M', '19-11-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4524330, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE PELLETIER', 0, 0, 0, 0, 0),
(348, 'BERNARD', 'BERNARD', 'Oriane', 'F', '20-07-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4524322, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE PELLETIER', 0, 0, 0, 0, 0),
(349, 'CHANTELOUP', 'CHANTELOUP', 'Come', 'M', '25-09-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4524331, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE PELLETIER', 0, 0, 0, 0, 0),
(350, 'COURTY', 'COURTY', 'Erwan', 'M', '07-12-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4524329, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE PELLETIER', 0, 0, 0, 0, 0),
(351, 'DENIS', 'DENIS', 'Kilian', 'M', '02-04-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4524325, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE PELLETIER', 0, 0, 0, 0, 0),
(352, 'FARAULT', 'FARAULT', 'Camille', 'M', '23-04-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4524328, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE PELLETIER', 0, 0, 0, 0, 0),
(353, 'HAY', 'HAY', 'Nicolas', 'M', '08-06-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 4524332, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE PELLETIER', 0, 0, 0, 0, 0),
(354, 'LE NOGUES', 'LE NOGUES', 'Justine', 'F', '22-03-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 4524323, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE PELLETIER', 0, 0, 0, 0, 0),
(355, 'MARECHAL', 'MARECHAL', 'Benoit', 'M', '09-04-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 4524327, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE PELLETIER', 0, 0, 0, 0, 0),
(356, 'DOUTRELIGNE', 'DOUTRELIGNE', 'Nadine', 'F', '18-08-1960', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4524356, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(357, 'DOUTRELIGNE', 'DOUTRELIGNE', 'Vincent', 'M', '22-09-1957', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4524357, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(358, 'AUBERT', 'AUBERT', 'Claude', 'M', '11-10-1959', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4510350, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(359, 'AUDIBERT-T', 'AUDIBERT', 'Thalia', 'F', '07-09-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 4523678, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(360, 'BONHOMME-T', 'BONHOMME', 'Thomas', 'M', '13-08-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4522439, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(361, 'BOITARD', 'BOITARD', 'Alexandre', 'M', '12-04-1986', '', '', '', '', '', 'S', 'S', '', 0, 0, 4521190, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'COCAS (Handicap)', 0, 0, 0, 0, 0),
(362, 'BANDOU', 'BANDOU', 'Sophia', 'F', '17-01-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4524448, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(363, 'CLOZIER', 'CLOZIER', 'Justine', 'F', '17-05-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4524449, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(364, 'COULIBALY', 'COULIBALY', 'Oumar', 'M', '08-05-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 4524451, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(365, 'DJABRAILOV', 'DJABRAILOV', 'Rakhman', 'M', '07-09-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 4524447, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(366, 'EKINCI', 'EKINCI', 'Yusuf', 'M', '03-03-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 4524439, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(367, 'EL RHAZ', 'EL RHAZ', 'Wissem', 'M', '20-11-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4524446, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(368, 'HERBET', 'HERBET', 'Julie', 'F', '25-09-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4524444, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(369, 'KEY', 'KEY', 'O\'neal', 'M', '14-02-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4524443, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(370, 'M\'BON', 'M\'BON', 'Jason', 'M', '20-08-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4523604, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(371, 'MELAH', 'MELAH', 'Sihem', 'M', '15-08-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 4524452, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(372, 'MIRA', 'MIRA', 'Gaetan', 'M', '23-09-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 4524445, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(373, 'OMAR ABDA', 'OMAR ABDA', 'Bilel', 'M', '12-02-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4524450, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(374, 'SEVESTRE', 'SEVESTRE', 'Emie', 'F', '22-07-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4524441, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(375, 'SYLLA', 'SYLLA', 'Mohamed', 'M', '20-07-2006', '', '', '', '', '', 'B', 'B2', '', 0, 0, 4524440, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE MERMOZ', 0, 0, 0, 0, 0),
(376, 'PALLOT', 'PALLOT', 'Mael', 'M', '23-05-1991', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(377, 'CHAUMEIX', 'CHAUMEIX', 'Elias', 'M', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'SLTT STAGE', 0, 0, 0, 0, 0),
(378, 'TRUFFAULT', 'TRUFFAULT', 'Anatole', 'M', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'SLTT STAGE', 0, 0, 0, 0, 0),
(379, 'GROS', 'GROS', 'Bastien', 'M', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'SLTT STAGE', 0, 0, 0, 0, 0),
(380, 'DOMINIQUE', 'DOMINIQUE', 'Justine', 'M', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'SLTT STAGE', 0, 0, 0, 0, 0),
(381, 'GREINSCHGL', 'GREINSCHGL', 'Lucie', 'M', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'SLTT STAGE', 0, 0, 0, 0, 0),
(382, 'BAUDOIN', 'BAUDOIN', 'Melvyn', 'M', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'SLTT STAGE', 0, 0, 0, 0, 0),
(383, 'PETIT', 'PETIT', 'Marceau', 'M', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'SLTT STAGE', 0, 0, 0, 0, 0),
(384, 'MERY', 'MERY', 'Victor', 'M', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'SLTT STAGE', 0, 0, 0, 0, 0),
(385, 'DAUVE', 'DAUVE', 'Maylis', 'F', '07-05-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4524486, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(386, 'GOUDAL', 'GOUDAL', 'Arthur', 'M', '02-09-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4521787, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(387, 'HAIDARA', 'HAIDARA', 'Mady', 'M', '03-09-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4524490, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(388, 'VUADENS', 'VUADENS', 'Valentin', 'M', '23-06-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4524505, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(389, 'CHEVALLIER-M', 'MIGUIER', 'Doncan', 'M', '23-10-1998', '', '', '', '', '', 'S', 'S', '', 0, 1, 4524508, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(390, 'BOURJILA', 'BOURJILA', 'Badr', 'M', '30-06-1998', '', '', '', '', '', 'S', 'S', '', 0, 1, 4524506, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(391, 'CADOREL', 'CADOREL', 'Francois', 'M', '20-12-1973', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4517052, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(392, 'MAHOP', 'MAHOP', 'Erwan', 'M', '07-04-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4524517, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(393, 'MAHOP', 'MAHOP', 'Owen', 'M', '26-11-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4524518, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(394, 'THIMOGNIER', 'THIMOGNIER', 'Nathan', 'M', '13-04-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524519, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(395, 'GARRAUD', 'GARRAUD', 'Michel', 'M', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Mairie', 0, 0, 0, 0, 0),
(396, 'SPEICH', 'SPEICH', 'James', 'M', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(397, 'POTHAIN', 'POTHAIN', 'Melanie', 'F', '24-01-1989', '', '', '', '', '', 'S', 'S', '', 0, 0, 4524525, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(398, 'BERNARD-COQUARD', 'BERNARD-COQUARD', 'Elea', 'F', '25-11-1973', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4524536, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(399, 'MASSA', 'MASSA', 'Lisa', 'F', '09-03-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4524534, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(400, 'MASSA', 'MASSA', 'Thomas', 'M', '29-04-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4524535, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(401, 'JEUVREY', 'JEUVREY', 'Benjamin', 'M', '10-06-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4522264, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(402, 'QUETARD-T', 'QUETARD', 'Thierry', 'M', '13-04-1957', '', '', '', '', '', 'V', 'V2', '', 0, 0, 45660, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(403, 'QUETARD-T', 'QUETARD', 'Genevieve', 'F', '15-10-1958', '', '', '', '', '', 'V', 'V2', '', 0, 0, 45661, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(404, 'NOUVELIERE', 'NOUVELIERE', 'Alicia', 'F', '07-02-1995', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(405, 'COLLIN', 'COLLIN', 'Théo', 'M', '09-05-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(406, 'ABRAHAM', 'ABRAHAM', 'Dorian', 'M', '20-02-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(407, 'PIEDNOIR', 'PIEDNOIR', 'Romain', 'M', '23-04-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(408, 'BEAUMONT', 'BEAUMONT', 'Armand', 'M', '15-08-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(409, 'LADRAT', 'LADRAT', 'Mélodye', 'F', '25-01-1996', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(410, 'LADRAT', 'LADRAT', 'Jean-Pierre', 'M', '11-07-1956', '', '', '', '', '', 'V', 'V3', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(411, 'ROCHE', 'ROCHE', 'Théo', 'M', '24-05-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(412, 'LESERRE', 'LESERRE', 'Dominique', 'M', '17-06-1958', '', '', '', '', '', 'V', 'V2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(413, 'THEVOT', 'THEVOT', 'Adrien', 'M', '25-06-1997', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(414, 'MARCHENOIR', 'MARCHENOIR', 'Adrien', 'M', '07-03-1996', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(415, 'PIMENTEL', 'PIMENTEL', 'Matéo', 'M', '24-06-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4524564, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(416, 'CHOQUET', 'CHOQUET', 'Lea', 'F', '03-03-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524569, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(417, 'GASAMAZA', 'GASAMAZA', 'Jean-Bertrand', 'M', '23-01-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524568, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(418, 'CEROY', 'CEROY', 'Yael', 'M', '15-08-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4524567, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(419, 'LEMELIN', 'LEMELIN', 'Théo', 'M', '14-02-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 4524566, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(420, 'M\'BIYA', 'M\'BIYA', 'Mardoché', 'M', '18-04-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524570, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(421, 'SIDIR', 'SIDIR', 'Djibril', 'M', '26-08-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524572, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(422, 'SULIMAN', 'SULIMAN', 'Shénuda', 'M', '23-06-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524571, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(423, 'M\'BAYE', 'M\'BAYE', 'Aliou', 'M', '09-12-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 4524573, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(424, 'SOARES', 'SOARES', 'Layana', 'F', '16-02-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 4524565, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(425, 'SOARES', 'SOARES', 'Esteban', 'M', '16-02-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4518815, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(426, 'AUPART', 'AUPART', 'Erwan', 'M', '13-10-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 4524549, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE', 0, 0, 0, 0, 0),
(427, 'BENIMEUR', 'BENIMEUR', 'Mohamed-amine', 'M', '07-02-2006', '', '', '', '', '', 'B', 'B2', '', 0, 0, 4524541, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE', 0, 0, 0, 0, 0),
(428, 'BETTINGER', 'BETTINGER', 'Bérénice', 'F', '04-01-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4524543, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE', 0, 0, 0, 0, 0),
(429, 'DEMAY', 'DEMAY', 'Léna', 'F', '04-02-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4524539, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(430, 'EL HAMROUNI', 'EL HAMROUNI', 'Qaïs', 'M', '18-07-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 4524542, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE', 0, 0, 0, 0, 0),
(431, 'FAQIR', 'FAQIR', 'Salma', 'F', '08-12-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4524546, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE', 0, 0, 0, 0, 0),
(432, 'GALESKI', 'GALESKI', 'Sacha', 'M', '16-10-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 4524544, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE', 0, 0, 0, 0, 0),
(433, 'JABBIE', 'JABBIE', 'N\'fa-oumar', 'M', '06-06-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 4524545, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE', 0, 0, 0, 0, 0),
(434, 'KAFI', 'KAFI', 'Hischam', 'M', '03-02-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 4524547, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE', 0, 0, 0, 0, 0),
(435, 'LEBON', 'LEBON', 'Noémie', 'F', '26-10-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 4524548, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(436, 'SAALI', 'SAALI', 'Fahd', 'M', '10-07-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524540, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'AE', 0, 0, 0, 0, 0),
(437, 'KHABIR', 'KHABIR', 'Yanis', 'M', '04-06-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 4524575, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(438, 'CORDONNIER', 'CORDONNIER', 'Adele', 'F', '21-09-1997', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(439, 'BENJANINIA', 'BENJANINIA', 'El mustapha', 'M', '02-10-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4524631, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(440, 'CHESIERE', 'CHESIERE', 'Julie', 'M', '22-12-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4524634, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(441, 'CONDE', 'CONDE', 'Telma', 'F', '04-11-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524628, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(442, 'FINOT', 'FINOT', 'Sergio', 'M', '19-06-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4524632, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(443, 'LEMELIN', 'LEMELIN', 'Quentin', 'M', '12-01-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4524627, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(444, 'SCHARTIER', 'SCHARTIER', 'Amélis', 'F', '08-12-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524629, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(445, 'WEIGEL', 'WEIGEL', 'Fiona', 'F', '09-08-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524630, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(446, 'ZARFAOUI', 'ZARFAOUI', 'Najib', 'M', '22-08-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 4524633, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(447, 'VECTEN', 'VECTEN', 'Simon', 'M', '26-10-1994', '', '', '', '', '', 'S', 'S', '', 0, 0, 23450108, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(448, 'ABDELKADER', 'ABDELKADER', 'Abdellah', 'M', '16-03-1998', '', '', '', '', '', 'S', 'S', '', 0, 1, 4524681, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(449, 'BAMBA', 'BAMBA', 'Ana maria', 'F', '26-05-1972', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4524682, 0, '0000-00-00', 0, 'PO', 0, 0, 0, 0, 0, 'Entreprise PPG', 0, 0, 0, 0, 0),
(450, 'BERTHIER', 'BERTHIER', 'Damien', 'M', '02-07-1989', '', '', '', '', '', 'S', 'S', '', 0, 0, 4524683, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Entreprise PPG', 0, 0, 0, 0, 0),
(451, 'BUISSON', 'BUISSON', 'Yannick', 'M', '27-01-1971', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4524684, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Entreprise PPG', 0, 0, 0, 0, 0),
(452, 'CHEVRIER', 'CHEVRIER', 'Jean-philippe', 'M', '12-08-1967', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4524685, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Entreprise PPG', 0, 0, 0, 0, 0),
(453, 'DELAHAYE', 'DELAHAYE', 'Ingrid', 'F', '06-12-1973', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4524686, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Entreprise PPG', 0, 0, 0, 0, 0),
(454, 'GRANIER', 'GRANIER', 'Daniele', 'F', '25-12-1957', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4524687, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Entreprise PPG', 0, 0, 0, 0, 0),
(455, 'MONTIGNY', 'MONTIGNY', 'Sébastien', 'M', '13-03-1978', '', '', '', '', '', 'S', 'S', '', 0, 0, 4524688, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Entreprise PPG', 0, 0, 0, 0, 0),
(456, 'PEREZ', 'PEREZ', 'Julien', 'M', '18-04-1983', '', '', '', '', '', 'S', 'S', '', 0, 0, 4524689, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Entreprise PPG', 0, 0, 0, 0, 0),
(457, 'ROMERO', 'ROMERO', 'Stéphanie', 'F', '08-09-1988', '', '', '', '', '', 'S', 'S', '', 0, 1, 4524690, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Entreprise PPG', 0, 0, 0, 0, 0),
(458, 'MALLET', 'MALLET', 'André', 'M', '21-02-1960', '', '', '', '', '', 'V', 'V2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Entreprise PPG - déjà licencié FFTT autre club', 0, 0, 0, 0, 0),
(459, 'KOKABEY', 'KOKABEY', 'Nisa', 'F', '12-09-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4524693, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'PPP', 0, 0, 0, 0, 0),
(460, 'OLUC', 'OLUC', 'Solmaz', 'F', '01-01-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524694, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'PPP', 0, 0, 0, 0, 0),
(461, 'MORIN', 'MORIN', 'Fanny', 'F', '02-07-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 4524697, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(462, 'PAROU', 'PAROU', 'Thibaud', 'M', '13-05-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(463, 'LEMERET', 'LEMERET', 'Clément', 'M', '08-05-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(464, 'LEMERET', 'LEMERET', 'Camille', 'F', '28-03-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(465, 'LE COSQUER', 'LE COSQUER', 'Grégor', 'M', '22-07-2006', '', '', '', '', '', 'B', 'B2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(466, 'LE COSQUER', 'LE COSQUER', 'Moran', 'F', '09-09-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(467, 'BOUGNOUX-LAINE', 'BOUGNOUX-LAINE', 'Yann', 'M', '12-06-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(468, 'BELLIL', 'BELLIL', 'Morgane', 'F', '23-04-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(469, 'ANDRES', 'ANDRES', 'Clara', 'F', '03-01-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(470, 'DUMOULIN', 'DUMOULIN', 'Catarina', 'F', '22-10-1998', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(471, 'VOISIN', 'VOISIN', 'Lucas', 'M', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(472, 'RUE', 'RUE', 'Alexiane', 'M', '01-01-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(473, 'TCHOGNINOU', 'TCHOGNINOU', 'Alexis', 'M', '15-06-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(474, 'CABOCHE', 'CABOCHE', 'Adrien', 'M', '04-11-1955', '', '', '', '', '', 'V', 'V3', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Joueur de la SMOC pour stage', 0, 0, 0, 0, 0),
(475, 'THIERCELIN', 'THIERCELIN', 'Nathan', 'M', '30-10-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(476, 'FITTOUSI', 'FITTOUSI', 'Théo', 'M', '30-10-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(477, 'HERCENT-A', 'HERCENT-A', 'André', 'M', '23-09-1934', '', '', '', '', '', 'V', 'V4', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(478, 'DESHERBAIS', 'DESHERBAIS', 'Mael', 'M', '19-09-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4522061, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(479, 'LAGUETTE', 'LAGUETTE', 'Valentin', 'M', '24-12-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4516774, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(480, 'LAGUETTE', 'LAGUETTE', 'Muriele', 'F', '18-04-1968', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4521397, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(481, 'LAGUETTE', 'LAGUETTE', 'Verney', 'M', '21-10-1996', '', '', '', '', '', 'S', 'S', '', 0, 1, 4516773, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(482, 'MATHOUCHANH-V', 'MATHOUCHANH', 'Vantuan', 'M', '01-01-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 4524502, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(483, 'MATHOUCHANH-V', 'SOUVANNASACK', 'Khamphanh', 'M', '09-12-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4524501, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(484, 'LARUE', 'LARUE', 'Jules', 'M', '28-07-1996', '', '', '', '', '', 'S', 'S', '', 0, 0, 4520222, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(485, 'LAINE-CAMPINO', 'LAINE-CAMPINO', 'Clement', 'M', '07-03-2006', '', '', '', '', '', 'B', 'B2', '', 0, 0, 6020174, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(486, 'LAINE-CAMPINO', 'LAINE-CAMPINO', 'Louis', 'M', '25-04-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 6019526, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(487, 'REGUIGNE', 'REGUIGNE', 'Alexis', 'M', '16-02-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 4524925, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(488, 'LONGEVILLE', 'LONGEVILLE', 'Paul', 'M', '08-02-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(489, 'GARNIER', 'GARNIER', 'Isabelle', 'F', '20-10-1999', '', '', '', '', '', 'J', 'J3', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(490, 'ZBARASZCZUK', 'ZBARASZCZUK', 'Evan', 'M', '15-04-2009', '', '', '', '', '', 'P', 'P', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(491, 'SIMON', 'SIMON', 'Bernard', 'M', '10-09-1934', '', '', '', '', '', 'V', 'V4', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(492, 'BECHROURI', 'BECHROURI', 'Marwan', 'M', '02-11-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(493, 'DESHERBAIS', 'DESHERBAIS', 'Laurent', 'M', '19-03-1972', '', '', '', '', '', 'V', 'V1', '', 0, 1, 4522058, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(494, 'BOUGNOUX-LAINE', 'BOUGNOUX-LAINE', 'Tom', 'M', '11-05-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(495, 'BRETON', 'BRETON', 'Nathan', 'M', '04-03-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(496, 'LANGUILLE', 'LANGUILLE', 'Vincent', 'M', '31-10-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(497, 'PETIT F', 'PETIT F', 'Franck', 'M', '29-07-1983', '', '', '', '', '', 'S', 'S', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(498, 'EL BANAISSATI', 'EL BANAISSATI', 'Mohamed Ali', 'M', '28-10-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(499, 'EL MOUSSAOUI', 'EL MOUSSAOUI', 'Mohamed', 'M', '13-02-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(500, 'HUN', 'HUN', 'Mickaël', 'M', '31-03-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(501, 'ZAHHAF', 'ZAHHAF', 'Sofiane', 'M', '08-10-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(502, 'SCHREYECK', 'SCHREYECK', 'Laurent', 'M', '18-05-1975', '', '', '', '', '', 'V', 'V1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(503, 'GOUHIER', 'GOUHIER', 'Théo', 'M', '12-10-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(504, 'HAMON', 'HAMON', 'Paul', 'M', '10-08-2007', '', '', '', '', '', 'B', 'B1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(505, 'HAMON', 'HAMON', 'Hugues', 'M', '16-11-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(506, 'PINTO', 'PINTO', 'HANA', 'F', '25-05-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(507, 'DROUET-SIMON', 'DROUET-SIMON', 'JEANNE', 'F', '16-08-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(508, 'LIMOUZY', 'LIMOUZY', 'EMMA', 'F', '15-12-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(509, 'CHECHIN', 'CHECHIN', 'Pierre', 'M', '09-09-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(510, 'LEMAITRE', 'LEMAITRE', 'Eddy', 'M', '14-07-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(511, 'DA SILVA', 'DA SILVA', 'Hugo', 'M', '12-10-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(512, 'EL BANAISSATI-Z', 'EL BANAISSATI', 'Zakarya', 'M', '03-01-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(513, 'EL BANAISSATI-Z', 'EL BANAISSATI', 'Youssef', 'M', '10-03-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(514, 'EL BANAISSATI-Z', 'EL BANAISSATI', 'Anas', 'M', '07-10-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(515, 'DUCANOS', 'DUCANOS', 'Romain', 'M', '26-04-2004', '', '', '', '', '', 'M', 'M2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(516, 'AIME', 'AIME', 'Stéphane', 'M', '13-11-1966', '', '', '', '', '', 'V', 'V2', '', 0, 1, 4522247, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, 'Entreprise PPG', 0, 0, 0, 1, 0),
(517, 'AIME', 'AIME', 'Quentin', 'M', '05-06-2003', '', '', '', '', '', 'C', 'C1', '', 0, 1, 4522239, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(518, 'AIME', 'AIME', 'Maxence', 'M', '26-05-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 4522240, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(519, 'ROBERT', 'ROBERT', 'Alan', 'M', '15-10-1998', '', '', '', '', '', 'S', 'S', '', 0, 0, 4519082, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(520, 'ROBERT', 'ROBERT', 'Elise', 'F', '29-12-1961', '', '', '', '', '', 'V', 'V2', '', 0, 0, 4522994, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(521, 'BARO', 'BARO', 'Samory', 'M', '22-11-2010', '', '', '', '', '', 'P', 'P', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(522, 'DUMOULIN', 'DUMOULIN', 'Laurent', 'M', '23-10-1970', '', '', '', '', '', 'V', 'V1', '', 0, 0, 4518781, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(523, 'LEMAIRE DE MARNE', 'LEMAIRE DE MARNE', 'Gaëtan', 'M', '07-08-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 4521616, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(524, 'ROUX-F', 'ROUX-F', 'Justine', 'F', '19-07-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 563, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(525, 'BROT-SOUCHU', 'BROT-SOUCHU', 'Annabelle', 'F', '27-11-2009', '', '', '', '', '', 'P', 'P', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(526, 'MIQUIGNON', 'MIQUIGNON', 'Louise', 'M', '24-08-1999', '', '', '', '', '', 'J', 'J3', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(527, 'DA FONSECA', 'DA FONSECA', 'Yohann', 'M', '03-03-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(528, 'GRANIER-L', 'GRANIER-L', 'Lucas', 'M', '25-05-2001', '', '', '', '', '', 'J', 'J1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(529, 'THIERCELIN', 'THIERCELIN', 'Katie', 'F', '11-06-2008', '', '', '', '', '', 'P', 'P', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(530, 'DROUIN', 'DROUIN', 'Guillaume', 'M', '24-06-1998', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(531, 'DROUET-SIMON', 'DROUET-SIMON', 'Jeanne', 'F', '16-08-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(532, 'COQUIN', 'COQUIN', 'Mayel', 'M', '15-05-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(533, 'FERROUDJI', 'FERROUDJI', 'Houes', 'M', '19-01-1967', '', '', '', '', '', 'V', 'V1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(534, 'CHANUT', 'CHANUT', 'Christian', 'M', '11-07-1977', '', '', '', '', '', 'S', 'S', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(535, 'LECOINTRE', 'LECOINTRE', 'Adam', 'M', '11-08-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(536, 'ANGUY-- BERTHELOT', 'ANGUY--BERTHELOT', 'Antoine', 'M', '19-03-2000', '', '', '', '', '', 'J', 'J2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(537, 'PEROCHE', 'PEROCHE', 'Paul', 'M', '17-01-1953', '', '', '', '', '', 'V', 'V3', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(538, 'HOURY', 'HOURY', 'Sylvain', 'M', '26-12-1982', '', '', '', '', '', 'S', 'S', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(539, 'WINIZUK', 'WINIZUK', 'Elodie', 'F', '22-01-1983', '', '', '', '', '', 'S', 'S', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(540, 'PORTHAULT', 'PORTHAULT', 'Adrien', 'M', '01-08-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(541, 'MANIKOSKI', 'MANIKOSKI', 'Tom', 'M', '04-08-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(542, 'LIEVRE--PROENCA', 'LIEVRE--PROENCA', 'Adrien', 'M', '20-08-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(543, 'COCHARD', 'COCHARD', 'Alexy', 'M', '24-05-2009', '', '', '', '', '', 'P', 'P', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(544, 'JOIRON', 'JOIRON', 'Hugo', 'M', '01-02-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(545, 'CHICHERY--CONDE', 'CHICHERY--CONDE', 'Arthur', 'M', '23-11-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(546, 'GUERIN', 'GUERIN', 'Killian', 'M', '11-10-2008', '', '', '', '', '', 'P', 'P', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(547, 'GUERIN', 'GUERIN', 'Thomas', 'M', '11-10-2008', '', '', '', '', '', 'P', 'P', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(548, 'SKURKA', 'SKURKA', 'Alexis', 'M', '23-11-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(549, 'BURY', 'BURY', 'Louis', 'M', '19-08-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(550, 'BURY', 'BURY', 'Jules', 'M', '23-11-2006', '', '', '', '', '', 'B', 'B2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(551, 'LEGENDRE', 'LEGENDRE', 'Charles', 'M', '23-07-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(552, 'MARIOLLE', 'MARIOLLE', 'Leslie', 'F', '16-02-1987', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(553, 'SIMON', 'SIMON', 'Bernard', 'M', '10-09-1934', '', '', '', '', '', 'V', 'V4', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 1, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(554, 'LEMEUTHE', 'LEMEUTHE', 'Tom', 'M', '20-07-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(555, 'CONGNET', 'CONGNET', 'Thibau', 'M', '08-04-2006', '', '', '', '', '', 'B', 'B2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(556, 'MONTANT', 'MONTANT', 'Rémy', 'M', '28-05-1997', '', '', '', '', '', 'S', 'S', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(557, 'BOULAHFA', 'BOULAHFA', 'Hyssame', 'M', '24-10-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(558, 'CHEVALLIER', 'CHEVALLIER', 'Yoann', 'M', '07-12-1998', '', '', '', '', '', 'S', 'S', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(559, 'MARQUET', 'MARQUET', 'Philippe', 'M', '01-08-1963', '', '', '', '', '', 'V', 'V2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(560, 'KIEFFER', 'KIEFFER', 'Jérome', 'M', '05-04-1980', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(561, 'BERNARD-COQUARD', 'BERNARD COQUARD', 'Eléa', 'F', '25-11-1973', '', '', '', '', '', 'V', 'V1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(562, 'JEAN', 'JEAN', 'Daphné', 'F', '07-12-2005', '', '', '', '', '', 'M', 'M1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(563, 'CHARRIER', 'CHARRIER', 'EMMANUEL', 'M', '29-06-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(564, 'JOUSSARD', 'JOUSSARD', 'Daniel', 'M', '30-06-1949', '', '', '', '', '', 'V', 'V3', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(565, 'PERON-DEGENNE', 'PERON-DEGENNE', 'Grégoire', 'M', '12-03-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(566, 'LANOIX', 'LANOIX', 'MATHEO', 'M', '13-04-2007', '', '', '', '', '', 'B', 'B1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(567, 'BEYER', 'BEYER', 'Jean-Philippe', 'M', '18-05-1966', '', '', '', '', '', 'V', 'V2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(568, 'MEPLOMB', 'MEPLOMB', 'Romain', 'M', '18-04-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(569, 'PORTHAULT', 'PORTHAULT', 'Christophe', 'M', '27-10-1965', '', '', '', '', '', 'V', 'V2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(570, 'MESSAOUDI', 'MESSAOUDI', 'Mourad', 'M', '06-12-2001', '', '', '', '', '', 'J', 'J1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(571, 'CREICHE', 'CREICHE', 'Florent', 'M', '13-09-1974', '', '', '', '', '', 'V', 'V1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(572, 'GAY', 'GAY', 'Gabin', 'M', '26-07-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(573, 'ESSAI', 'ESSAI', 'ESSAI', 'M', '02-09-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(574, 'MASSONNIERE', 'MASSONNIERE', 'Yael', 'M', '18-07-2008', '', '', '', '', '', 'P', 'P', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(575, 'DELFOUR', 'DELFOUR', 'Lilian', 'M', '05-02-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(576, 'PAREY', 'PAREY', 'Olivier', 'M', '18-06-1959', '', '', '', '', '', 'V', 'V2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(577, 'HUBERT', 'HUBERT', 'Théotime', 'M', '17-10-2008', '', '', '', '', '', 'P', 'P', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(578, 'YIGIT', 'YIGIT', 'Oguzhan', 'M', '17-02-2003', '', '', '', '', '', 'C', 'C1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(579, 'PUERTOLAS', 'PUERTOLAS', 'Martin', 'M', '08-02-1997', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(580, 'SOUIDI', 'SOUDI', 'Zakharia', 'M', '24-12-2005', '', '', '', '', '', 'M', 'M1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(581, 'DE BRITO', 'DE BRITO', 'Enzo', 'M', '18-08-2002', '', '', '', '', '', 'C', 'C2', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(582, 'IMBAULT', 'IMBAULT', 'Frédéric', 'M', '01-05-1976', '', '', '', '', '', 'V', 'V1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0),
(583, 'IMBAULT', 'IMBAULT', 'Lenny', 'M', '04-08-2008', '', '', '', '', '', 'P', 'P', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(584, 'DEGLAS', 'DEGLAS', 'Maëlys', 'F', '24-07-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(585, 'JALOUX', 'JALOUX', 'Olivier', 'M', '19-02-1970', '', '', '', '', '', 'V', 'V1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(586, 'BASTIER', 'BASTIER', 'Etienne', 'M', '16-02-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(587, 'BASTIER', 'BASTIER', 'Simon', 'M', '18-04-2006', '', '', '', '', '', 'B', 'B2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(588, 'MERDRIGNAC', 'MERDRIGNAC', 'Laura', 'F', '07-02-2000', '', '', '', '', '', 'J', 'J2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(589, 'KERMEL', 'KERMEL', 'Mattis', 'M', '05-01-2007', '', '', '', '', '', 'B', 'B1', '', 0, 1, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(590, 'LAGARDE', 'LAGARDE', 'David', 'M', '12-05-1980', '', '', '', '', '', 'S', 'S', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(591, 'KIEFFER', 'KIEFFER', 'Arthur', 'M', '11-09-2007', '', '', '', '', '', 'B', 'B1', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(592, 'KIEFFER', 'KIEFFER', 'Raphaël', 'M', '14-05-2009', '', '', '', '', '', 'P', 'P', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(593, 'MEUNIER', 'MEUNIER', 'Dorian', 'M', '16-10-2002', '', '', '', '', '', 'C', 'C2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);
INSERT INTO `travaillicencié` (`Numéro`, `Famille`, `Nom_licencié`, `Prénom_licencié`, `Sexe`, `Date_Naissance`, `Tel_mobile`, `Tel_domicile`, `Tel_travail`, `Email_perso`, `Email_travail`, `Catégorie_1`, `Catégorie_2`, `Type_licence`, `Participation_compétition_individuelle`, `Saint_Jean_de_la_Ruelle`, `Numéro_licence`, `Inscription`, `Date_inscription`, `Certificat_médical`, `Nationalité`, `Membre_bureau`, `1ere_licence`, `Autre_club`, `Essai`, `Handicap`, `Commentaire`, `Stage_uniquement`, `Demie_tarif`, `Licence_gratuite`, `Participation_équipe_sénior`, `Autorisation_photo_vidéo`) VALUES
(594, 'PERDEREAU-SARAIVA', 'PERDEREAU-SARAIVA', 'Noé', 'M', '25-02-2004', '', '', '', '', '', 'M', 'M2', '', 0, 0, 0, 0, '0000-00-00', 0, 'FR', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `type_paiement`
--

CREATE TABLE `type_paiement` (
  `Libellé_paiement` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_paiement`
--

INSERT INTO `type_paiement` (`Libellé_paiement`) VALUES
('Chèque bancaire'),
('Chèque vancances'),
('CAF'),
('Espèces'),
('Autre paiement'),
('Remise exceptionnelle Club'),
('Coupon Sport'),
('Virement bancaire');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `AdminAccount`
--
ALTER TABLE `AdminAccount`
  ADD PRIMARY KEY (`UserName`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Index pour la table `famille`
--
ALTER TABLE `famille`
  ADD PRIMARY KEY (`Numéro`),
  ADD UNIQUE KEY `Nom_famille` (`Nom_famille`);

--
-- Index pour la table `licencié`
--
ALTER TABLE `licencié`
  ADD PRIMARY KEY (`Numéro`),
  ADD KEY `Famille` (`Famille`);

--
-- Index pour la table `opérations_compte_famille`
--
ALTER TABLE `opérations_compte_famille`
  ADD PRIMARY KEY (`Numéro`),
  ADD KEY `NuméroLicencié` (`NuméroLicencié`);

--
-- Index pour la table `paramètre_age_catégorie`
--
ALTER TABLE `paramètre_age_catégorie`
  ADD PRIMARY KEY (`Numéro`);

--
-- Index pour la table `participants_stage`
--
ALTER TABLE `participants_stage`
  ADD PRIMARY KEY (`Numéro`),
  ADD UNIQUE KEY `Numéro_Stage` (`Numéro_licencie`);

--
-- Index pour la table `participation_stage`
--
ALTER TABLE `participation_stage`
  ADD PRIMARY KEY (`Numéro`),
  ADD KEY `Numéro_participant` (`Numéro_participant`),
  ADD KEY `Numéro_stage` (`Numéro_stage`);

--
-- Index pour la table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Code_Tarif` (`Num_Tarif`);

--
-- Index pour la table `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`Numéro`);

--
-- Index pour la table `tarif_stage`
--
ALTER TABLE `tarif_stage`
  ADD PRIMARY KEY (`Numéro`);

--
-- Index pour la table `travaillicencié`
--
ALTER TABLE `travaillicencié`
  ADD PRIMARY KEY (`Numéro`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `famille`
--
ALTER TABLE `famille`
  MODIFY `Numéro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT pour la table `licencié`
--
ALTER TABLE `licencié`
  MODIFY `Numéro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT pour la table `opérations_compte_famille`
--
ALTER TABLE `opérations_compte_famille`
  MODIFY `Numéro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT pour la table `paramètre_age_catégorie`
--
ALTER TABLE `paramètre_age_catégorie`
  MODIFY `Numéro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `participants_stage`
--
ALTER TABLE `participants_stage`
  MODIFY `Numéro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `participation_stage`
--
ALTER TABLE `participation_stage`
  MODIFY `Numéro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stages`
--
ALTER TABLE `stages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `tarif`
--
ALTER TABLE `tarif`
  MODIFY `Numéro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `tarif_stage`
--
ALTER TABLE `tarif_stage`
  MODIFY `Numéro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `travaillicencié`
--
ALTER TABLE `travaillicencié`
  MODIFY `Numéro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `licencié`
--
ALTER TABLE `licencié`
  ADD CONSTRAINT `licencié_ibfk_1` FOREIGN KEY (`Famille`) REFERENCES `famille` (`Nom_famille`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `opérations_compte_famille`
--
ALTER TABLE `opérations_compte_famille`
  ADD CONSTRAINT `FK_Licencié` FOREIGN KEY (`NuméroLicencié`) REFERENCES `licencié` (`Numéro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `participation_stage`
--
ALTER TABLE `participation_stage`
  ADD CONSTRAINT `participation_stage_ibfk_1` FOREIGN KEY (`Numéro_participant`) REFERENCES `participants_stage` (`Numéro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participation_stage_ibfk_2` FOREIGN KEY (`Numéro_stage`) REFERENCES `stages` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

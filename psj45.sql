-- Ajout d'une colonne BABY_PING pour la nouvelle formule(tarif)

ALTER TABLE `licencié` ADD `BABY_PING` TINYTEXT NULL DEFAULT NULL AFTER `Autorisation_photo_vidéo`;

ALTER TABLE `licencié` ADD `DIVERS` TINYTEXT NULL DEFAULT NULL AFTER `Autorisation_photo_vidéo`;

ALTER TABLE `licencié` ADD `PARTENAIRE` TINYTEXT NULL DEFAULT NULL AFTER `Autorisation_photo_vidéo`;

ALTER TABLE `licencié` ADD `WOMEN` TINYTEXT NULL DEFAULT NULL AFTER `Autorisation_photo_vidéo`;
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema beerinsiderdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `beerinsiderdb` ;

-- -----------------------------------------------------
-- Schema beerinsiderdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `beerinsiderdb` DEFAULT CHARACTER SET utf8 ;
USE `beerinsiderdb` ;

-- -----------------------------------------------------
-- Table `beer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `beer` ;

CREATE TABLE IF NOT EXISTS `beer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `beer_type` VARCHAR(45) NOT NULL,
  `beer_name` VARCHAR(45) NULL,
  `abv` DECIMAL(4,2) NULL,
  `beer_brand` VARCHAR(45) NULL,
  `rating` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS taylor@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'taylor'@'localhost' IDENTIFIED BY 'taylor';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'taylor'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `beer`
-- -----------------------------------------------------
START TRANSACTION;
USE `beerinsiderdb`;
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (1, 'IPA', 'Rebel IPA', 7.50, 'Sam Adams', 2);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (2, 'Lager', 'Coors Light', 4.20, 'Coors', 7);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (3, 'IPA', 'Odell IPA', 7.00, 'Odell', 8);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (4, 'Sour', 'Silent Disco', 7.00, 'Odell', 5);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (5, 'Stout', 'Cherry Charade Stout', 7.50, 'Odell', 6);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (6, 'Ale', 'Arrogant Bastard', 4.70, 'Rogue', 6);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (7, 'Pilsner', 'Slow Pour Pils', 5.20, 'Bierstadt Lagerhaus', 4);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (8, 'Seltzer', 'Margarita', 4.40, 'Truly', 1);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (9, 'Lager', 'Modelo Negra', 5.40, 'Modelo', 7);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (10, 'IPA', 'Lagunitas IPA', 6.20, 'Lagunitas', 0);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (11, 'Lager', 'Boston Lager', 5.00, 'Samuel Adams', 4);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (12, 'Cider', 'Crisp Apple', 5.00, 'Angry Orchard', 5);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (13, 'Stout', 'Dragons Milk', 11.00, 'New Holland', 9);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (14, 'Lager', 'Bud Light', 5.00, 'Budweiser', 5);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (15, 'IPA', 'Voodoo Ranger Imperial', 9.00, 'New Belgium', 8);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (16, 'IPA', 'Voodoo Ranger Juice Force', 9.50, 'New Belgium', 8);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (17, 'Tripel', 'Trippel Belgian Styl', 8.50, 'New Belgium', 4);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (18, 'Ale', 'Dead Guy', 6.80, 'Rogue', 5);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (19, 'Stout', 'Double Chocolate', 9.00, 'Rogue', 5);
INSERT INTO `beer` (`id`, `beer_type`, `beer_name`, `abv`, `beer_brand`, `rating`) VALUES (20, 'Wheat', 'Colorado Sweep', 6.50, 'Lone Tree Brewing', 4);

COMMIT;


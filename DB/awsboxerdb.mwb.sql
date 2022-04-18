-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema boxerdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `boxerdb` ;

-- -----------------------------------------------------
-- Schema boxerdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `boxerdb` DEFAULT CHARACTER SET utf8 ;
USE `boxerdb` ;

-- -----------------------------------------------------
-- Table `boxer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `boxer` ;

CREATE TABLE IF NOT EXISTS `boxer` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `height_inches` INT(11) NOT NULL,
  `weight_class` VARCHAR(500) NOT NULL,
  `nationality` VARCHAR(100) NULL DEFAULT NULL,
  `reach_inches` DOUBLE NOT NULL,
  `knockouts` INT(11) NULL DEFAULT NULL,
  `total_fights` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE = '';
DROP USER IF EXISTS boxeradmin@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'boxeradmin'@'localhost' IDENTIFIED BY 'boxeradmin';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'boxeradmin'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `boxer`
-- -----------------------------------------------------
START TRANSACTION;
USE `boxerdb`;
INSERT INTO `boxer` (`id`, `first_name`, `last_name`, `height_inches`, `weight_class`, `nationality`, `reach_inches`, `knockouts`, `total_fights`) VALUES (1, 'Muhammad', 'Ali', 72, 'Heavyweight', 'American', 72, 34, 62);

COMMIT;


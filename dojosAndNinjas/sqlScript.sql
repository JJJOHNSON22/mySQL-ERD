-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dojosAndNinjas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dojosAndNinjas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dojosAndNinjas` DEFAULT CHARACTER SET utf8 ;
USE `dojosAndNinjas` ;

-- -----------------------------------------------------
-- Table `dojosAndNinjas`.`Dojos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dojosAndNinjas`.`Dojos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `location` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dojosAndNinjas`.`Ninjas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dojosAndNinjas`.`Ninjas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `skill` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `Dojo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Ninjas_Dojos_idx` (`Dojo_id` ASC) VISIBLE,
  CONSTRAINT `fk_Ninjas_Dojos`
    FOREIGN KEY (`Dojo_id`)
    REFERENCES `dojosAndNinjas`.`Dojos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

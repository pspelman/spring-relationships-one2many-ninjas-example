-- MySQL Script generated by MySQL Workbench
-- Tue May 15 07:56:59 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema relationships-o2m
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `relationships-o2m` ;

-- -----------------------------------------------------
-- Schema relationships-o2m
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `relationships-o2m` DEFAULT CHARACTER SET utf8 ;
USE `relationships-o2m` ;

-- -----------------------------------------------------
-- Table `relationships-o2m`.`dojos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `relationships-o2m`.`dojos` ;

CREATE TABLE IF NOT EXISTS `relationships-o2m`.`dojos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `relationships-o2m`.`ninjas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `relationships-o2m`.`ninjas` ;

CREATE TABLE IF NOT EXISTS `relationships-o2m`.`ninjas` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(255) NULL,
  `last_name` VARCHAR(255) NULL,
  `age` INT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `dojos_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ninjas_dojos_idx` (`dojos_id` ASC),
  CONSTRAINT `fk_ninjas_dojos`
    FOREIGN KEY (`dojos_id`)
    REFERENCES `relationships-o2m`.`dojos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = '									';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

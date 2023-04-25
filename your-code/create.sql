-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb3 ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`CARS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`CARS` (
  `idCARS` INT NOT NULL,
  `VIN` INT NULL,
  `manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `model` VARCHAR(45) NULL DEFAULT NULL,
  `year` YEAR NULL DEFAULT NULL,
  `color` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`idCARS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab_mysql`.`CUSTOMERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`CUSTOMERS` (
  `idCUSTOMERS` INT NOT NULL,
  `ID` INT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL,
  `phone number` INT NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `adress` VARCHAR(45) NULL DEFAULT NULL,
  `city` TEXT NULL DEFAULT NULL,
  `state/province` TEXT NULL DEFAULT NULL,
  `country` TEXT NULL DEFAULT NULL,
  `zip/postal code` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idCUSTOMERS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab_mysql`.`SALESPERSONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`SALESPERSONS` (
  `idSALESPERSONS` INT NOT NULL,
  `ID` INT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL,
  `store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idSALESPERSONS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab_mysql`.`INVOICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`INVOICES` (
  `idINVOICES` INT NOT NULL,
  `ID` INT NULL DEFAULT NULL,
  `number` INT NULL DEFAULT NULL,
  `date` DATE NULL DEFAULT NULL,
  `CUSTOMERS_idCUSTOMERS` INT NOT NULL,
  `SALESPERSONS_idSALESPERSONS` INT NOT NULL,
  `CARS_idCARS` INT NOT NULL,
  PRIMARY KEY (`idINVOICES`, `CUSTOMERS_idCUSTOMERS`, `SALESPERSONS_idSALESPERSONS`, `CARS_idCARS`),
  INDEX `fk_INVOICES_CUSTOMERS_idx` (`CUSTOMERS_idCUSTOMERS` ASC) VISIBLE,
  INDEX `fk_INVOICES_SALESPERSONS1_idx` (`SALESPERSONS_idSALESPERSONS` ASC) VISIBLE,
  INDEX `fk_INVOICES_CARS1_idx` (`CARS_idCARS` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICES_CUSTOMERS`
    FOREIGN KEY (`CUSTOMERS_idCUSTOMERS`)
    REFERENCES `lab_mysql`.`CUSTOMERS` (`idCUSTOMERS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_SALESPERSONS1`
    FOREIGN KEY (`SALESPERSONS_idSALESPERSONS`)
    REFERENCES `lab_mysql`.`SALESPERSONS` (`idSALESPERSONS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_CARS1`
    FOREIGN KEY (`CARS_idCARS`)
    REFERENCES `lab_mysql`.`CARS` (`idCARS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

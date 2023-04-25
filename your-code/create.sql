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
  `VIN` VARCHAR(45) NULL DEFAULT NULL,
  `manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `model` VARCHAR(45) NULL DEFAULT NULL,
  `year` VARCHAR(45) NULL DEFAULT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCARS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab_mysql`.`CUSTOMERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`CUSTOMERS` (
  `idCUSTOMERS` INT NOT NULL,
  `ID` VARCHAR(45) NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `phone number` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `adress` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `state/province` VARCHAR(45) NULL DEFAULT NULL,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  `zip/postal code` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCUSTOMERS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab_mysql`.`SALESPERSONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`SALESPERSONS` (
  `idSALESPERSONS` INT NOT NULL,
  `ID` VARCHAR(45) NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idSALESPERSONS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab_mysql`.`INVOICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`INVOICES` (
  `idINVOICES` INT NOT NULL,
  `ID` VARCHAR(45) NULL DEFAULT NULL,
  `number` VARCHAR(45) NULL DEFAULT NULL,
  `date` VARCHAR(45) NULL DEFAULT NULL,
  `CUSTOMERS_idCUSTOMERS` INT NOT NULL,
  `SALESPERSONS_idSALESPERSONS` INT NOT NULL,
  `CARS_idCARS` INT NOT NULL,
  PRIMARY KEY (`idINVOICES`, `CUSTOMERS_idCUSTOMERS`, `SALESPERSONS_idSALESPERSONS`, `CARS_idCARS`),
  INDEX `fk_INVOICES_CUSTOMERS_idx` (`CUSTOMERS_idCUSTOMERS` ASC) VISIBLE,
  INDEX `fk_INVOICES_SALESPERSONS1_idx` (`SALESPERSONS_idSALESPERSONS` ASC) VISIBLE,
  INDEX `fk_INVOICES_CARS1_idx` (`CARS_idCARS` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICES_CARS1`
    FOREIGN KEY (`CARS_idCARS`)
    REFERENCES `lab_mysql`.`CARS` (`idCARS`),
  CONSTRAINT `fk_INVOICES_CUSTOMERS`
    FOREIGN KEY (`CUSTOMERS_idCUSTOMERS`)
    REFERENCES `lab_mysql`.`CUSTOMERS` (`idCUSTOMERS`),
  CONSTRAINT `fk_INVOICES_SALESPERSONS1`
    FOREIGN KEY (`SALESPERSONS_idSALESPERSONS`)
    REFERENCES `lab_mysql`.`SALESPERSONS` (`idSALESPERSONS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

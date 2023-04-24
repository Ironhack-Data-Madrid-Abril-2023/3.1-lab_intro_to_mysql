USE lab_mysql;

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
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8 ;

USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`CARS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`CARS` (
  `idCARS` INT NOT NULL,
  `VIN` INT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` YEAR NULL,
  `color` TEXT NULL,
  PRIMARY KEY (`idCARS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`CUSTOMERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`CUSTOMERS` (
  `idCUSTOMERS` INT NOT NULL,
  `ID` INT NULL,
  `name` TEXT NULL,
  `phone number` INT NULL,
  `email` VARCHAR(45) NULL,
  `adress` VARCHAR(45) NULL,
  `city` TEXT NULL,
  `state/province` TEXT NULL,
  `country` TEXT NULL,
  `zip/postal code` INT NULL,
  PRIMARY KEY (`idCUSTOMERS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`SALESPERSONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`SALESPERSONS` (
  `idSALESPERSONS` INT NOT NULL,
  `ID` INT NULL,
  `name` TEXT NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`idSALESPERSONS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`INVOICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`INVOICES` (
  `idINVOICES` INT NOT NULL,
  `ID` INT NULL,
  `number` INT NULL,
  `date` DATE NULL,
  `car` VARCHAR(45) NULL,
  `customer` TEXT NULL,
  `salesperson` TEXT NULL,
  PRIMARY KEY (`idINVOICES`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`SALES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`SALES` (
  `idSALES` INT NOT NULL,
  `CARS_idCARS` INT NOT NULL,
  `CUSTOMERS_idCUSTOMERS` INT NOT NULL,
  `SALESPERSONS_idSALESPERSONS` INT NOT NULL,
  `INVOICES_idINVOICES` INT NOT NULL,
  `units` INT NOT NULL,
  `price` DECIMAL NULL,
  PRIMARY KEY (`idSALES`, `CARS_idCARS`, `CUSTOMERS_idCUSTOMERS`, `SALESPERSONS_idSALESPERSONS`, `INVOICES_idINVOICES`),
  INDEX `fk_SALES_CARS_idx` (`CARS_idCARS` ASC) VISIBLE,
  INDEX `fk_SALES_CUSTOMERS1_idx` (`CUSTOMERS_idCUSTOMERS` ASC) VISIBLE,
  INDEX `fk_SALES_SALESPERSONS1_idx` (`SALESPERSONS_idSALESPERSONS` ASC) VISIBLE,
  INDEX `fk_SALES_INVOICES1_idx` (`INVOICES_idINVOICES` ASC) VISIBLE,
  CONSTRAINT `fk_SALES_CARS`
    FOREIGN KEY (`CARS_idCARS`)
    REFERENCES `mydb`.`CARS` (`idCARS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SALES_CUSTOMERS1`
    FOREIGN KEY (`CUSTOMERS_idCUSTOMERS`)
    REFERENCES `mydb`.`CUSTOMERS` (`idCUSTOMERS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SALES_SALESPERSONS1`
    FOREIGN KEY (`SALESPERSONS_idSALESPERSONS`)
    REFERENCES `mydb`.`SALESPERSONS` (`idSALESPERSONS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SALES_INVOICES1`
    FOREIGN KEY (`INVOICES_idINVOICES`)
    REFERENCES `mydb`.`INVOICES` (`idINVOICES`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

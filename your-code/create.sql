-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`CARS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CARS` (
  `VIN` VARCHAR(17) NOT NULL,
  `MANUFACTURER` VARCHAR(255) NULL,
  `MODEL` VARCHAR(255) NULL,
  `YEAR` INT NULL,
  `COLOR` VARCHAR(255) NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CUSTOMERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CUSTOMERS` (
  `CustomerID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `ZipCode` VARCHAR(45) NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SALESPERSONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SALESPERSONS` (
  `StaffID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`INVOICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`INVOICES` (
  `InvoiceID` INT NOT NULL,
  `CUSTOMERS` VARCHAR(45) NULL,
  `CARS` INT NULL,
  `SALESPERSONS` VARCHAR(45) NULL,
  `CARS_VIN` VARCHAR(17) NOT NULL,
  `SALESPERSONS_StaffID` INT NOT NULL,
  `CUSTOMERS_CustomerID` INT NOT NULL,
  PRIMARY KEY (`InvoiceID`, `CARS_VIN`, `SALESPERSONS_StaffID`, `CUSTOMERS_CustomerID`),
  INDEX `fk_INVOICES_CARS_idx` (`CARS_VIN` ASC) VISIBLE,
  INDEX `fk_INVOICES_SALESPERSONS1_idx` (`SALESPERSONS_StaffID` ASC) VISIBLE,
  INDEX `fk_INVOICES_CUSTOMERS1_idx` (`CUSTOMERS_CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICES_CARS`
    FOREIGN KEY (`CARS_VIN`)
    REFERENCES `mydb`.`CARS` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_SALESPERSONS1`
    FOREIGN KEY (`SALESPERSONS_StaffID`)
    REFERENCES `mydb`.`SALESPERSONS` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_CUSTOMERS1`
    FOREIGN KEY (`CUSTOMERS_CustomerID`)
    REFERENCES `mydb`.`CUSTOMERS` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

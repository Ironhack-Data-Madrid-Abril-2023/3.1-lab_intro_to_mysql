-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema 3.1-lab_intro_to_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema 3.1-lab_intro_to_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `3.1-lab_intro_to_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `3.1-lab_intro_to_mysql` ;

-- -----------------------------------------------------
-- Table `3.1-lab_intro_to_mysql`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`Customer` (
  `idCustomer` INT NOT NULL,
  `CustomerName` VARCHAR(45) NOT NULL,
  `CustomerPhone` VARCHAR(45) NOT NULL,
  `CustomerEmail` VARCHAR(45) NOT NULL,
  `CustomerAddress` VARCHAR(45) NOT NULL,
  `CustomerCity` VARCHAR(45) NOT NULL,
  `CustomerState` VARCHAR(45) NOT NULL,
  `CustomerCountry` VARCHAR(45) NOT NULL,
  `CustomerPostalCode` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCustomer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `3.1-lab_intro_to_mysql`.`SalesPerson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`SalesPerson` (
  `idSalesPerson` INT NOT NULL,
  `SalesPersonName` VARCHAR(45) NOT NULL,
  `SalesPersonStore` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSalesPerson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `3.1-lab_intro_to_mysql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`Cars` (
  `idCars` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `CarManufacturer` VARCHAR(45) NOT NULL,
  `CarModel` VARCHAR(45) NOT NULL,
  `CarYear` VARCHAR(45) NOT NULL,
  `CarColor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCars`),
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = ascii;


-- -----------------------------------------------------
-- Table `3.1-lab_intro_to_mysql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`Invoices` (
  `idInvoices` INT NOT NULL,
  `SalesPerson_idSalesPerson` INT NOT NULL,
  `Customer_idCustomer` INT NOT NULL,
  `Cars_idCars` INT NOT NULL,
  PRIMARY KEY (`idInvoices`, `SalesPerson_idSalesPerson`),
  INDEX `fk_Invoices_SalesPerson_idx` (`SalesPerson_idSalesPerson` ASC) VISIBLE,
  INDEX `fk_Invoices_Customer1_idx` (`Customer_idCustomer` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_SalesPerson`
    FOREIGN KEY (`SalesPerson_idSalesPerson`)
    REFERENCES `3.1-lab_intro_to_mysql`.`SalesPerson` (`idSalesPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customer1`
    FOREIGN KEY (`Customer_idCustomer`)
    REFERENCES `3.1-lab_intro_to_mysql`.`Customer` (`idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `3.1-lab_intro_to_mysql`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

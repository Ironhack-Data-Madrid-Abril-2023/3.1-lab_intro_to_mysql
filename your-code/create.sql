-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cars` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cars` ;

-- -----------------------------------------------------
-- Table `cars`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Cars` (
  `VIN` CHAR(17) NULL,
  `Manufacture` VARCHAR(255) NULL,
  `Model` VARCHAR(255) NULL,
  `Year` YEAR(4) NULL,
  `Color` VARCHAR(45) NULL,
  `CarsID` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  PRIMARY KEY (`CarsID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Customers` (
  `CustomersID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NULL,
  `Phone` VARCHAR(255) NULL,
  `Email` VARCHAR(255) NULL,
  `Adress` VARCHAR(255) NULL,
  `City` VARCHAR(255) NULL,
  `State` VARCHAR(255) NULL,
  `Country` VARCHAR(255) NULL,
  `CP` INT(5) NULL,
  PRIMARY KEY (`CustomersID`),
  UNIQUE INDEX `CustomersID_UNIQUE` (`CustomersID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Salespersons` (
  `StaffID` INT NOT NULL,
  `Name` VARCHAR(255) NULL,
  `Store` VARCHAR(255) NULL,
  `Customers_CustomersID` INT NULL,
  PRIMARY KEY (`StaffID`, `Customers_CustomersID`),
  INDEX `fk_Salespersons_Customers1_idx` (`Customers_CustomersID` ASC) VISIBLE,
  CONSTRAINT `fk_Salespersons_Customers1`
    FOREIGN KEY (`Customers_CustomersID`)
    REFERENCES `cars`.`Customers` (`CustomersID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Invoices` (
  `InvoiceID` INT NOT NULL AUTO_INCREMENT,
  `Invoice_Number` INT(10) NULL,
  `Date` DATE NULL,
  `Car` VARCHAR(255) NULL,
  `Customer` VARCHAR(255) NULL,
  `Salesperson` VARCHAR(255) NULL,
  `Cars_VIN` CHAR(17) NOT NULL,
  `Customers_CustomersID` INT NOT NULL,
  `Salespersons_StaffID` INT NOT NULL,
  `Salespersons_Customers_CustomersID` INT NOT NULL,
  PRIMARY KEY (`InvoiceID`, `Cars_VIN`, `Customers_CustomersID`, `Salespersons_StaffID`, `Salespersons_Customers_CustomersID`),
  UNIQUE INDEX `InvoiceID_UNIQUE` (`InvoiceID` ASC) VISIBLE,
  UNIQUE INDEX `Invoice_Number_UNIQUE` (`Invoice_Number` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_VIN` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_CustomersID` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_StaffID` ASC, `Salespersons_Customers_CustomersID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `cars`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_CustomersID`)
    REFERENCES `cars`.`Customers` (`CustomersID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_StaffID` , `Salespersons_Customers_CustomersID`)
    REFERENCES `cars`.`Salespersons` (`StaffID` , `Customers_CustomersID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`Cars_has_Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Cars_has_Customers` (
  `Cars_VIN` CHAR(17) NOT NULL,
  `Customers_CustomersID` INT NOT NULL,
  PRIMARY KEY (`Cars_VIN`, `Customers_CustomersID`),
  INDEX `fk_Cars_has_Customers_Customers1_idx` (`Customers_CustomersID` ASC) VISIBLE,
  INDEX `fk_Cars_has_Customers_Cars_idx` (`Cars_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_has_Customers_Cars`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `cars`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_has_Customers_Customers1`
    FOREIGN KEY (`Customers_CustomersID`)
    REFERENCES `cars`.`Customers` (`CustomersID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`Cars_has_Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Cars_has_Salespersons` (
  `Cars_VIN` CHAR(17) NOT NULL,
  `Salespersons_StaffID` INT NOT NULL,
  PRIMARY KEY (`Cars_VIN`, `Salespersons_StaffID`),
  INDEX `fk_Cars_has_Salespersons_Salespersons1_idx` (`Salespersons_StaffID` ASC) VISIBLE,
  INDEX `fk_Cars_has_Salespersons_Cars1_idx` (`Cars_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_has_Salespersons_Cars1`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `cars`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_has_Salespersons_Salespersons1`
    FOREIGN KEY (`Salespersons_StaffID`)
    REFERENCES `cars`.`Salespersons` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

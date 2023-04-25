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
-- Table `3.1-lab_intro_to_mysql`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` YEAR(4) NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `3.1-lab_intro_to_mysql`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`Customer` (
  `ID` INT NOT NULL,
  `CustomerID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `3.1-lab_intro_to_mysql`.`SalesPerson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`SalesPerson` (
  `ID` INT NOT NULL,
  `staffID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `3.1-lab_intro_to_mysql`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`Invoice` (
  `ID` INT NOT NULL,
  `Invoice_Number` INT NOT NULL,
  `Date` DATE NOT NULL,
  `SalesPerson_ID` INT NOT NULL,
  `Customer_ID` INT NOT NULL,
  `cars_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `SalesPerson_ID`, `Customer_ID`, `cars_ID`),
  INDEX `fk_Invoice_SalesPerson_idx` (`SalesPerson_ID` ASC) VISIBLE,
  INDEX `fk_Invoice_Customer1_idx` (`Customer_ID` ASC) VISIBLE,
  INDEX `fk_Invoice_cars1_idx` (`cars_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_SalesPerson`
    FOREIGN KEY (`SalesPerson_ID`)
    REFERENCES `3.1-lab_intro_to_mysql`.`SalesPerson` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Customer1`
    FOREIGN KEY (`Customer_ID`)
    REFERENCES `3.1-lab_intro_to_mysql`.`Customer` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_cars1`
    FOREIGN KEY (`cars_ID`)
    REFERENCES `3.1-lab_intro_to_mysql`.`cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

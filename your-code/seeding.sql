-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema publications
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema vehículos schema
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoice` (
  `DATE` VARCHAR(45) NOT NULL,
  `CUSTOMER` VARCHAR(45) NOT NULL,
  `INVOICE NUMBER` VARCHAR(45) NOT NULL,
  `ID` VARCHAR(45) NOT NULL,
  `CAR` VARCHAR(45) NOT NULL,
  `SALESPERSON` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `CUSTOMER ID` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  `ADDRES` VARCHAR(45) NOT NULL,
  `INVOICE NUMBER` VARCHAR(45) NOT NULL,
  `PHONE` VARCHAR(45) NOT NULL,
  `E-MAIL` VARCHAR(45) NOT NULL,
  `CITY` VARCHAR(45) NOT NULL,
  `PROVINCE` VARCHAR(45) NOT NULL,
  `COUNTRY` VARCHAR(45) NOT NULL,
  `POSTAL` VARCHAR(45) NOT NULL,
  `invoice_ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`invoice_ID`),
  INDEX `fk_customer_invoice1_idx` (`invoice_ID` ASC) VISIBLE,
  CONSTRAINT `fk_customer_invoice1`
    FOREIGN KEY (`invoice_ID`)
    REFERENCES `mydb`.`invoice` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salesperson` (
  `STAFF ID` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  `DEALER` VARCHAR(45) NOT NULL,
  `ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_salesperson_invoice1_idx` (`ID` ASC) VISIBLE,
  CONSTRAINT `fk_salesperson_invoice1`
    FOREIGN KEY (`ID`)
    REFERENCES `mydb`.`invoice` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`vehicle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vehicle` (
  `VIN` INT NOT NULL,
  `PLATE` VARCHAR(45) NOT NULL,
  `MODEL` VARCHAR(45) NOT NULL,
  `YEAR` VARCHAR(45) NOT NULL,
  `COLOUR` VARCHAR(45) NOT NULL,
  `invoice_ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`invoice_ID`),
  INDEX `fk_vehicle_invoice1_idx` (`invoice_ID` ASC) VISIBLE,
  CONSTRAINT `fk_vehicle_invoice1`
    FOREIGN KEY (`invoice_ID`)
    REFERENCES `mydb`.`invoice` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

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
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `vin` VARCHAR(100) NOT NULL,
  `manufacturer` VARCHAR(100) NOT NULL,
  `model` VARCHAR(100) NOT NULL,
  `year` VARCHAR(100) NOT NULL,
  `colour` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`vin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `customerid` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(100) NOT NULL,
  `state` VARCHAR(100) NOT NULL,
  `country` VARCHAR(100) NOT NULL,
  `zipcode` INT NOT NULL,
  PRIMARY KEY (`customerid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salespersons` (
  `staffid` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `store` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`staffid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoiceid` INT NOT NULL,
  `date` DATE NOT NULL,
  `cars_vin` VARCHAR(100) NOT NULL,
  `customers_customerid` INT NOT NULL,
  `salespersons_staffid` INT NOT NULL,
  PRIMARY KEY (`invoiceid`),
  INDEX `fk_invoices_cars_idx` (`cars_vin` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_customerid` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_staffid` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars`
    FOREIGN KEY (`cars_vin`)
    REFERENCES `mydb`.`cars` (`vin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customerid`)
    REFERENCES `mydb`.`customers` (`customerid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_staffid`)
    REFERENCES `mydb`.`salespersons` (`staffid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

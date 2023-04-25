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
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `invoice ID` INT NOT NULL,
  `invoice number` INT NULL,
  `date` DATE NULL,
  `Salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`invoice ID`, `Salespersons_staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `VIN` CHAR(17) NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` YEAR NULL,
  `color` VARCHAR(45) NULL,
  `Invoices_invoice ID` INT NOT NULL,
  PRIMARY KEY (`VIN`, `Invoices_invoice ID`),
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_invoice ID` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_invoice ID`)
    REFERENCES `mydb`.`Invoices` (`invoice ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `customer ID` TINYINT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone number` TINYINT(11) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(60) NULL,
  `city` VARCHAR(45) NULL,
  ` state/province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip/postal_code` VARCHAR(15) NULL,
  `Customerscol` VARCHAR(45) NULL,
  `Invoices_invoice ID` INT NOT NULL,
  `Invoices_Salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`customer ID`, `Invoices_invoice ID`, `Invoices_Salespersons_staff ID`),
  INDEX `fk_Customers_Invoices1_idx` (`Invoices_invoice ID` ASC, `Invoices_Salespersons_staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_Invoices1`
    FOREIGN KEY (`Invoices_invoice ID` , `Invoices_Salespersons_staff ID`)
    REFERENCES `mydb`.`Invoices` (`invoice ID` , `Salespersons_staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `staff ID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  `Salespersonscol` VARCHAR(45) NULL,
  `Invoices_invoice ID` INT NOT NULL,
  `Invoices_Salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`staff ID`, `Invoices_invoice ID`, `Invoices_Salespersons_staff ID`),
  INDEX `fk_Salespersons_Invoices1_idx` (`Invoices_invoice ID` ASC, `Invoices_Salespersons_staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_Salespersons_Invoices1`
    FOREIGN KEY (`Invoices_invoice ID` , `Invoices_Salespersons_staff ID`)
    REFERENCES `mydb`.`Invoices` (`invoice ID` , `Salespersons_staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

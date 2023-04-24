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
  `ID_cars` VARCHAR(45) NOT NULL,
  `VIN` VARCHAR(25) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ID_cars`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `3.1-lab_intro_to_mysql`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`customer` (
  `customer_id` INT NOT NULL,
  `customer_number` VARCHAR(70) NULL,
  `name` VARCHAR(70) NOT NULL,
  `phone_number` VARCHAR(30) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(70) NOT NULL,
  `state/province` VARCHAR(20) NOT NULL,
  `country` VARCHAR(20) NOT NULL,
  `zip/postal code` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `3.1-lab_intro_to_mysql`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`salesperson` (
  `idstaff` VARCHAR(45) NOT NULL,
  `staff ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idstaff`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `3.1-lab_intro_to_mysql`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3.1-lab_intro_to_mysql`.`invoice` (
  `Invoice_ID` INT NOT NULL AUTO_INCREMENT,
  `Invoice_number` VARCHAR(45) NOT NULL,
  `date` DATETIME NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` VARCHAR(100) NOT NULL,
  `salesperson` VARCHAR(70) NOT NULL,
  `cars_ID_cars` VARCHAR(45) NOT NULL,
  `customer_customer_id` INT NOT NULL,
  `salesperson_idstaff` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Invoice_ID`, `cars_ID_cars`, `customer_customer_id`, `salesperson_idstaff`),
  INDEX `fk_invoice_cars_idx` (`cars_ID_cars` ASC) VISIBLE,
  INDEX `fk_invoice_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  INDEX `fk_invoice_salesperson1_idx` (`salesperson_idstaff` ASC) VISIBLE,
  CONSTRAINT `fk_invoice_cars`
    FOREIGN KEY (`cars_ID_cars`)
    REFERENCES `3.1-lab_intro_to_mysql`.`cars` (`ID_cars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `3.1-lab_intro_to_mysql`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_salesperson1`
    FOREIGN KEY (`salesperson_idstaff`)
    REFERENCES `3.1-lab_intro_to_mysql`.`salesperson` (`idstaff`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

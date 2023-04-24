- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema publications
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `coches` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `coches` ;

-- -----------------------------------------------------
-- Table `coches`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`customers` (
  `customer_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone_number` INT NULL,
  `email` VARCHAR(45) NULL,
  `city` VARCHAR(10) NULL,
  `state` VARCHAR(10) NULL,
  `zip` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Invoice` (
  `ID_invoice` INT NOT NULL,
  `Number` VARCHAR(45) NULL,
  `Date` DATE NULL,
  `email` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `zip` INT NULL,
  `customers_customer_id` INT NOT NULL,
  PRIMARY KEY (`ID_invoice`, `customers_customer_id`),
  INDEX `fk_Invoice_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `coches`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Cars` (
  `VIN` INT NOT NULL,
  `Manufactorer` VARCHAR(45) NULL,
  `Year` DATE NULL,
  `Color` VARCHAR(45) NULL,
  `Invoice_ID_invoice` INT NOT NULL,
  PRIMARY KEY (`VIN`, `Invoice_ID_invoice`),
  INDEX `fk_Cars_Invoice1_idx` (`Invoice_ID_invoice` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoice1`
    FOREIGN KEY (`Invoice_ID_invoice`)
    REFERENCES `coches`.`Invoice` (`ID_invoice`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Salesperson` (
  `id_salesperson` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  `Invoice_ID_invoice` INT NOT NULL,
  PRIMARY KEY (`id_salesperson`, `Invoice_ID_invoice`),
  INDEX `fk_Salesperson_Invoice_idx` (`Invoice_ID_invoice` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_Invoice`
    FOREIGN KEY (`Invoice_ID_invoice`)
    REFERENCES `coches`.`Invoice` (`ID_invoice`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
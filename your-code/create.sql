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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `id` VARCHAR(45) NOT NULL,
  `vin` VARCHAR(17) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `phone number` VARCHAR(20) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(50) NOT NULL,
  `state/province` VARCHAR(50) NOT NULL,
  `country` VARCHAR(50) NOT NULL,
  `zip/postal_code` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`salesname`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salesname` (
  `id` INT NOT NULL,
  `staff_id` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `store` VARCHAR(100) NOT NULL,
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_id` INT NOT NULL,
  `invoice_number` VARCHAR(20) NOT NULL,
  `date` DATE NOT NULL,
  `sales_person` INT NOT NULL,
  `car` INT NOT NULL,
  `customer` INT NOT NULL,
  PRIMARY KEY (`invoice_id`),
  INDEX `fk_invoices_salesname_idx` (`sales_person` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`car` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customer` ASC) VISIBLE,
  UNIQUE INDEX `customers_customer_id_UNIQUE` (`customer` ASC) VISIBLE,
  UNIQUE INDEX `cars_car_vin_UNIQUE` (`car` ASC) VISIBLE,
  UNIQUE INDEX `salesname_staff_id_UNIQUE` (`sales_person` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`car`)
    REFERENCES `mydb`.`cars` (`vin`),
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customer`)
    REFERENCES `mydb`.`customers` (`customer_id`),
  CONSTRAINT `fk_invoices_salesname`
    FOREIGN KEY (`sales_person`)
    REFERENCES `mydb`.`salesname` (`staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

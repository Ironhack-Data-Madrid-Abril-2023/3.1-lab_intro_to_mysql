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
  `car_vin` INT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`car_vin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `customer_id` INT NULL,
  `name` VARCHAR(100) NOT NULL,
  `phone number` VARCHAR(20) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(50) NOT NULL,
  `state/province` VARCHAR(50) NOT NULL,
  `country` VARCHAR(50) NOT NULL,
  `zip/postal_code` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`salesname`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salesname` (
  `staff_id` INT NULL,
  `name` VARCHAR(100) NOT NULL,
  `store` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_id` INT NULL,
  `invoice_number` VARCHAR(20) NOT NULL,
  `date` DATE NOT NULL,
  `car` VARCHAR(20) NOT NULL,
  `customer` INT NOT NULL,
  `salesperson` INT NOT NULL,
  `salesname_staff_id` INT NOT NULL,
  `cars_car_vin` INT NOT NULL,
  `customers_customer_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`, `salesname_staff_id`, `cars_car_vin`, `customers_customer_id`),
  INDEX `fk_invoices_salesname_idx` (`salesname_staff_id` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_car_vin` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_salesname`
    FOREIGN KEY (`salesname_staff_id`)
    REFERENCES `mydb`.`salesname` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_car_vin`)
    REFERENCES `mydb`.`cars` (`car_vin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

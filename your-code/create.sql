-- MySQL Workbench Forward Engineering


-- -----------------------------------------------------
-- Schema mydb
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
-- Table `coches`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`cars` (
  `id_cars` INT NOT NULL,
  `vin` CHAR(17) NULL,
  `invoicescol` VARCHAR(45) NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` INT(4) NULL,
  `invoicescol1` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cars`),
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`customers` (
  `idcustomers` INT NOT NULL,
  `customer_id` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `adress` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state/province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `postal` VARCHAR(45) NULL,
  PRIMARY KEY (`idcustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`salesperson` (
  `idsalesperson` INT NOT NULL,
  `staff_id` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  PRIMARY KEY (`idsalesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`invoices` (
  `id` INT NOT NULL,
  `invoice_number` VARCHAR(45) NULL,
  `date` DATE NULL,
  `customers_idcustomers` INT NOT NULL,
  `cars_id_cars` INT NOT NULL,
  `salesperson_idsalesperson` INT NOT NULL,
  PRIMARY KEY (`id`, `customers_idcustomers`, `cars_id_cars`, `salesperson_idsalesperson`),
  INDEX `fk_invoices_customers_idx` (`customers_idcustomers` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_id_cars` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson1_idx` (`salesperson_idsalesperson` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers`
    FOREIGN KEY (`customers_idcustomers`)
    REFERENCES `coches`.`customers` (`idcustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_id_cars`)
    REFERENCES `coches`.`cars` (`id_cars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salesperson1`
    FOREIGN KEY (`salesperson_idsalesperson`)
    REFERENCES `coches`.`salesperson` (`idsalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
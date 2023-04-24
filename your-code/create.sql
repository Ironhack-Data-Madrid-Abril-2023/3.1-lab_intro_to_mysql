-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`cars` (
  `car_id` INT NOT NULL,
  `manufacturer` VARCHAR(50) NULL DEFAULT NULL,
  `model` VARCHAR(100) NULL DEFAULT NULL,
  `years` INT NULL DEFAULT NULL,
  `color` VARCHAR(50) NULL DEFAULT NULL,
  `VIN` VARCHAR(45) NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`costumers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`costumers` (
  `costumer_id` INT NOT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `phone` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(200) NULL DEFAULT NULL,
  `adress` VARCHAR(50) NULL DEFAULT NULL,
  `country` VARCHAR(100) NULL DEFAULT NULL,
  `postal` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`costumer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`salesperson` (
  `idsalesperson` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  `store` VARCHAR(100) NULL,
  PRIMARY KEY (`idsalesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`invoices` (
  `invoices_id` INT NOT NULL,
  `invoice number` VARCHAR(100) NULL,
  `date` DATE NULL,
  `cars_car_id` INT NOT NULL,
  `salesperson_idsalesperson` INT NOT NULL,
  `costumers_costumer_id` INT NOT NULL,
  `salesperson_idsalesperson1` INT NOT NULL,
  PRIMARY KEY (`invoices_id`, `cars_car_id`, `salesperson_idsalesperson`, `costumers_costumer_id`, `salesperson_idsalesperson1`),
  INDEX `fk_invoices_cars_idx` (`cars_car_id` ASC) VISIBLE,
  INDEX `fk_invoices_costumers1_idx` (`costumers_costumer_id` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson1_idx` (`salesperson_idsalesperson1` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars`
    FOREIGN KEY (`cars_car_id`)
    REFERENCES `lab_mysql`.`cars` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_costumers1`
    FOREIGN KEY (`costumers_costumer_id`)
    REFERENCES `lab_mysql`.`costumers` (`costumer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salesperson1`
    FOREIGN KEY (`salesperson_idsalesperson1`)
    REFERENCES `lab_mysql`.`salesperson` (`idsalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

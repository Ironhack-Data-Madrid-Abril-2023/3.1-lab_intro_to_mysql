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
-- Table `lab_mysql`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salespersons` (
  `id_salesperson` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `store_location` VARCHAR(45) NULL,
  PRIMARY KEY (`id_salesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers` (
  `id_customer` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `postal-code` VARCHAR(45) NULL,
  PRIMARY KEY (`id_customer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (
  `id_invoice` INT NOT NULL,
  `invoice_number` VARCHAR(45) NULL,
  `date` VARCHAR(45) NULL,
  `id_car` VARCHAR(45) NULL,
  `customer` VARCHAR(45) NULL,
  `id_salesperson` VARCHAR(45) NULL,
  `Cars_id_car` INT NOT NULL,
  `Salespersons_id_salesperson` INT NOT NULL,
  `Customers_id_customer` INT NOT NULL,
  PRIMARY KEY (`id_invoice`, `Cars_id_car`, `Salespersons_id_salesperson`, `Customers_id_customer`),
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_id_salesperson` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_id_customer` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_id_salesperson`)
    REFERENCES `lab_mysql`.`Salespersons` (`id_salesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_id_customer`)
    REFERENCES `lab_mysql`.`Customers` (`id_customer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO cars (VIN, manufacturer, model, year, color)
VALUES 
			("3K096I98581DHSNUP", "Volkswagen", "Tiguan", "2019", "Blue"),
			("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "2019", "Red"),
			("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White"),
			("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "2018", "Silver"),
			("DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray"),
			("DAM41UDN3CHU2WVF6", "Volvo", "Cross Country", "2019", "Gray");

INSERT into customers (id, id_customer,name,phone,email,address,city,state/province,country,postal_code)
			("0", "10001", "Pablo Picasso", "+34 636 17 63 82", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
			("1", "20001", "Hedy Lamarr", "+43 1 514442250", "Weiglgasse 10	Viena", "Vienna", "Austria", "1150"),
			("2", "30001", "Katherine Johnson", "+1 202 358 0000 300", "E St SW	Washington", "DC Washington", "United States", "20546");

INSERT into salespersons (id, id_salesperson, name, store)
			("0","00001","Petey Cruiser","Madrid"),
			("1","00002","Anna Sthesia", "Barcelona"),
			("2","00003","Paul Molive","Berlin"),
			("3","00004","Gail Forcewind","Paris");
INSERT into invoices (ID, invoice, number, date, car, Customer, Sales, Person)
			("0","852399038","22-08-2018","0","1","3"),
			("1","731166526","31-12-2018","3","0","5"),
			("2","271135104","22-01-2019","2","2","7");

-- -----------------------------------------------------
-- Table `mydb`.`MANUFACTURER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`MANUFACTURER` (
  `car_ID` INT NOT NULL,
  `SALESPERSON` VARCHAR(45) NULL,
  `SalesPerson_Sales_ID` VARCHAR(45) NOT NULL,
  `Cars_ID_VIN` INT NOT NULL,
  PRIMARY KEY (`car_ID`),
  INDEX `fk_MANUFACTURER_SalesPerson1_idx` (`SalesPerson_Sales_ID` ASC) VISIBLE,
  INDEX `fk_MANUFACTURER_Cars1_idx` (`Cars_ID_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_MANUFACTURER_SalesPerson1`
    FOREIGN KEY (`SalesPerson_Sales_ID`)
    REFERENCES `mydb`.`SalesPerson` (`Sales_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_MANUFACTURER_Cars1`
    FOREIGN KEY (`Cars_ID_VIN`)
    REFERENCES `mydb`.`Cars` (`ID_VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

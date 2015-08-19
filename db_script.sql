-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema rrs_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema rrs_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `rrs_db` DEFAULT CHARACTER SET utf8 ;
USE `rrs_db` ;

-- -----------------------------------------------------
-- Table `rrs_db`.`auth_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rrs_db`.`auth_table` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `USERNAME` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `PASSWORD` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`ID`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `rrs_db`.`reservation_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rrs_db`.`reservation_table` (
  `CONFIRMATION_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `CUST_NAME` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `CUST_PHONE` VARCHAR(20) NULL DEFAULT NULL COMMENT '',
  `PARTY_SIZE` INT(11) NULL DEFAULT NULL COMMENT '',
  `RESERVATION_DATE` DATETIME NULL DEFAULT NULL COMMENT '',
  `STATUS` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`CONFIRMATION_ID`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1017
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `rrs_db`.`seating_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rrs_db`.`seating_table` (
  `TABLE_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `TABLE_STATUS` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `CONFIRMATION_ID` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`TABLE_ID`)  COMMENT '',
  INDEX `fk_key_idx` (`CONFIRMATION_ID` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- MySQL Script generated by MySQL Workbench
-- Sat Nov  9 22:04:00 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tank
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tank` ;

-- -----------------------------------------------------
-- Schema tank
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tank` DEFAULT CHARACTER SET utf8 ;
USE `tank` ;

-- -----------------------------------------------------
-- Table `tank`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tank`.`user` (
  `user_id` INT NOT NULL COMMENT '用户ID\n',
  `username` VARCHAR(45) NULL COMMENT '用户名',
  `mobile` CHAR(11) NULL COMMENT '手机号\n',
  `nickname` VARCHAR(45) NULL COMMENT '昵称\n',
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `mobile_UNIQUE` (`mobile` ASC) VISIBLE)
ENGINE = InnoDB
COMMENT = '用户表';


-- -----------------------------------------------------
-- Table `tank`.`resume`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tank`.`resume` (
  `resume_id` INT NOT NULL,
  `intro` VARCHAR(1000) NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`resume_id`),
  INDEX `fk_resume_user_idx` (`user_id` ASC) VISIBLE)
ENGINE = InnoDB
COMMENT = '简历';


-- -----------------------------------------------------
-- Table `tank`.`project_exp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tank`.`project_exp` (
  `project_exp_id` INT NOT NULL,
  `resume_id` INT NOT NULL,
  PRIMARY KEY (`project_exp_id`),
  INDEX `fk_project_exp_resume1_idx` (`resume_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tank`.`work_exp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tank`.`work_exp` (
  `work_exp` INT NOT NULL,
  `resume_resume_id` INT NOT NULL,
  PRIMARY KEY (`work_exp`),
  INDEX `fk_work_exp_resume1_idx` (`resume_resume_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tank`.`edu_exp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tank`.`edu_exp` (
  `edu_exp` INT NOT NULL,
  `resume_resume_id` INT NOT NULL,
  PRIMARY KEY (`edu_exp`),
  INDEX `fk_edu_exp_resume1_idx` (`resume_resume_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tank`.`social_page`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tank`.`social_page` (
  `social_page_id` INT NOT NULL,
  `resume_resume_id` INT NOT NULL,
  PRIMARY KEY (`social_page_id`),
  INDEX `fk_social_page_resume1_idx` (`resume_resume_id` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- MySQL Script generated by MySQL Workbench
-- Wed Oct 11 09:52:46 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema banco_projeto
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema banco_projeto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `banco_projeto` DEFAULT CHARACTER SET utf8 ;
USE `banco_projeto` ;

-- -----------------------------------------------------
-- Table `banco_projeto`.`pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco_projeto`.`pessoa` (
  `id_pessoa` INT NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(120) NOT NULL,
  `telefone` VARCHAR(17) NOT NULL,
  `cpf` VARCHAR(14) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  PRIMARY KEY (`id_pessoa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banco_projeto`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco_projeto`.`endereco` (
  `id_endereco` INT NOT NULL AUTO_INCREMENT,
  `cep` VARCHAR(9) NOT NULL,
  `logadouro` VARCHAR(120) NOT NULL,
  `localidade` VARCHAR(120) NOT NULL,
  `bairro` VARCHAR(80) NOT NULL,
  `uf` VARCHAR(2) NOT NULL,
  `complemento` VARCHAR(80) NULL,
  `pessoa_id_pessoa` INT NOT NULL,
  PRIMARY KEY (`id_endereco`),
  INDEX `fk_endereco_pessoa_idx` (`pessoa_id_pessoa` ASC) ,
  CONSTRAINT `fk_endereco_pessoa`
    FOREIGN KEY (`pessoa_id_pessoa`)
    REFERENCES `banco_projeto`.`pessoa` (`id_pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
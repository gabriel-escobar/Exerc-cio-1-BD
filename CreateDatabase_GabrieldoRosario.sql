DROP DATABASE IFI EXISTS cxcommerce;

CREATE DATABASE IF NOT EXISTS cxcommerce;

use database if not exists cxcommerce

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cxcommerce
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cxcommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cxcommerce` DEFAULT CHARACTER SET utf8 ;
USE `cxcommerce` ;

-- -----------------------------------------------------
-- Table `cxcommerce`.`PRODUTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cxcommerce`.`PRODUTO` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(50) NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cxcommerce`.`CLIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cxcommerce`.`CLIENTE` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `cpf` VARCHAR(11) NOT NULL,
  `nome` VARCHAR(100) NULL,
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cxcommerce`.`PRECO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cxcommerce`.`PRECO` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `valor` DECIMAL(6,2) NOT NULL,
  `PRODUTO_id` INT NOT NULL,
  `CLIENTE_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_PRECO_PRODUTO_idx` (`PRODUTO_id` ASC) VISIBLE,
  INDEX `fk_PRECO_CLIENTE1_idx` (`CLIENTE_id` ASC) VISIBLE,
  CONSTRAINT `fk_PRECO_PRODUTO`
    FOREIGN KEY (`PRODUTO_id`)
    REFERENCES `cxcommerce`.`PRODUTO` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRECO_CLIENTE1`
    FOREIGN KEY (`CLIENTE_id`)
    REFERENCES `cxcommerce`.`CLIENTE` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cxcommerce`.`CARRINHO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cxcommerce`.`CARRINHO` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `datahora` DATETIME NOT NULL,
  `total` DECIMAL(6,2) NOT NULL,
  `cliente_id` INT(11) NOT NULL,
  `CLIENTE_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_CARRINHO_CLIENTE1_idx` (`CLIENTE_id` ASC) VISIBLE,
  CONSTRAINT `fk_CARRINHO_CLIENTE1`
    FOREIGN KEY (`CLIENTE_id`)
    REFERENCES `cxcommerce`.`CLIENTE` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cxcommerce`.`ITEM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cxcommerce`.`ITEM` (
  `id` INT(11) NOT NULL,
  `quantidade` INT(11) NOT NULL,
  `total` DECIMAL(6,2) NOT NULL,
  `PRODUTO_id` INT NOT NULL,
  `PRECO_id` INT NOT NULL,
  `CARRINHO_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ITEM_PRODUTO1_idx` (`PRODUTO_id` ASC) VISIBLE,
  INDEX `fk_ITEM_PRECO1_idx` (`PRECO_id` ASC) VISIBLE,
  INDEX `fk_ITEM_CARRINHO1_idx` (`CARRINHO_id` ASC) VISIBLE,
  CONSTRAINT `fk_ITEM_PRODUTO1`
    FOREIGN KEY (`PRODUTO_id`)
    REFERENCES `cxcommerce`.`PRODUTO` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ITEM_PRECO1`
    FOREIGN KEY (`PRECO_id`)
    REFERENCES `cxcommerce`.`PRECO` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ITEM_CARRINHO1`
    FOREIGN KEY (`CARRINHO_id`)
    REFERENCES `cxcommerce`.`CARRINHO` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cxcommerce`.`ENDERECO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cxcommerce`.`ENDERECO` (
  `id` INT(11) NOT NULL,
  `cep` VARCHAR(8) NOT NULL,
  `logradouro` VARCHAR(100) NOT NULL,
  `numero` VARCHAR(20) NOT NULL,
  `bairro` VARCHAR(100) NOT NULL,
  `cidade` VARCHAR(100) NOT NULL,
  `uf` VARCHAR(2) NOT NULL,
  `CLIENTE_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ENDERECO_CLIENTE1_idx` (`CLIENTE_id` ASC) VISIBLE,
  CONSTRAINT `fk_ENDERECO_CLIENTE1`
    FOREIGN KEY (`CLIENTE_id`)
    REFERENCES `cxcommerce`.`CLIENTE` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

CREATE DATABASE  IF NOT EXISTS `easyride` DEFAULT CHARACTER SET utf8 ;
USE `easyride`;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


CREATE TABLE IF NOT EXISTS `easyride`.`agendamentos` (
  `idAgendamento` int(11) NOT NULL AUTO_INCREMENT,
  `dataAgendamento` varchar(10) NOT NULL,
  `horaAgendamento` time NOT NULL,
  `partidaAgendamento` varchar(45) NOT NULL,
  `destinoAgendamento` varchar(45) NOT NULL,
  `categoriaAgendamento` char(1) NOT NULL,
  `pessoasAgendamento` int(11) NOT NULL,
  `criacaoAgendamento` date NOT NULL,
  `valorAgendamento` double NOT NULL,
  `cpfCliente` varchar(14) NOT NULL,
  PRIMARY KEY (`idAgendamento`),
  KEY `fk_agendamentos_clientes1_idx` (`cpfCliente`),
  CONSTRAINT `fk_agendamentos_clientes1` FOREIGN KEY (`cpfCliente`) REFERENCES `clientes` (`cpfCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION)
  ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `easyride`.`clientes` (
  `cpfCliente` varchar(14) NOT NULL,
  `nomeCliente` varchar(100) NOT NULL,
  `telefoneCliente` varchar(14) NOT NULL,
  `emailCliente` varchar(30) NOT NULL,
  `senhaCliente` varchar(40) NOT NULL,
  PRIMARY KEY (`cpfCliente`))
ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `easyride`.`funcionarios` (
  `cpfFuncionario` varchar(14) NOT NULL,
  `nomeFuncionario` varchar(100) NOT NULL,
  `telefoneFuncionario` varchar(14) NOT NULL,
  `emailFuncionario` varchar(30) NOT NULL,
  `cnhFuncionario` bigint(11) NOT NULL,
  `senhaFuncionario` varchar(40) NOT NULL,
  PRIMARY KEY (`cpfFuncionario`))
ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `easyride`.`pagamentos` (
  `idPagamento` int(11) NOT NULL AUTO_INCREMENT,
  `formaPagamento` varchar(45) NOT NULL,
  `cpfFuncionario` varchar(14) NOT NULL,
  `idAgendamento` int(11) NOT NULL,
  PRIMARY KEY (`idPagamento`),
  KEY `fk_pagamentos_funcionarios1_idx` (`cpfFuncionario`),
  KEY `fk_pagamentos_agendamentos1_idx` (`idAgendamento`),
  CONSTRAINT `fk_pagamentos_agendamentos1` FOREIGN KEY (`idAgendamento`) REFERENCES `agendamentos` (`idAgendamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pagamentos_funcionarios1` FOREIGN KEY (`cpfFuncionario`) REFERENCES `funcionarios` (`cpfFuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION)
ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `easyride`.`veiculos` (
  `placaVeiculo` varchar(8) NOT NULL,
  `fabricanteVeiculo` varchar(45) NOT NULL,
  `modeloVeiculo` varchar(45) NOT NULL,
  `anoVeiculo` year(4) NOT NULL,
  `categoriaVeiculo` varchar(1) NOT NULL,
  `cpfFuncionario` varchar(14) NOT NULL,
  PRIMARY KEY (`placaVeiculo`),
  KEY `fk_veiculos_funcionarios1_idx` (`cpfFuncionario`),
  CONSTRAINT `fk_veiculos_funcionarios1` FOREIGN KEY (`cpfFuncionario`) REFERENCES `funcionarios` (`cpfFuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION)
ENGINE=InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

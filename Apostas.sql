CREATE SCHEMA IF NOT EXISTS `apostas` 
DEFAULT  CHARACTER SET utf8 COLLATE utf8_bin;	
CREATE TABLE IF NOT EXISTS `apostas`.`cliente` (
`Nome` VARCHAR(60) NOT NULL,   
`Email` VARCHAR(60)  NOT NULL,   
`Nasc` DATE NOT NULL,   
`Celular` VARCHAR(11) NOT NULL,   
`CPF`  VARCHAR(11) NOT NULL,   
`Senha`  VARCHAR(11) NOT NULL,   
PRIMARY KEY (`Email`)) 
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `apostas`.`times` (
`ID_time` INT AUTO_INCREMENT NOT NULL,   
`Nome_T` VARCHAR(30) NOT NULL,   
PRIMARY KEY (`ID_time`)) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `apostas`.`aposta` (   
`ID_aposta` INT AUTO_INCREMENT NOT NULL,   
`Email` VARCHAR(60) NOT NULL,   
`Valor` INT NOT NULL,   
`Time1` VARCHAR(30),   
`Time2` VARCHAR(30),
`Placar1` INT NOT NULL,   
`Placar2` INT NOT NULL,   
`Vencedor` VARCHAR(30),   
`1gol` INT NOT NULL,   
`Data` TIME,   
PRIMARY KEY (`ID_aposta`)) 
ENGINE = InnoDB;
DROP TABLE IF EXISTS `trades`;

CREATE TABLE `trades` (
  `idtrades` int NOT NULL AUTO_INCREMENT,
  `idtradestrats` int NOT NULL,
  `entry_outright_idquotes` int DEFAULT NULL,
  `entry_outright_quantity` int DEFAULT NULL,
  `entry_legA_idquotes` int DEFAULT NULL,
  `entry_legA_quantity` int DEFAULT NULL,
  `entry_legB_idquotes` int DEFAULT NULL,
  `entry_legB_quantity` int DEFAULT NULL,
  `entry_legC_idquotes` int DEFAULT NULL,
  `entry_legC_quantity` int DEFAULT NULL,
  `entry_legD_idquotes` int DEFAULT NULL,
  `entry_legD_quantity` int DEFAULT NULL,
  `exit_outright_idquotes` int DEFAULT NULL,
  `exit_outright_quantity` int DEFAULT NULL,  
  `exit_legA_idquotes` int DEFAULT NULL,
  `exit_legA_quantity` int DEFAULT NULL,
  `exit_legB_idquotes` int DEFAULT NULL,
  `exit_legB_quantity` int DEFAULT NULL,
  `exit_legC_idquotes` int DEFAULT NULL,
  `exit_legC_quantity` int DEFAULT NULL,
  `exit_legD_idquotes` int DEFAULT NULL,
  `exit_legD_quantity` int DEFAULT NULL,
  PRIMARY KEY (`idtrades`),
  KEY `idx_entry_outright_idquotes` (`entry_outright_idquotes`),
  KEY `idx_entry_legA_idquotes` (`entry_legA_idquotes`),
  KEY `idx_entry_legB_idquotes` (`entry_legB_idquotes`),
  KEY `idx_entry_legC_idquotes` (`entry_legC_idquotes`),
  KEY `idx_entry_legD_idquotes` (`entry_legD_idquotes`),
  KEY `idx_exit_outright_idquotes` (`exit_outright_idquotes`),
  KEY `idx_exit_legA_idquotes` (`exit_legA_idquotes`),
  KEY `idx_exit_legB_idquotes` (`exit_legB_idquotes`),
  KEY `idx_exit_legC_idquotes` (`exit_legC_idquotes`),
  KEY `idx_exit_legD_idquotes` (`exit_legD_idquotes`),
  KEY `idx_idtradestrats` (`idtradestrats`),
  CONSTRAINT `entry_outright_idquotes` FOREIGN KEY (`entry_outright_idquotes`) REFERENCES `quotes` (`idquotes`),
  CONSTRAINT `entry_legA_idquotes` FOREIGN KEY (`entry_legA_idquotes`) REFERENCES `quotes` (`idquotes`),
  CONSTRAINT `entry_legB_idquotes` FOREIGN KEY (`entry_legB_idquotes`) REFERENCES `quotes` (`idquotes`),
  CONSTRAINT `entry_legC_idquotes` FOREIGN KEY (`entry_legC_idquotes`) REFERENCES `quotes` (`idquotes`),
  CONSTRAINT `entry_legD_idquotes` FOREIGN KEY (`entry_legD_idquotes`) REFERENCES `quotes` (`idquotes`),
  CONSTRAINT `exit_outright_idquotes` FOREIGN KEY (`exit_outright_idquotes`) REFERENCES `quotes` (`idquotes`),
  CONSTRAINT `exit_legA_idquotes` FOREIGN KEY (`exit_legA_idquotes`) REFERENCES `quotes` (`idquotes`),
  CONSTRAINT `exit_legB_idquotes` FOREIGN KEY (`exit_legB_idquotes`) REFERENCES `quotes` (`idquotes`),
  CONSTRAINT `exit_legC_idquotes` FOREIGN KEY (`exit_legC_idquotes`) REFERENCES `quotes` (`idquotes`),
  CONSTRAINT `exit_legD_idquotes` FOREIGN KEY (`exit_legD_idquotes`) REFERENCES `quotes` (`idquotes`),
  CONSTRAINT `idtradestrats` FOREIGN KEY (`idtradestrats`) REFERENCES `tradestrats` (`idtradestrats`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

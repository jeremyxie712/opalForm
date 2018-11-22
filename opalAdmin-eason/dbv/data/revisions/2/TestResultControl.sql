CREATE TABLE `TestResultControl` (
  `TestResultControlSerNum` int(11) NOT NULL AUTO_INCREMENT,
  `Name_EN` varchar(200) NOT NULL,
  `Name_FR` varchar(200) NOT NULL,
  `Description_EN` text NOT NULL,
  `Description_FR` text NOT NULL,
  `Group_EN` varchar(200) NOT NULL,
  `Group_FR` varchar(200) NOT NULL,
  `SourceDatabaseSerNum` int(11) NOT NULL DEFAULT '1',
  `EducationalMaterialControlSerNum` int(11) DEFAULT NULL,
  `PublishFlag` int(11) NOT NULL,
  `DateAdded` datetime NOT NULL,
  `LastPublished` datetime NOT NULL DEFAULT '2002-01-01 00:00:00',
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `LastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `URL_EN` varchar(2000) DEFAULT NULL,
  `URL_FR` varchar(2000) DEFAULT NULL,
  `SessionId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TestResultControlSerNum`),
  KEY `SourceDatabaseSerNum` (`SourceDatabaseSerNum`),
  KEY `LastUpdatedBy` (`LastUpdatedBy`),
  KEY `EducationalMaterialControlSerNum` (`EducationalMaterialControlSerNum`),
  CONSTRAINT `TestResultControl_ibfk_3` FOREIGN KEY (`EducationalMaterialControlSerNum`) REFERENCES `EducationalMaterial` (`EducationalMaterialControlSerNum`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `TestResultControl_ibfk_1` FOREIGN KEY (`SourceDatabaseSerNum`) REFERENCES `SourceDatabase` (`SourceDatabaseSerNum`) ON UPDATE CASCADE,
  CONSTRAINT `TestResultControl_ibfk_2` FOREIGN KEY (`LastUpdatedBy`) REFERENCES `OAUser` (`OAUserSerNum`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1
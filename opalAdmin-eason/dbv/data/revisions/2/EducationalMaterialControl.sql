CREATE TABLE `EducationalMaterialControl` (
  `EducationalMaterialControlSerNum` int(11) NOT NULL AUTO_INCREMENT,
  `EducationalMaterialType_EN` varchar(100) NOT NULL,
  `EducationalMaterialType_FR` varchar(100) NOT NULL,
  `PublishFlag` int(11) NOT NULL DEFAULT '0',
  `Name_EN` varchar(200) NOT NULL,
  `Name_FR` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `URL_EN` varchar(2000) DEFAULT NULL,
  `URL_FR` varchar(2000) DEFAULT NULL,
  `URLType_EN` varchar(100) DEFAULT NULL,
  `URLType_FR` varchar(100) DEFAULT NULL,
  `ShareURL_EN` varchar(2000) DEFAULT NULL,
  `ShareURL_FR` varchar(2000) DEFAULT NULL,
  `PhaseInTreatmentSerNum` int(11) NOT NULL,
  `ParentFlag` int(11) NOT NULL DEFAULT '1',
  `DateAdded` datetime NOT NULL,
  `LastPublished` datetime NOT NULL DEFAULT '2002-01-01 00:00:00',
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `LastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SessionId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EducationalMaterialControlSerNum`),
  KEY `PhaseInTreatmentSerNum` (`PhaseInTreatmentSerNum`),
  KEY `LastUpdatedBy` (`LastUpdatedBy`),
  CONSTRAINT `EducationalMaterialControl_ibfk_2` FOREIGN KEY (`LastUpdatedBy`) REFERENCES `OAUser` (`OAUserSerNum`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `EducationalMaterialControl_ibfk_1` FOREIGN KEY (`PhaseInTreatmentSerNum`) REFERENCES `PhaseInTreatment` (`PhaseInTreatmentSerNum`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1
CREATE TABLE `TestResultMH` (
  `TestResultSerNum` int(11) NOT NULL,
  `TestResultRevSerNum` int(11) NOT NULL AUTO_INCREMENT,
  `CronLogSerNum` int(11) DEFAULT NULL,
  `TestResultGroupSerNum` int(11) NOT NULL,
  `TestResultExpressionSerNum` int(11) NOT NULL,
  `PatientSerNum` int(11) NOT NULL,
  `SourceDatabaseSerNum` int(11) NOT NULL,
  `TestResultAriaSer` varchar(100) NOT NULL,
  `ComponentName` varchar(30) NOT NULL,
  `FacComponentName` varchar(30) NOT NULL,
  `AbnormalFlag` varchar(5) NOT NULL,
  `TestDate` datetime NOT NULL,
  `MaxNorm` float NOT NULL,
  `MinNorm` float NOT NULL,
  `ApprovedFlag` varchar(5) NOT NULL,
  `TestValue` float NOT NULL,
  `TestValueString` varchar(255) NOT NULL,
  `UnitDescription` varchar(40) NOT NULL,
  `ValidEntry` varchar(5) NOT NULL,
  `DateAdded` datetime NOT NULL,
  `ReadStatus` int(11) NOT NULL,
  `ModificationAction` varchar(25) NOT NULL,
  PRIMARY KEY (`TestResultSerNum`,`TestResultRevSerNum`),
  KEY `PatientSerNum` (`PatientSerNum`),
  KEY `TestResultAriaSer` (`TestResultAriaSer`),
  KEY `SourceDatabaseSerNum` (`SourceDatabaseSerNum`),
  KEY `TestResultExpressionSerNum` (`TestResultExpressionSerNum`),
  KEY `CronLogSerNum` (`CronLogSerNum`),
  KEY `TestResultGroupSerNum` (`TestResultGroupSerNum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1
CREATE TABLE `DocumentMH` (
  `DocumentSerNum` int(11) NOT NULL,
  `DocumentRevSerNum` int(11) NOT NULL AUTO_INCREMENT,
  `CronLogSerNum` int(11) DEFAULT NULL,
  `SessionId` varchar(255) DEFAULT NULL,
  `PatientSerNum` int(11) NOT NULL,
  `SourceDatabaseSerNum` int(11) NOT NULL,
  `DocumentId` varchar(100) NOT NULL,
  `AliasExpressionSerNum` int(11) NOT NULL,
  `ApprovedBySerNum` int(11) NOT NULL,
  `ApprovedTimeStamp` datetime NOT NULL,
  `AuthoredBySerNum` int(11) NOT NULL,
  `DateOfService` datetime NOT NULL,
  `Revised` varchar(5) NOT NULL,
  `ValidEntry` varchar(5) NOT NULL,
  `ErrorReasonText` text NOT NULL,
  `OriginalFileName` varchar(500) NOT NULL,
  `FinalFileName` varchar(500) NOT NULL,
  `CreatedBySerNum` int(11) NOT NULL,
  `CreatedTimeStamp` datetime NOT NULL,
  `TransferStatus` varchar(10) NOT NULL,
  `TransferLog` varchar(1000) NOT NULL,
  `DateAdded` datetime NOT NULL,
  `ReadStatus` int(11) NOT NULL,
  `ModificationAction` varchar(25) NOT NULL,
  `LastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`DocumentSerNum`,`DocumentRevSerNum`),
  KEY `SourceDatabaseSerNum` (`SourceDatabaseSerNum`),
  KEY `CronLogSerNum` (`CronLogSerNum`),
  KEY `PatientSerNum` (`PatientSerNum`),
  KEY `AliasExpressionSerNum` (`AliasExpressionSerNum`),
  KEY `ApprovedBySerNum` (`ApprovedBySerNum`),
  KEY `AuthoredBySerNum` (`AuthoredBySerNum`),
  KEY `CreatedBySerNum` (`CreatedBySerNum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1
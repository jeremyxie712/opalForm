CREATE TABLE `AppointmentMH` (
  `AppointmentSerNum` int(11) NOT NULL,
  `AppointmentRevSerNum` int(11) NOT NULL AUTO_INCREMENT,
  `SessionId` text,
  `AliasExpressionSerNum` int(11) NOT NULL,
  `CronLogSerNum` int(11) DEFAULT NULL,
  `PatientSerNum` int(11) NOT NULL,
  `SourceDatabaseSerNum` int(11) NOT NULL,
  `AppointmentAriaSer` int(11) NOT NULL,
  `PrioritySerNum` int(11) NOT NULL,
  `DiagnosisSerNum` int(11) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `State` varchar(25) NOT NULL,
  `ScheduledStartTime` datetime NOT NULL,
  `ScheduledEndTime` datetime NOT NULL,
  `ActualStartDate` datetime NOT NULL,
  `ActualEndDate` datetime NOT NULL,
  `Location` int(10) NOT NULL,
  `RoomLocation_EN` varchar(100) NOT NULL,
  `RoomLocation_FR` varchar(100) NOT NULL,
  `Checkin` tinyint(4) NOT NULL,
  `DateAdded` datetime NOT NULL,
  `ReadStatus` int(11) NOT NULL,
  `ModificationAction` varchar(25) NOT NULL,
  `LastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AppointmentSerNum`,`AppointmentRevSerNum`),
  KEY `AliasExpressionSerNum` (`AliasExpressionSerNum`),
  KEY `PatientSerNum` (`PatientSerNum`),
  KEY `AppointmentAriaSer` (`AppointmentAriaSer`),
  KEY `PrioritySerNum` (`PrioritySerNum`),
  KEY `DiagnosisSerNum` (`DiagnosisSerNum`),
  KEY `SourceDatabaseSerNum` (`SourceDatabaseSerNum`),
  KEY `CronLogSerNum` (`CronLogSerNum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1
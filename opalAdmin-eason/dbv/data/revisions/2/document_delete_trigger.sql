CREATE TRIGGER `document_delete_trigger` AFTER DELETE ON `Document`
 FOR EACH ROW BEGIN
INSERT INTO `DocumentMH`(`DocumentSerNum`, `DocumentRevSerNum`, `SessionId`,`CronLogSerNum`,`PatientSerNum`, `SourceDatabaseSerNum`, `DocumentId`, `AliasExpressionSerNum`, `ApprovedBySerNum`, `ApprovedTimeStamp`, `AuthoredBySerNum`, `DateOfService`, `Revised`, `ValidEntry`, `ErrorReasonText`, `OriginalFileName`, `FinalFileName`, `CreatedBySerNum`, `CreatedTimeStamp`, `TransferStatus`, `TransferLog`, `ReadStatus`, `DateAdded`, `LastUpdated`, `ModificationAction`)
 VALUES (OLD.DocumentSerNum,NULL,OLD.CronLogSerNum,OLD.SessionId,OLD.PatientSerNum,OLD.SourceDatabaseSerNum,OLD.DocumentId,OLD.AliasExpressionSerNum,OLD.ApprovedBySerNum,OLD.ApprovedTimeStamp, OLD.AuthoredBySerNum, OLD.DateOfService, OLD.Revised, OLD.ValidEntry,OLD.ErrorReasonText,OLD.OriginalFileName,OLD.FinalFileName, OLD.CreatedBySerNum, OLD.CreatedTimeStamp, OLD.TransferStatus,OLD.TransferLog, OLD.ReadStatus, OLD.DateAdded, NOW(), 'DELETE');
END
CREATE TRIGGER `test_result_control_update_trigger` AFTER UPDATE ON `TestResultControl`
 FOR EACH ROW BEGIN
if NEW.LastPublished <=> OLD.LastPublished THEN
   INSERT INTO `TestResultControlMH`(`TestResultControlSerNum`, `Name_EN`, `Name_FR`, `Description_EN`, `Description_FR`, `Group_EN`, `Group_FR`, `SourceDatabaseSerNum`, `EducationalMaterialControlSerNum`, `PublishFlag`, `DateAdded`, `LastPublished`, `LastUpdatedBy`, `URL_EN`, `URL_FR`, `SessionId`, `ModificationAction`) VALUES (NEW.TestResultControlSerNum, NEW.Name_EN, NEW.Name_FR, NEW.Description_EN, NEW.Description_FR, NEW.Group_EN, NEW.Group_FR, NEW.SourceDatabaseSerNum, NEW.EducationalMaterialControlSerNum, NEW.PublishFlag, NOW(), NEW.LastPublished, NEW.LastUpdatedBy, NEW.URL_EN, NEW.URL_FR, NEW.SessionId, 'UPDATE');
END IF;
END
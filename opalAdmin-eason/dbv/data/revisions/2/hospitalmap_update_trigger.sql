CREATE TRIGGER `hospitalmap_update_trigger` AFTER UPDATE ON `HospitalMap`
 FOR EACH ROW BEGIN
   INSERT INTO `HospitalMapMH`(`HospitalMapSerNum`, `MapUrl`, `MapURL_EN`, `MapURL_FR`, `FilePath_EN`, `FilePath_FR`, `QRMapAlias`, `QRImageFileName`, `MapName_EN`, `MapDescription_EN`, `MapName_FR`, `MapDescription_FR`, `DateAdded`, `LastUpdatedBy`, `SessionId`, `ModificationAction`) VALUES (NEW.HospitalMapSerNum, NEW.MapUrl, NEW.MapURL_EN, NEW.MapURL_FR, NEW.FilePath_EN, NEW.FilePath_FR, NEW.QRMapAlias, NEW.QRImageFileName, NEW.MapName_EN, NEW.MapDescription_EN, NEW.MapName_FR, NEW.MapDescription_FR, NOW(), NEW.LastUpdatedBy, NEW.SessionId, 'UPDATE');
END
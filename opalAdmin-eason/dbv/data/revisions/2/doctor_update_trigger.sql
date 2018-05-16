CREATE TRIGGER `doctor_update_trigger` AFTER UPDATE ON `Doctor`
 FOR EACH ROW BEGIN
 INSERT INTO DoctorMH (DoctorSerNum, DoctorRevSerNum, ResourceSerNum, SourceDatabaseSerNum, DoctorAriaSer, FirstName, LastName, Role, Workplace, Email, Phone, Address, ProfileImage, LastUpdated, ModificationAction) VALUES (NEW.DoctorSerNum, NULL, NEW.ResourceSerNum, NEW.SourceDatabaseSerNum, NEW.DoctorAriaSer, NEW.FirstName, NEW.LastName, NEW.Role, NEW.Workplace, NEW.Email, NEW.Phone, NEW.Address,NEW.ProfileImage,NOW(), 'UPDATE');
END
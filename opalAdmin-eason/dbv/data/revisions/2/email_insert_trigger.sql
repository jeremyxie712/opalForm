CREATE TRIGGER `email_insert_trigger` AFTER INSERT ON `EmailLog`
 FOR EACH ROW BEGIN
INSERT INTO `EmailLogMH`(`EmailLogSerNum`, `CronLogSerNum`, `PatientSerNum`, `EmailControlSerNum`, `Status`, `DateAdded`, `ModificationAction`) VALUES (NEW.EmailLogSerNum, NEW.CronLogSerNum, NEW.PatientSerNum, NEW.EmailControlSerNum, NEW.Status, NOW(), 'INSERT');
END
CREATE TABLE `doctor` (
	`doctor_id` INT NOT NULL AUTO_INCREMENT,
	`doctor_name` varchar(30) NOT NULL,
	`headquarter_id` INT NOT NULL,
	PRIMARY KEY (`doctor_id`)
);

CREATE TABLE `state` (
	`state_id` INT NOT NULL AUTO_INCREMENT,
	`state_name` varchar(20) NOT NULL,
	PRIMARY KEY (`state_id`)
);

CREATE TABLE `medicine` (
	`medicine_id` INT NOT NULL AUTO_INCREMENT,
	`medicine_name` varchar(30) NOT NULL,
	PRIMARY KEY (`medicine_id`)
);

CREATE TABLE `headquarter` (
	`headquarter_id` INT NOT NULL AUTO_INCREMENT,
	`headquarter_name` varchar(20) NOT NULL,
	`state_id` INT NOT NULL,
	PRIMARY KEY (`headquarter_id`)
);

CREATE TABLE `doctor_medicine` (
	`doctor_medicine_id` INT NOT NULL AUTO_INCREMENT,
	`doctor_id` INT NOT NULL,
	`medicine_id` INT NOT NULL,
	PRIMARY KEY (`doctor_medicine_id`)
);

ALTER TABLE `doctor` ADD CONSTRAINT `doctor_fk0` FOREIGN KEY (`headquarter_id`) REFERENCES `headquarter`(`headquarter_id`);

ALTER TABLE `headquarter` ADD CONSTRAINT `headquarter_fk0` FOREIGN KEY (`state_id`) REFERENCES `state`(`state_id`);

ALTER TABLE `doctor_medicine` ADD CONSTRAINT `doctor_medicine_fk0` FOREIGN KEY (`doctor_id`) REFERENCES `doctor`(`doctor_id`);

ALTER TABLE `doctor_medicine` ADD CONSTRAINT `doctor_medicine_fk1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine`(`medicine_id`);


CREATE TABLE `doctor` (
	`doctor_id` INT NOT NULL AUTO_INCREMENT,
	`doctor_name` varchar(30) NOT NULL,
	`headquarter_id` INT NOT NULL,
	`doctor_speciality` varchar(30),
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

CREATE TABLE `division` (
	`division_id` INT NOT NULL AUTO_INCREMENT,
	`division_name` varchar(30) NOT NULL,
	PRIMARY KEY (`division_id`)
);

CREATE TABLE `division_state` (
	`division_state_id` INT NOT NULL AUTO_INCREMENT,
	`division_id` INT NOT NULL,
	`state_id` INT NOT NULL,
	`headquarter_id` INT NOT NULL,
	PRIMARY KEY (`division_state_id`)
);

CREATE TABLE `user` (
	`user_id` INT NOT NULL AUTO_INCREMENT,
	`role_id` INT NOT NULL,
	`username` varchar(30) NOT NULL,
	`password` varchar(30) NOT NULL,
	`division_id` INT NOT NULL,
	`state_id` INT NOT NULL,
	`headquarter_id` INT NOT NULL,
	`doctor_id` INT NOT NULL,
    `reporting_to` INT,
	PRIMARY KEY (`user_id`)
);

CREATE TABLE `doctor_sale` (
	`doctor_sale_id` INT NOT NULL AUTO_INCREMENT,
	`doctor_id` INT NOT NULL,
	`sponsorship_id` INT NOT NULL,
	`year` varchar(4) NOT NULL,
	`jan_sale` FLOAT ,
	`feb_sale` FLOAT ,
	`mar_sale` FLOAT ,
	`apr_sale` FLOAT ,
	`may_sale` FLOAT ,
	`jun_sale` FLOAT,
	`jul_sale` FLOAT ,
	`aug_sale` FLOAT ,
	`sep_sale` FLOAT ,
	`oct_sale` FLOAT ,
	`nov_sale` FLOAT ,
	`dec_sale` FLOAT ,
	PRIMARY KEY (`doctor_sale_id`)
);

CREATE TABLE `sponsorship` (
	`sponsorship_id` INT NOT NULL AUTO_INCREMENT,
	`sponsorship_nature` varchar(255) NOT NULL,
	PRIMARY KEY (`sponsorship_id`)
);

CREATE TABLE `role` (
	`role_id` INT NOT NULL AUTO_INCREMENT,
	`role_name` varchar(30) NOT NULL,
	PRIMARY KEY (`role_id`)
);

CREATE TABLE `doctor_visit` (
	`doctor_visit_id` INT NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL,
	`doctor_id` INT NOT NULL,
	`year` varchar(4) NOT NULL,
	`month` varchar(10) NOT NULL,
	`day` varchar(30) NOT NULL,
	PRIMARY KEY (`doctor_visit_id`)
);

ALTER TABLE `doctor` ADD CONSTRAINT `doctor_fk0` FOREIGN KEY (`headquarter_id`) REFERENCES `headquarter`(`headquarter_id`);

ALTER TABLE `headquarter` ADD CONSTRAINT `headquarter_fk0` FOREIGN KEY (`state_id`) REFERENCES `state`(`state_id`);

ALTER TABLE `doctor_medicine` ADD CONSTRAINT `doctor_medicine_fk0` FOREIGN KEY (`doctor_id`) REFERENCES `doctor`(`doctor_id`);

ALTER TABLE `doctor_medicine` ADD CONSTRAINT `doctor_medicine_fk1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine`(`medicine_id`);

ALTER TABLE `division_state` ADD CONSTRAINT `division_state_fk0` FOREIGN KEY (`division_id`) REFERENCES `division`(`division_id`);

ALTER TABLE `division_state` ADD CONSTRAINT `division_state_fk1` FOREIGN KEY (`state_id`) REFERENCES `state`(`state_id`);

ALTER TABLE `division_state` ADD CONSTRAINT `division_state_fk2` FOREIGN KEY (`headquarter_id`) REFERENCES `headquarter`(`headquarter_id`);

ALTER TABLE `user` ADD CONSTRAINT `user_fk0` FOREIGN KEY (`role_id`) REFERENCES `role`(`role_id`);

ALTER TABLE `doctor_sale` ADD CONSTRAINT `doctor_sale_fk0` FOREIGN KEY (`doctor_id`) REFERENCES `doctor`(`doctor_id`);

ALTER TABLE `doctor_sale` ADD CONSTRAINT `doctor_sale_fk1` FOREIGN KEY (`sponsorship_id`) REFERENCES `sponsorship`(`sponsorship_id`);

ALTER TABLE `doctor_visit` ADD CONSTRAINT `doctor_visit_fk0` FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`);

ALTER TABLE `doctor_visit` ADD CONSTRAINT `doctor_visit_fk1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor`(`doctor_id`);

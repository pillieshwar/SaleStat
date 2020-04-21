CREATE SCHEMA test;

CREATE TABLE test.division ( 
	division_id          int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	division_name        varchar(30)  NOT NULL    
 );

CREATE TABLE test.doctorbusiness ( 
	doctor_business_id   int  NOT NULL    PRIMARY KEY,
	apr_visit_dates_asm  varchar(45)      ,
	apr_visit_dates_rm   varchar(45)      ,
	apr_doc_business     varchar(45)      ,
	apr_pri_sales        varchar(45)      ,
	apr_sec_sales        varchar(45)      ,
	doctor_details_id    int      
 );

CREATE TABLE test.doctordetails ( 
	id                   int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	doctor_name          varchar(45)      ,
	mr_name              varchar(45)      ,
	mr_hq                varchar(45)      ,
	asm_name             varchar(45)      ,
	region               varchar(45)      ,
	division             varchar(45)      ,
	mode_of_disbursement varchar(45)      ,
	month                varchar(45)      ,
	amount               varchar(45)      ,
	sponsorship          varchar(45)      ,
	`avg_per_month_business_from doctor` varchar(45)      ,
	avg_per_month_business varchar(255)      
 );

CREATE INDEX doctor_details_id ON test.doctordetails ( doctor_name, division, region );

CREATE TABLE test.hibernate_sequence ( 
	next_val             bigint      
 );

CREATE TABLE test.location ( 
	id                   int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	region               varchar(255)      ,
	state                varchar(255)      
 );

CREATE TABLE test.login ( 
	id                   int  NOT NULL    PRIMARY KEY,
	password             varchar(255)      ,
	username             varchar(255)      
 );

CREATE TABLE test.medicine ( 
	medicine_id          int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	medicine_name        varchar(30)  NOT NULL    ,
	medicine_price       float(12,0)      
 );

CREATE TABLE test.person ( 
	id                   int  NOT NULL    PRIMARY KEY,
	dob                  datetime      ,
	name                 varchar(255)      
 );

CREATE TABLE test.role ( 
	role_id              int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	role_name            varchar(30)  NOT NULL    ,
	role_abbr            varchar(30)      
 );

CREATE TABLE test.signup ( 
	user_id              int  NOT NULL    PRIMARY KEY,
	division_id          int  NOT NULL    ,
	doctor_id            int  NOT NULL    ,
	headquarter_id       int  NOT NULL    ,
	password             varchar(255)      ,
	reporting_to         int  NOT NULL    ,
	role_id              int  NOT NULL    ,
	state_id             int  NOT NULL    ,
	username             varchar(255)      
 );

CREATE TABLE test.sponsorship ( 
	sponsorship_id       int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	sponsorship_nature   varchar(255)  NOT NULL    
 );

CREATE TABLE test.state ( 
	state_id             int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	state_name           varchar(20)  NOT NULL    
 );

CREATE TABLE test.`user` ( 
	user_id              int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	role_id              int  NOT NULL    ,
	username             varchar(30)  NOT NULL    ,
	password             varchar(30)  NOT NULL    ,
	division_id          int  NOT NULL    ,
	state_id             int  NOT NULL    ,
	headquarter_id       int  NOT NULL    ,
	doctor_id            int  NOT NULL    ,
	reporting_to         int      
 );

CREATE INDEX user_fk0 ON test.`user` ( role_id );

CREATE TABLE test.headquarter ( 
	headquarter_id       int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	headquarter_name     varchar(20)  NOT NULL    ,
	state_id             int  NOT NULL    
 );

CREATE INDEX headquarter_fk0 ON test.headquarter ( state_id );

CREATE TABLE test.division_state ( 
	division_state_id    int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	division_id          int  NOT NULL    ,
	state_id             int  NOT NULL    ,
	headquarter_id       int  NOT NULL    
 );

CREATE INDEX division_state_fk0 ON test.division_state ( division_id );

CREATE INDEX division_state_fk1 ON test.division_state ( state_id );

CREATE INDEX division_state_fk2 ON test.division_state ( headquarter_id );

CREATE TABLE test.doctor ( 
	doctor_id            int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	doctor_name          varchar(30)  NOT NULL    ,
	doctor_speciality    varchar(30)      ,
	division_state_id    int  NOT NULL    ,
	doctor_qualification varchar(30)      ,
	doctor_ph            varchar(10)      ,
	doctor_address       varchar(255)      
 );

CREATE INDEX doctor_fk0 ON test.doctor ( division_state_id );

CREATE TABLE test.doctor_medicine ( 
	doctor_medicine_id   int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	doctor_id            int  NOT NULL    ,
	medicine_id          int  NOT NULL    
 );

CREATE INDEX doctor_medicine_fk0 ON test.doctor_medicine ( doctor_id );

CREATE INDEX doctor_medicine_fk1 ON test.doctor_medicine ( medicine_id );

CREATE TABLE test.doctor_sale ( 
	doctor_sale_id       int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	doctor_medicine_id   int  NOT NULL    ,
	sponsorship_id       int  NOT NULL    ,
	year                 varchar(4)  NOT NULL    ,
	jan_sale             float(12,0)      ,
	feb_sale             float(12,0)      ,
	mar_sale             float(12,0)      ,
	apr_sale             float(12,0)      ,
	may_sale             float(12,0)      ,
	jun_sale             float(12,0)      ,
	jul_sale             float(12,0)      ,
	aug_sale             float(12,0)      ,
	sep_sale             float(12,0)      ,
	oct_sale             float(12,0)      ,
	nov_sale             float(12,0)      ,
	dec_sale             float(12,0)      
 );

CREATE INDEX doctor_sale_fk0 ON test.doctor_sale ( doctor_medicine_id );

CREATE INDEX doctor_sale_fk1 ON test.doctor_sale ( sponsorship_id );

CREATE TABLE test.doctor_visit ( 
	doctor_visit_id      int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	user_id              int  NOT NULL    ,
	doctor_id            int  NOT NULL    ,
	year                 varchar(4)  NOT NULL    ,
	month                varchar(10)  NOT NULL    ,
	day                  varchar(30)  NOT NULL    
 );

CREATE INDEX doctor_visit_fk0 ON test.doctor_visit ( user_id );

CREATE INDEX doctor_visit_fk1 ON test.doctor_visit ( doctor_id );

CREATE TABLE test.user_doctor ( 
	user_doctor_id       int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	user_id              int  NOT NULL    ,
	doctor_id            int  NOT NULL    
 );

CREATE INDEX user_doctor_fk0 ON test.user_doctor ( user_id );

CREATE INDEX user_doctor_fk1 ON test.user_doctor ( doctor_id );

ALTER TABLE test.division_state ADD CONSTRAINT division_state_fk0 FOREIGN KEY ( division_id ) REFERENCES test.division( division_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.division_state ADD CONSTRAINT division_state_fk2 FOREIGN KEY ( headquarter_id ) REFERENCES test.headquarter( headquarter_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.division_state ADD CONSTRAINT division_state_fk1 FOREIGN KEY ( state_id ) REFERENCES test.state( state_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.doctor ADD CONSTRAINT doctor_fk0 FOREIGN KEY ( division_state_id ) REFERENCES test.division_state( division_state_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.doctor_medicine ADD CONSTRAINT doctor_medicine_fk0 FOREIGN KEY ( doctor_id ) REFERENCES test.doctor( doctor_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.doctor_medicine ADD CONSTRAINT doctor_medicine_fk1 FOREIGN KEY ( medicine_id ) REFERENCES test.medicine( medicine_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.doctor_sale ADD CONSTRAINT doctor_sale_fk1 FOREIGN KEY ( sponsorship_id ) REFERENCES test.sponsorship( sponsorship_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.doctor_sale ADD CONSTRAINT doctor_sale_fk0 FOREIGN KEY ( doctor_medicine_id ) REFERENCES test.doctor_medicine( doctor_medicine_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.doctor_visit ADD CONSTRAINT doctor_visit_fk1 FOREIGN KEY ( doctor_id ) REFERENCES test.doctor( doctor_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.doctor_visit ADD CONSTRAINT doctor_visit_fk0 FOREIGN KEY ( user_id ) REFERENCES test.`user`( user_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.headquarter ADD CONSTRAINT headquarter_fk0 FOREIGN KEY ( state_id ) REFERENCES test.state( state_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.`user` ADD CONSTRAINT user_fk0 FOREIGN KEY ( role_id ) REFERENCES test.role( role_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.user_doctor ADD CONSTRAINT user_doctor_fk1 FOREIGN KEY ( doctor_id ) REFERENCES test.doctor( doctor_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE test.user_doctor ADD CONSTRAINT user_doctor_fk0 FOREIGN KEY ( user_id ) REFERENCES test.`user`( user_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;


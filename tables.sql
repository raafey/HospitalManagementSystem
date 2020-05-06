/* TABLES */

CREATE TABLE treatment
(
	treatmentID NUMBER NOT NULL,
	description VARCHAR(30) NOT NULL,
	CONSTRAINT pk_treatment PRIMARY KEY (treatmentID)
);

CREATE TABLE doctor_positions
(
	positionID NUMBER NOT NULL,
	positionName VARCHAR(20) NOT NULL,
	CONSTRAINT pk_doc_pos PRIMARY KEY (positionID)
);

CREATE TABLE speciality
(
	specialityID NUMBER NOT NULL,
	specialityName VARCHAR(36) NOT NULL,
	CONSTRAINT pk_spec PRIMARY KEY (specialityID)
);

CREATE TABLE doctor
(
	staffID NUMBER NOT NULL,
	doctorName VARCHAR(25) NOT NULL,
	specialityID NUMBER,
	positionID NUMBER NOT NULL,
	CONSTRAINT pk_doc PRIMARY KEY (staffID),
	CONSTRAINT fk_doc_b FOREIGN KEY (positionID) REFERENCES Doctor_Positions(positionID),
	CONSTRAINT fk_doc_c FOREIGN KEY (specialityID) REFERENCES Speciality(specialityID)
);

CREATE TABLE consultant_team
(
	teamID NUMBER NOT NULL,
	staffID NUMBER NOT NULL,
	consultantID NUMBER NOT NULL,
	dateJoined DATE NOT NULL,
	CONSTRAINT pk_conteam PRIMARY KEY (teamID),
	CONSTRAINT fk_conteam_a FOREIGN KEY (consultantID) REFERENCES Doctor(staffID),
	CONSTRAINT fk_conteam_b FOREIGN KEY (staffID) REFERENCES Doctor(staffID)
);

CREATE TABLE doctor_experience
(
	expID NUMBER NOT NULL,
	startDate DATE NOT NULL,	
	endDate DATE NOT NULL,
	establishment VARCHAR(15) NOT NULL,
	position VARCHAR(20) NOT NULL,
	staffID NUMBER NOT NULL,
	CONSTRAINT pk_exp_a PRIMARY KEY (expID, staffID),
	CONSTRAINT fk_exp_b FOREIGN KEY (staffID) REFERENCES Doctor(staffID)
);

CREATE TABLE doctor_performance
(
	perfID NUMBER NOT NULL,
	dateOfgrade DATE NOT NULL,
	grade CHAR(2) NOT NULL,
	staffID NUMBER NOT NULL,	
	CONSTRAINT pk_docperf_c PRIMARY KEY (perfID, staffID),
	CONSTRAINT fk_docperf_d FOREIGN KEY (staffID) REFERENCES Doctor(staffID)
);

CREATE TABLE patient
(
	patientID NUMBER NOT NULL,
	dateOfBirth DATE NOT NULL,	
	patientName VARCHAR(25) NOT NULL,
	gender VARCHAR(6) NOT NULL,
	doctorID NUMBER NOT NULL,
	CONSTRAINT pk_patient PRIMARY KEY (patientID),
	CONSTRAINT fk_patient FOREIGN KEY (doctorID) REFERENCES Doctor(staffID)
);	

CREATE TABLE complaint
(
	complaintID NUMBER NOT NULL,
	description VARCHAR(20) NOT NULL,
	patientID NUMBER NOT NULL,
	CONSTRAINT pk_complaint PRIMARY KEY (complaintID),
	CONSTRAINT fk_complaint FOREIGN KEY (patientID) REFERENCES Patient(patientID)
);

CREATE TABLE complaint_treatment
(
	ctID NUMBER NOT NULL,
	treatmentStartDate DATE NOT NULL,
	treatmentEndDate DATE NOT NULL,
	complaintID NUMBER NOT NULL,
	treatmentID NUMBER NOT NULL,
	staffID NUMBER NOT NULL,
	CONSTRAINT pk_cmp_tr_a PRIMARY KEY (ctID, complaintID, treatmentID, staffID),
	CONSTRAINT fk_cmp_tr_f FOREIGN KEY (complaintID) REFERENCES Complaint(complaintID),
	CONSTRAINT fk_cmp_tr_e FOREIGN KEY (treatmentID) REFERENCES Treatment(treatmentID),
	CONSTRAINT fk_cmp_tr_d FOREIGN KEY (staffID) REFERENCES Doctor(staffID)
);

CREATE TABLE ward
(
	wardID NUMBER NOT NULL,
	wardName VARCHAR(10) NOT NULL,
	specialityID NUMBER, 
  	CONSTRAINT pk_ward_g PRIMARY KEY (wardID),
	CONSTRAINT fk_wrd_d FOREIGN KEY (specialityID) REFERENCES Speciality(specialityID)
);

CREATE TABLE care_unit
(
	careunitID NUMBER NOT NULL,
	careUnitName VARCHAR(12) NOT NULL,
	wardID NUMBER NOT NULL,
	CONSTRAINT pk_careunit PRIMARY KEY (careunitID),
	CONSTRAINT fk_careunit FOREIGN KEY (wardID) REFERENCES Ward(wardID)
);

CREATE TABLE nurse
(
	nurseID NUMBER NOT NULL,
	nurseName VARCHAR(25) NOT NULL,
	isRegistered VARCHAR(12) NOT NULL,
	careunitID NUMBER NOT NULL,
	CONSTRAINT pk_nurse_a PRIMARY KEY (nurseID),
	CONSTRAINT fk_nurse_b FOREIGN KEY (careunitID) REFERENCES Care_Unit(careunitID)
);

CREATE TABLE ward_shift
(
	wardID NUMBER NOT NULL,
	nightSisterID NUMBER NOT NULL,
	daySisterID NUMBER NOT NULL,
	CONSTRAINT pk_ws PRIMARY KEY (wardID, nightSisterID, daySisterID),
  	CONSTRAINT fk_ws_e FOREIGN KEY (nightSisterID) REFERENCES Nurse(nurseID),
  	CONSTRAINT fk_ws_f FOREIGN KEY (daySisterID) REFERENCES Nurse(nurseID),
	CONSTRAINT fk_ws_h FOREIGN KEY (wardID) REFERENCES Ward(wardID)
);

CREATE TABLE unit_incharge
(
	careunitID NUMBER NOT NULL,
	nurseID NUMBER NOT NULL,
	CONSTRAINT pk_ui PRIMARY KEY (careunitID, nurseID),
  	CONSTRAINT fk_ui_a FOREIGN KEY (nurseID) REFERENCES Nurse(nurseID),
	CONSTRAINT fk_ui_b FOREIGN KEY (careunitID) REFERENCES Care_Unit(careunitID)
);

CREATE TABLE patient_admission
(
	admissionID NUMBER NOT NULL,
	BedID NUMBER NOT NULL,
	admissionDate DATE NOT NULL,
	dischargeDate DATE NOT NULL,
	patientID NUMBER NOT NULL,
	careunitID NUMBER NOT NULL,
	CONSTRAINT pk_patAd_a PRIMARY KEY (admissionID, BedID, patientID, careunitID),
	CONSTRAINT fk_patAd_c FOREIGN KEY (patientID) REFERENCES Patient(patientID),
	CONSTRAINT fk_patAd_d FOREIGN KEY (careunitID) REFERENCES Care_Unit(careunitID)
);
/* speciality table */

INSERT INTO speciality
VALUES (1, 'General Surgery');
INSERT INTO speciality
VALUES (2, 'Cardiothoracic Surgery');
INSERT INTO speciality
VALUES (3, 'Vascular Surgery');
INSERT INTO speciality
VALUES (4, 'Cosmetic and Reconstructive Surgery');
INSERT INTO speciality
VALUES (5, 'Colorectal Surgery');
INSERT INTO speciality
VALUES (6, 'Surgical Oncology');
INSERT INTO speciality
VALUES (7, 'Transplant Surgery');
INSERT INTO speciality
VALUES (8, 'Trauma Surgery');
INSERT INTO speciality
VALUES (9, 'Surgical Endocrinology');
INSERT INTO speciality
VALUES (10, 'Orthopedic Surgery');
INSERT INTO speciality
VALUES (11, 'Neurosurgery');
INSERT INTO speciality
VALUES (12, 'Urology');
INSERT INTO speciality
VALUES (13, 'ENT');
INSERT INTO speciality
VALUES (14, 'Ophthalmology');
INSERT INTO speciality
VALUES (15, 'Gynecology');
INSERT INTO speciality
VALUES (16, 'Dermatology');
INSERT INTO speciality
VALUES (17, 'Neurology');
INSERT INTO speciality
VALUES (18, 'Pathology');
INSERT INTO speciality
VALUES (19, 'Radiology');
INSERT INTO speciality
VALUES (20, 'Anesthesiology');
INSERT INTO speciality
VALUES (21, 'Psychiatry');
INSERT INTO speciality
VALUES (22, 'Pediatrics');
INSERT INTO speciality
VALUES (23, 'Family Practice');
INSERT INTO speciality
VALUES (24, 'Radiation Oncology');
INSERT INTO speciality
VALUES (25, 'Physical Medicine and Rehab');
INSERT INTO speciality
VALUES (26, 'Emergency Medicine');
INSERT INTO speciality
VALUES (27, 'Psychologists/Counselors');
INSERT INTO speciality
VALUES (28, 'Podiatrists');
INSERT INTO speciality
VALUES (29, 'Optometrists');
INSERT INTO speciality
VALUES (30, 'Maternal-Fetal Medicine');
INSERT INTO speciality
VALUES (31, 'Reproductive Endocrinology');
INSERT INTO speciality
VALUES (32, 'Gynecologic Oncology');
INSERT INTO speciality
VALUES (33, 'Urogynecology');
INSERT INTO speciality
VALUES (34, 'Sports Medicine');
INSERT INTO speciality
VALUES (35, 'Orthopedic Oncology');

/* doc_positions table */

INSERT INTO doctor_positions
VALUES (1, 'Student');
INSERT INTO doctor_positions
VALUES (2, 'Junior Houseman');
INSERT INTO doctor_positions
VALUES (3, 'Senior Houseman');
INSERT INTO doctor_positions
VALUES (4, 'Assistant Registrar');
INSERT INTO doctor_positions
VALUES (5, 'Registrar');
INSERT INTO doctor_positions
VALUES (6, 'Consultant');

/* doctor table 

INSERT INTO doctor
VALUES ('Marcus Rashford', 1001, 11, NULL, 6);
INSERT INTO doctor
VALUES ('Jake Paul', 1006, 14, NULL, 6);
INSERT INTO doctor
VALUES ('Jodie Keith', 1013, 13, NULL, 6);
INSERT INTO doctor
VALUES ('Stephen Strange', 1014, 1, NULL, 6);
INSERT INTO doctor
VALUES ('Marc Marquez', 1020, 12, NULL, 6);
INSERT INTO doctor
VALUES ('Smith Watson', 1000, NULL, 1001, 3);
INSERT INTO doctor
VALUES ('Helmut Marko', 1002, NULL, 1001, 4);
INSERT INTO doctor
VALUES ('Trent Washington', 1003, NULL, 1001, 2);
INSERT INTO doctor
VALUES ('Denzel Washington', 1004, NULL, 1006, 5);
INSERT INTO doctor
VALUES ('Aaron Cash', 1005, NULL, 1006, 3);
INSERT INTO doctor
VALUES ('Logan Paul', 1007, NULL, 1013, 2);
INSERT INTO doctor
VALUES ('Meghan Fenix', 1008, NULL, 1020, 1);
INSERT INTO doctor
VALUES ('Jennifer Law', 1009, NULL, 1020, 5);
INSERT INTO doctor
VALUES ('Xing Pao', 1010, NULL, 1013, 3);
INSERT INTO doctor
VALUES ('Knee Gro', 1011, NULL, 1014, 1);
INSERT INTO doctor
VALUES ('Kevin McCallister', 1012, NULL, 1020, 2);
INSERT INTO doctor
VALUES ('Harleen Quinzel', 1015, NULL, 1020, 1);
INSERT INTO doctor
VALUES ('Pamela Ivy', 1016, NULL, 1014, 3);
INSERT INTO doctor
VALUES ('Joe Car', 1017, NULL, 1020, 4);
INSERT INTO doctor
VALUES ('Sam Smith', 1018, NULL, 1001, 4);
INSERT INTO doctor
VALUES ('Rodrigo Mark', 1019, NULL, 1013, 2); */

/* doctor table */

INSERT INTO Doctor
VALUES (1001, 'Marcus Rashford', 11, 6);
INSERT INTO Doctor
VALUES (1006, 'Jake Paul', 14, 6);
INSERT INTO Doctor
VALUES (1013, 'Jodie Keith', 13, 6);
INSERT INTO Doctor
VALUES (1014, 'Stephen Strange', 1, 6);
INSERT INTO Doctor
VALUES (1020, 'Marc Marquez', 12, 6);
INSERT INTO Doctor
VALUES (1000, 'Smith Watson', NULL, 3);
INSERT INTO Doctor
VALUES (1002, 'Helmut Marko', NULL, 4);
INSERT INTO Doctor
VALUES (1003, 'Trent Washington', NULL, 2);
INSERT INTO Doctor
VALUES (1004, 'Denzel Washington', NULL, 5);
INSERT INTO Doctor
VALUES (1005, 'Aaron Cash', NULL, 3);
INSERT INTO Doctor
VALUES (1007, 'Logan Paul', NULL, 2);
INSERT INTO Doctor
VALUES (1008, 'Meghan Fenix', NULL, 1);
INSERT INTO Doctor
VALUES (1009, 'Jennifer Law', NULL, 5);
INSERT INTO Doctor
VALUES (1010, 'Xing Pao', NULL, 3);
INSERT INTO Doctor
VALUES (1011, 'Knee Gro', NULL, 1);
INSERT INTO Doctor
VALUES (1012, 'Kevin McCallister', NULL, 2);
INSERT INTO Doctor
VALUES (1015, 'Harleen Quinzel', NULL, 1);
INSERT INTO Doctor
VALUES (1016, 'Pamela Ivy', NULL, 3);
INSERT INTO Doctor
VALUES (1017, 'Joe Car', NULL, 4);
INSERT INTO Doctor
VALUES (1018, 'Sam Smith', NULL, 4);
INSERT INTO Doctor
VALUES (1019, 'Rodrigo Mark', NULL, 2);

/* consultant team table */

INSERT INTO consultant_team
VALUES (1, 1000, 1001, '8-JUN-2014');
INSERT INTO consultant_team
VALUES (2, 1002, 1001, '12-JUN-2016');
INSERT INTO consultant_team
VALUES (3, 1003, 1001, '12-APR-2015');
INSERT INTO consultant_team
VALUES (4, 1018, 1001, '6-DEC-2012');
INSERT INTO consultant_team
VALUES (5, 1004, 1006, '9-JAN-2013');
INSERT INTO consultant_team
VALUES (6, 1007, 1013, '7-MAR-2017');
INSERT INTO consultant_team
VALUES (7, 1010, 1013, '19-DEC-2017');
INSERT INTO consultant_team
VALUES (8, 1019, 1013, '8-OCT-2016');
INSERT INTO consultant_team
VALUES (9, 1011, 1014, '12-OCT-2011');
INSERT INTO consultant_team
VALUES (10, 1016, 1014, '9-OCT-2013');
INSERT INTO consultant_team
VALUES (11, 1008, 1020, '24-JUL-2012');
INSERT INTO consultant_team
VALUES (12, 1009, 1020, '22-JUN-2017');
INSERT INTO consultant_team
VALUES (13, 1012, 1020, '10-APR-2014');
INSERT INTO consultant_team
VALUES (14, 1015, 1020, '23-JUN-2017');
INSERT INTO consultant_team
VALUES (15, 1017, 1020, '22-APR-2016');

/* doctor experience table */

INSERT INTO doctor_experience
VALUES (500, '23-JUL-2008', '03-FEB-2012', 'Shifa', 'Unit Doctor', 1010);
INSERT INTO doctor_experience
VALUES (501, '30-JUN-2010', '19-DEC-2015', 'Maroof', 'Junior Doctor', 1016);
INSERT INTO doctor_experience
VALUES (502, '04-NOV-1998', '14-AUG-2006', 'CMH', 'Junior Doctor', 1007);
INSERT INTO doctor_experience
VALUES (503, '28-JAN-2015', '11-SEP-2016', 'Pims', ' Junior Doctor', 1019);
INSERT INTO doctor_experience
VALUES (504, '03-SEP-2004', '15-OCT-2014', 'Maroof', 'Medical Specialist', 1003);
INSERT INTO doctor_experience
VALUES (505, '21-JUN-2010', '30-DEC-2011', 'CMH', ' Specialty Registrar', 1009);
INSERT INTO doctor_experience
VALUES (506, '01-APR-2007', '01-APR-2017', 'Shifa', 'Foundation Doctor', 1007);
INSERT INTO doctor_experience
VALUES (507, '15-MAR-2014', '17-MAY-2016', 'Pims', 'Medical Specialist', 1010);
INSERT INTO doctor_experience
VALUES (508, '01-JAN-2005', '04-FEB-2009', 'IMC', 'Foundation Doctor', 1020);
INSERT INTO doctor_experience
VALUES (509, '09-JUN-2013', '03-AUG-2014', 'Pims', 'Specialty Registrar', 1015);
INSERT INTO doctor_experience
VALUES (510, '10-JUL-2000', '11-NOV-2003', 'Shifa', 'Unit Doctor', 1008);
INSERT INTO doctor_experience
VALUES (511, '14-FEB-2003', '15-MAR-2008', 'CMH', 'Specialty Registrar', 1002);
INSERT INTO doctor_experience
VALUES (512, '16-AUG-2005', '19-DEC-2008', 'CMH', 'Unit Doctor', 1008);
INSERT INTO doctor_experience
VALUES (513, '17-SEP-2012', '19-APR-2014', 'Maroof', 'Medical Specialist', 1002);
INSERT INTO doctor_experience
VALUES (514, '29-MAY-2016', '14-JAN-2018', 'Pims', 'Foundation Doctor', 1000);
INSERT INTO doctor_experience
VALUES (515, '13-JUN-2011', '15-APR-2015', 'Shifa', 'Medical Specialist', 1005);
INSERT INTO doctor_experience
VALUES (516, '11-NOV-1997', '17-MAR-2006', 'Maroof', 'Junior Doctor', 1017);
INSERT INTO doctor_experience
VALUES (517, '16-DEC-2012', '08-MAY-2014', 'CMH', 'Unit Doctor', 1009);
INSERT INTO doctor_experience
VALUES (518, '11-MAR-2009', '14-DEC-2014', 'Shifa', 'Specialty Registrar', 1018);
INSERT INTO doctor_experience
VALUES (519, '13-MAY-2009', '28-FEB-2011', 'Pims', 'Junior Doctor', 1020);
INSERT INTO doctor_experience
VALUES (520, '17-JAN-2013', '28-JUN-2015', 'CMH', 'Medical Specialist', 1013);

/* doctor performance table */

INSERT INTO doctor_performance
VALUES (200, '20-JUN-2015', 'A-', 1015);
INSERT INTO doctor_performance
VALUES (201, '21-AUG-2016', 'B+', 1003);
INSERT INTO doctor_performance
VALUES (202, '30-JAN-2010', 'A+', 1006);
INSERT INTO doctor_performance
VALUES (203, '12-SEP-2013', 'B-', 1009);
INSERT INTO doctor_performance
VALUES (204, '15-DEC-2014', 'B-', 1006);
INSERT INTO doctor_performance
VALUES (205, '14-FEB-2013', 'C+', 1019);
INSERT INTO doctor_performance
VALUES (206, '08-NOV-2009', 'A+', 1013);
INSERT INTO doctor_performance
VALUES (207, '13-MAY-2006', 'A+', 1004);
INSERT INTO doctor_performance
VALUES (208, '05-FEB-2017', 'A-', 1013);
INSERT INTO doctor_performance
VALUES (209, '03-OCT-2011', 'C-', 1007);
INSERT INTO doctor_performance
VALUES (210, '05-SEP-2005', 'D+', 1009);
INSERT INTO doctor_performance
VALUES (211, '16-MAR-2013', 'A-', 1007);
INSERT INTO doctor_performance
VALUES (212, '29-AUG-2010', 'B+', 1020);
INSERT INTO doctor_performance
VALUES (213, '18-NOV-2017', 'B-', 1015);
INSERT INTO doctor_performance
VALUES (214, '02-JUL-2014', 'C+', 1020);
INSERT INTO doctor_performance
VALUES (215, '09-MAY-2015', 'A-', 1006);
INSERT INTO doctor_performance
VALUES (216, '13-APR-2013', 'A+', 1002);
INSERT INTO doctor_performance
VALUES (217, '08-SEP-2004', 'B+', 1011);
INSERT INTO doctor_performance
VALUES (218, '28-MAR-2006', 'B-', 1012);
INSERT INTO doctor_performance
VALUES (219, '14-MAY-2009', 'C-', 1004);
INSERT INTO doctor_performance
VALUES (220, '16-AUG-2012', 'B+', 1014);

/* patient table */

INSERT INTO patient
VALUES (100, '20-JUN-1994', 'Ali Nauman', 'M', 1000);
INSERT INTO patient
VALUES (101, '12-APR-1990', 'Nauman Khan', 'M', 1001);
INSERT INTO patient
VALUES (102, '9-DEC-1990', 'Saira Khan', 'F', 1003);
INSERT INTO patient
VALUES (103, '19-DEC-1994', 'Aira Habib', 'F', 1003);
INSERT INTO patient
VALUES (104, '19-MAR-1997', 'John Watson', 'M', 1002);
INSERT INTO patient
VALUES (105, '19-JUN-1993', 'Emilia Clarke', 'F', 1002);
INSERT INTO patient
VALUES (106, '26-DEC-1995', 'Safie ur Rehman', 'M', 1004);
INSERT INTO patient
VALUES (107, '31-DEC-2006', 'Margaret Throne', 'F', 1004);
INSERT INTO patient
VALUES (108, '12-JUL-2016', 'Amanda R. Strahan', 'F', 1004);
INSERT INTO patient
VALUES (109, '1-FEB-2003', 'Meghan Markel', 'F', 1004);
INSERT INTO patient
VALUES (110, '1-FEB-2003', 'Susan Dawn', 'F', 1003);
INSERT INTO patient
VALUES (111, '21-MAR-2013', 'Smith Jones', 'M', 1003);
INSERT INTO patient
VALUES (112, '1-SEP-2011', 'Rodrick Heffley', 'M', 1007);
INSERT INTO patient
VALUES (113, '10-OCT-2012', 'Abubakar Ijaz', 'M', 1007);
INSERT INTO patient
VALUES (114, '12-OCT-2003', 'Monica Geller', 'F', 1008);
INSERT INTO patient
VALUES (115, '5-DEC-1950', 'Chandler M. Bing', 'M', 1010);
INSERT INTO patient
VALUES (116, '5-APR-1950', 'Naruto Uzumaki', 'M', 1009);
INSERT INTO patient
VALUES (117, '25-DEC-1923', 'Sasuke Uchiha', 'M', 1011);
INSERT INTO patient
VALUES (118, '15-DEC-1967', 'Hinata Huga', 'F', 1011);
INSERT INTO patient
VALUES (119, '5-DEC-1970', 'Kakashi Hatake', 'M', 1010);
INSERT INTO patient
VALUES (120, '15-MAR-1945', 'Minato Namikaze', 'M', 1010);

/* treatment table */
INSERT INTO treatment
VALUES (1, 'Botox');
INSERT INTO treatment
VALUES (2, 'Allergy Shots');
INSERT INTO treatment
VALUES (3, 'Medication (Donepezil)');
INSERT INTO treatment
VALUES (4, 'Test (Complete Blood Count)');
INSERT INTO treatment
VALUES (5, 'Cognitive Behavioral Therapy');
INSERT INTO treatment
VALUES (6, 'Medication (Analgesics)');
INSERT INTO treatment
VALUES (7, 'Medication (Theophylline)');
INSERT INTO treatment
VALUES (8, 'Medication (Vasodilators)');
INSERT INTO treatment
VALUES (9, 'Injection (Corticosteroid)');
INSERT INTO treatment
VALUES (10, 'Medication (Statins)');
INSERT INTO treatment
VALUES (11, 'Medication (Acetaminophen)');
INSERT INTO treatment
VALUES (12, 'Surgery');
INSERT INTO treatment
VALUES (13, 'Psychotherapy');
INSERT INTO treatment
VALUES (14, 'Insulin Therapy');
INSERT INTO treatment
VALUES (15, 'Exercise');
INSERT INTO treatment
VALUES (16, 'Medication (Ibuprofen)');
INSERT INTO treatment
VALUES (17, 'Injection (Cortisone)');
INSERT INTO treatment
VALUES (18, 'Medication (Paracetamol)');
INSERT INTO treatment
VALUES (19, 'Cochlear Implants');
INSERT INTO treatment
VALUES (20, 'Kidney Transplant');
INSERT INTO treatment
VALUES (21, 'Medication (Corticosteroid)');
INSERT INTO treatment
VALUES (22, 'Supplements');
INSERT INTO treatment
VALUES (23, 'Medication (Alendronate)');
INSERT INTO treatment
VALUES (24, 'Acupuncture');
INSERT INTO treatment
VALUES (25, 'Medication (Naproxen)');
INSERT INTO treatment
VALUES (26, 'Splinting');
INSERT INTO treatment
VALUES (27, 'Stretching');
INSERT INTO treatment
VALUES (28, 'Stretching');
INSERT INTO treatment
VALUES (29, 'Surgery');
INSERT INTO treatment
VALUES (30, 'Infusion (Carbidopa-levodopa)');
INSERT INTO treatment
VALUES (31, 'Labor Induction');
INSERT INTO treatment
VALUES (32, 'Exfoliation');
INSERT INTO treatment
VALUES (33, 'Supplements');
INSERT INTO treatment
VALUES (34, 'Meditation');
INSERT INTO treatment
VALUES (35, 'Injection (TPA)');
INSERT INTO treatment
VALUES (36, 'Radioactive Treatment');

/* complaint table */
INSERT INTO complaint
VALUES (1, 'Colds and Flu', 100);
INSERT INTO complaint
VALUES (2, 'Allergy', 101);
INSERT INTO complaint
VALUES (3, 'Depression', 102);
INSERT INTO complaint
VALUES (4, 'Anemia', 103);
INSERT INTO complaint
VALUES (5, 'Colds and Flu', 103);
INSERT INTO complaint
VALUES (6, 'Arthritis', 104);
INSERT INTO complaint
VALUES (7, 'Allergy', 105);
INSERT INTO complaint
VALUES (8, 'Blood Pressure', 106);
INSERT INTO complaint
VALUES (9, 'Fatigue', 107);
INSERT INTO complaint
VALUES (10, 'Diabetes', 108);
INSERT INTO complaint
VALUES (11, 'Colds and Flu', 108);
INSERT INTO complaint
VALUES (12, 'Colon Disease', 109);
INSERT INTO complaint
VALUES (13, 'Depression', 110);
INSERT INTO complaint
VALUES (14, 'Allergy', 111);
INSERT INTO complaint
VALUES (15, 'Blood Pressure', 111);
INSERT INTO complaint
VALUES (16, 'Fatigue', 112);
INSERT INTO complaint
VALUES (17, 'Colds and Flu', 113);
INSERT INTO complaint
VALUES (18, 'Fatigue', 114);
INSERT INTO complaint
VALUES (19, 'Depression', 115);
INSERT INTO complaint
VALUES (20, 'Headache', 116);
INSERT INTO complaint
VALUES (21, 'Allergy', 116);
INSERT INTO complaint
VALUES (22, 'Memory Loss', 117);
INSERT INTO complaint
VALUES (23, 'Osteoporosis', 117);
INSERT INTO complaint
VALUES (24, 'Pain, Back', 118);
INSERT INTO complaint
VALUES (25, 'Blood Pressure', 118);
INSERT INTO complaint
VALUES (26, 'Colds and Flu', 119);
INSERT INTO complaint
VALUES (27, 'Fatigue', 120);
INSERT INTO complaint
VALUES (28, 'Pain, Knee', 101);
INSERT INTO complaint
VALUES (29, 'Depression', 103);
INSERT INTO complaint
VALUES (30, 'Stress', 104);
INSERT INTO complaint
VALUES (31, 'Diabetes', 106);
INSERT INTO complaint
VALUES (32, 'Skin, Hair and Nails', 107);
INSERT INTO complaint
VALUES (33, 'Sleep Disorders', 109);
INSERT INTO complaint
VALUES (34, 'Blood Pressure', 112);
INSERT INTO complaint
VALUES (35, 'Headache', 116);
INSERT INTO complaint
VALUES (36, 'Allergy', 119);
INSERT INTO complaint
VALUES (37, 'Thyroid Disorders', 111);
INSERT INTO complaint
VALUES (38, 'Colds and Flu', 106);
INSERT INTO complaint
VALUES (39, 'Depression', 107);
INSERT INTO complaint
VALUES (40, 'Thyroid Disorders', 118);
INSERT INTO complaint
VALUES (41, 'Blood Pressure', 105);
INSERT INTO complaint
VALUES (42, 'Fatigue', 104);
INSERT INTO complaint
VALUES (43, 'Diabetes', 101);
INSERT INTO complaint
VALUES (44, 'Stress', 113);
INSERT INTO complaint
VALUES (45, 'Colds and Flu', 116);
INSERT INTO complaint
VALUES (46, 'Headache', 120);
INSERT INTO complaint
VALUES (47, 'Blood Pressure', 105);
INSERT INTO complaint
VALUES (48, 'Diabetes', 108);
INSERT INTO complaint
VALUES (49, 'Allergy', 109);
INSERT INTO complaint
VALUES (50, 'Depression', 112);

/* complaint_treatment table */

INSERT INTO complaint_treatment
VALUES (1, TO_DATE('01-JAN-2010', 'dd-MON-yyyy'), TO_DATE('01-JAN-2010', 'dd-MON-yyyy'), 1, 11, 1000);
INSERT INTO complaint_treatment
VALUES (2, TO_DATE('10-JAN-2010', 'dd-MON-yyyy'), TO_DATE('17-JAN-2010', 'dd-MON-yyyy'), 2, 2, 1015);
INSERT INTO complaint_treatment
VALUES (3, TO_DATE('24-JAN-2010', 'dd-MON-yyyy'), TO_DATE('31-JAN-2010', 'dd-MON-yyyy'), 2, 2, 1015);
INSERT INTO complaint_treatment
VALUES (4, TO_DATE('01-APR-2011', 'dd-MON-yyyy'), TO_DATE('01-APR-2011', 'dd-MON-yyyy'), 4, 4, 1010);
INSERT INTO complaint_treatment
VALUES (5, TO_DATE('03-OCT-2011', 'dd-MON-yyyy'), TO_DATE('03-OCT-2011', 'dd-MON-yyyy'), 5, 11, 1000);
INSERT INTO complaint_treatment
VALUES (6, TO_DATE('01-MAR-2012', 'dd-MON-yyyy'), TO_DATE('03-MAR-2012', 'dd-MON-yyyy'), 6, 6, 1010);
INSERT INTO complaint_treatment
VALUES (7, TO_DATE('10-JUL-2012', 'dd-MON-yyyy'), TO_DATE('17-JUL-2012', 'dd-MON-yyyy'), 7, 2, 1015);
INSERT INTO complaint_treatment
VALUES (8, TO_DATE('25-JUL-2012', 'dd-MON-yyyy'), TO_DATE('30-JUL-2012', 'dd-MON-yyyy'), 7, 2, 1015);
INSERT INTO complaint_treatment
VALUES (9, TO_DATE('06-AUG-2012', 'dd-MON-yyyy'), TO_DATE('13-AUG-2012', 'dd-MON-yyyy'), 7, 2, 1015);
INSERT INTO complaint_treatment
VALUES (10, TO_DATE('01-NOV-2013', 'dd-MON-yyyy'), TO_DATE('03-NOV-2013', 'dd-MON-yyyy'), 10, 14, 1003);
INSERT INTO complaint_treatment
VALUES (11, TO_DATE('27-FEB-2014', 'dd-MON-yyyy'), TO_DATE('27-FEB-2014', 'dd-MON-yyyy'), 11, 11, 1000);
INSERT INTO complaint_treatment
VALUES (12, TO_DATE('11-MAR-2014', 'dd-MON-yyyy'), TO_DATE('11-MAR-2014', 'dd-MON-yyyy'), 11, 11, 1000);
INSERT INTO complaint_treatment
VALUES (13, TO_DATE('01-AUG-2014', 'dd-MON-yyyy'), TO_DATE('03-AUG-2015', 'dd-MON-yyyy'), 13, 13, 1009);
INSERT INTO complaint_treatment
VALUES (14, TO_DATE('01-OCT-2015', 'dd-MON-yyyy'), TO_DATE('07-OCT-2015', 'dd-MON-yyyy'), 14, 2, 1015);
INSERT INTO complaint_treatment
VALUES (15, TO_DATE('14-OCT-2015', 'dd-MON-yyyy'), TO_DATE('21-OCT-2015', 'dd-MON-yyyy'), 14, 2, 1015);
INSERT INTO complaint_treatment
VALUES (16, TO_DATE('06-MAR-2016', 'dd-MON-yyyy'), TO_DATE('06-MAR-2016', 'dd-MON-yyyy'), 16, 16, 1003);
INSERT INTO complaint_treatment
VALUES (17, TO_DATE('10-MAR-2016', 'dd-MON-yyyy'), TO_DATE('10-APR-2016', 'dd-MON-yyyy'), 17, 11, 1000);
INSERT INTO complaint_treatment
VALUES (18, TO_DATE('19-MAR-2016', 'dd-MON-yyyy'), TO_DATE('19-APR-2016', 'dd-MON-yyyy'), 17, 11, 1000);
INSERT INTO complaint_treatment
VALUES (19, TO_DATE('25-MAR-2016', 'dd-MON-yyyy'), TO_DATE('25-APR-2016', 'dd-MON-yyyy'), 17, 11, 1000);
INSERT INTO complaint_treatment
VALUES (20, TO_DATE('01-NOV-2017', 'dd-MON-yyyy'), TO_DATE('03-NOV-2017', 'dd-MON-yyyy'), 20, 18, 1003);

/* ward table */

INSERT INTO ward
VALUES(1, 'WARD-A', 1);
INSERT INTO ward
VALUES(2, 'WARD-B', 2);
INSERT INTO ward
VALUES(3, 'WARD-C', 3);
INSERT INTO ward
VALUES(4, 'WARD-D', 4);
INSERT INTO ward
VALUES(5, 'WARD-E', 5);
INSERT INTO ward
VALUES(6, 'WARD-F', 6);
INSERT INTO ward
VALUES(7, 'WARD-G', 7);
INSERT INTO ward
VALUES(8, 'WARD-H', 8);
INSERT INTO ward
VALUES(9, 'WARD-I', 9);
INSERT INTO ward
VALUES(10, 'WARD-J', 10);

/* care_unit table*/

INSERT INTO care_unit
VALUES (1, 'CU-1A', 1);
INSERT INTO care_unit
VALUES (2, 'CU-2A', 1);
INSERT INTO care_unit
VALUES (3, 'CU-3A', 1);
INSERT INTO care_unit
VALUES (4, 'CU-1B', 2);
INSERT INTO care_unit
VALUES (5, 'CU-2B', 2);
INSERT INTO care_unit
VALUES (6, 'CU-3B', 2);
INSERT INTO care_unit
VALUES (7, 'CU-4B', 2);
INSERT INTO care_unit
VALUES (8, 'CU-5B', 2);
INSERT INTO care_unit
VALUES (9, 'CU-1C', 3);
INSERT INTO care_unit
VALUES (10, 'CU-2C', 3);
INSERT INTO care_unit
VALUES (11, 'CU-1D', 4);
INSERT INTO care_unit
VALUES (12, 'CU-2D', 4);
INSERT INTO care_unit
VALUES (13, 'CU-3D', 4);
INSERT INTO care_unit
VALUES (14, 'CU-1E', 5);
INSERT INTO care_unit
VALUES (15, 'CU-2E', 5);
INSERT INTO care_unit
VALUES (16, 'CU-1F', 6);
INSERT INTO care_unit
VALUES (17, 'CU-2F', 6);
INSERT INTO care_unit
VALUES (18, 'CU-1G', 7);
INSERT INTO care_unit
VALUES (19, 'CU-1H', 8);
INSERT INTO care_unit
VALUES (20, 'CU-1I', 9);
INSERT INTO care_unit
VALUES (21, 'CU-2I', 9);
INSERT INTO care_unit
VALUES (22, 'CU-1J', 10);
INSERT INTO care_unit
VALUES (23, 'CU-2J', 10);
INSERT INTO care_unit
VALUES (24, 'CU-3J', 10);

/* patient_admission table */

INSERT INTO patient_admission
VALUES (1, 1, '23-JUL-2008', '03-AUG-2008', 100, 2);
INSERT INTO patient_admission
VALUES (2, 10, '12-AUG-2012', '16-AUG-2012', 100, 1);
INSERT INTO patient_admission
VALUES (3, 3, '3-SEP-2011', '13-SEP-2011', 103, 3);
INSERT INTO patient_admission
VALUES (4, 15, '11-MAR-2016', '23-MAY-2016', 105, 11);
INSERT INTO patient_admission
VALUES (5, 20, '23-JUL-2014', '03-AUG-2016', 107, 23);
INSERT INTO patient_admission
VALUES (6, 26, '10-OCT-2012', '23-OCT-2012', 111, 12);
INSERT INTO patient_admission
VALUES (7, 45, '23-JUL-2014', '03-AUG-2016', 112, 4);
INSERT INTO patient_admission
VALUES (8, 90, '9-DEC-2017', '21-DEC-2017', 107, 5);
INSERT INTO patient_admission
VALUES (9, 123, '6-MAR-2014', '27-MAR-2014', 120, 22);
INSERT INTO patient_admission
VALUES (10, 22, '3-FEB-2018', '10-FEB-2018', 113, 23);
INSERT INTO patient_admission
VALUES (11, 34, '23-JAN-2018', '24-JAN-2018', 102, 2);
INSERT INTO patient_admission
VALUES (12, 53, '23-JUL-2014', '27-JUL-2014', 106, 1);
INSERT INTO patient_admission
VALUES (13, 23, '2-MAR-2018', '25-MAR-2018', 111, 8);
INSERT INTO patient_admission
VALUES (14, 12, '6-APR-2018', '12-APR-2018', 115, 10);
INSERT INTO patient_admission
VALUES (15, 12, '23-JUN-2012', '27-JUN-2012', 101, 10);
INSERT INTO patient_admission
VALUES (16, 66, '23-NOV-2017', '2-DEC-2017', 114, 9);
INSERT INTO patient_admission
VALUES (17, 28, '13-JUL-2016', '14-JUL-2016', 113, 14);
INSERT INTO patient_admission
VALUES (18, 39, '2-DEC-2014', '6-DEC-2014', 112, 19);
INSERT INTO patient_admission
VALUES (19, 11, '9-FEB-2015', '10-FEB-2015', 119, 17);
INSERT INTO patient_admission
VALUES (20, 43, '22-JUL-2014', '25-JUL-2014', 103, 7);

/* nurse table */

INSERT INTO nurse
VALUES(2000, 'Jennifer Galloway', 'T', 1);
INSERT INTO nurse
VALUES(2001, 'Phoebe Buffay', 'F', 1);
INSERT INTO nurse
VALUES(2002, 'Mary Allen', 'T', 1);
INSERT INTO nurse
VALUES(2003, 'Samantha Quill', 'T', 1);
INSERT INTO nurse
VALUES(2004, 'Sara West', 'F', 1);
INSERT INTO nurse
VALUES(2005, 'Marinda Scheid', 'F', 1);
INSERT INTO nurse
VALUES(2006, 'Natashia Albus', 'T', 1);
INSERT INTO nurse
VALUES(2007, 'Miss Lester', 'T', 2);
INSERT INTO nurse
VALUES(2008, 'Liza Cluff', 'F', 2);
INSERT INTO nurse
VALUES(2009, 'Sheri Krug', 'T', 3);
INSERT INTO nurse
VALUES(2010, 'Tomika Moffat', 'F', 3);
INSERT INTO nurse
VALUES(2011, 'Rema Manier', 'T', 4);
INSERT INTO nurse
VALUES(2012, 'Noemi Ferrel', 'T', 5);
INSERT INTO nurse
VALUES(2013, 'Shoshana Schoenberg', 'T', 6);
INSERT INTO nurse
VALUES(2014, 'Berniece Schillinger', 'T', 7);
INSERT INTO nurse
VALUES(2015, 'Madelyn Maloy', 'T', 8);
INSERT INTO nurse
VALUES(2016, 'Marylynn Keiser', 'F', 4);
INSERT INTO nurse
VALUES(2017, 'Novella Mynatt', 'F', 5);
INSERT INTO nurse
VALUES(2018, 'Marylin Police', 'F', 6);
INSERT INTO nurse
VALUES(2019, 'Alesia Savell', 'F', 7);
INSERT INTO nurse
VALUES(2020, 'Eboni Cashen', 'F', 8);
INSERT INTO nurse
VALUES(2076, 'Claudine Scharff', 'T', 7);
INSERT INTO nurse
VALUES(2077, 'Elsie Lengyel', 'T', 8);
INSERT INTO nurse
VALUES(2021, 'Luba Piatt', 'T', 9);
INSERT INTO nurse
VALUES(2022, 'Pok Rankins', 'T', 10);
INSERT INTO nurse
VALUES(2023, 'Christen Councill', 'T', 9);
INSERT INTO nurse
VALUES(2024, 'Eileen Ricciardi', 'T', 10);
INSERT INTO nurse
VALUES(2025, 'Almeta Bellone', 'T', 9);
INSERT INTO nurse
VALUES(2026, 'Karolyn Deluna', 'T', 10);
INSERT INTO nurse
VALUES(2027, 'Sharron Marshall', 'F', 9);
INSERT INTO nurse
VALUES(2028, 'Bronwyn Shults', 'F', 10);
INSERT INTO nurse
VALUES(2029, 'Sasha Porras', 'F', 9);
INSERT INTO nurse
VALUES(2030, 'Manda Zubia', 'F', 10);
INSERT INTO nurse
VALUES(2031, 'Elba Zakrzewski', 'T', 11);
INSERT INTO nurse
VALUES(2032, 'Carita Mau', 'T', 12);
INSERT INTO nurse
VALUES(2033, 'Elicia Hennigan', 'T', 13);
INSERT INTO nurse
VALUES(2034, 'Ingrid Spade', 'T', 11);
INSERT INTO nurse
VALUES(2035, 'Marylou Purdie', 'F', 12);
INSERT INTO nurse
VALUES(2036, 'Jana Blacker', 'F', 13);
INSERT INTO nurse
VALUES(2037, 'Maralana Milhorn', 'F', 11);
INSERT INTO nurse
VALUES(2075, 'Venetta Cammarata', 'T', 12);
INSERT INTO nurse
VALUES(2038, 'Gretta Olin', 'T', 14);
INSERT INTO nurse
VALUES(2039, 'Bobette Samples', 'T', 15);
INSERT INTO nurse
VALUES(2040, 'Verline Dubinsky', 'T', 15);
INSERT INTO nurse
VALUES(2041, 'Fiona Bergey', 'T', 14);
INSERT INTO nurse
VALUES(2042, 'Frieda Mery', 'F', 14);
INSERT INTO nurse
VALUES(2043, 'Yadira Schmidt', 'F', 15);
INSERT INTO nurse
VALUES(2044, 'Georgie Crail', 'T', 16);
INSERT INTO nurse
VALUES(2045, 'Monica Overton', 'T', 17);
INSERT INTO nurse
VALUES(2046, 'Sakura Haruno', 'F', 16);
INSERT INTO nurse
VALUES(2047, 'Himawari Uzumaki', 'T', 16);
INSERT INTO nurse
VALUES(2048, 'Hanabi Hyuga', 'F', 17);
INSERT INTO nurse
VALUES(2074, 'Venessa Raizin', 'T', 17);
INSERT INTO nurse
VALUES(2049, 'Regina Phelange', 'T', 18);
INSERT INTO nurse
VALUES(2050, 'Moana Foss', 'T', 18);
INSERT INTO nurse
VALUES(2051, 'Emma Geller', 'T', 18);
INSERT INTO nurse
VALUES(2052, 'Tonori Timari', 'F', 18);
INSERT INTO nurse
VALUES(2053, 'Quiana Weissinger', 'T', 19);
INSERT INTO nurse
VALUES(2054, 'Deane Dockstader', 'T', 19);
INSERT INTO nurse
VALUES(2055, 'Vanesa Pille', 'T', 19);
INSERT INTO nurse
VALUES(2056, 'Renita Raker', 'F', 19);
INSERT INTO nurse
VALUES(2057, 'Vikki Ovalle', 'T', 19);
INSERT INTO nurse
VALUES(2058, 'Felice Lefever', 'T', 20);
INSERT INTO nurse
VALUES(2059, 'Dorethea Newingham', 'T', 21);
INSERT INTO nurse
VALUES(2060, 'Johnetta Stockdale', 'F', 20);
INSERT INTO nurse
VALUES(2061, 'Corinne Parisi', 'T', 21);
INSERT INTO nurse
VALUES(2062, 'Elidia Schrick', 'T', 20);
INSERT INTO nurse
VALUES(2072, 'Jennell Upshur', 'F', 21);
INSERT INTO nurse
VALUES(2073, 'Shawnda Kinghorn', 'F', 21);
INSERT INTO nurse
VALUES(2063, 'Rosio Beaston', 'T', 22);
INSERT INTO nurse
VALUES(2064, 'Juliette Younce', 'T', 23);
INSERT INTO nurse
VALUES(2065, 'Johnetta Stockdale', 'T', 24);
INSERT INTO nurse
VALUES(2066, 'Pok Lintner', 'F', 22);
INSERT INTO nurse
VALUES(2067, 'Kristin Grimshaw', 'F', 23);
INSERT INTO nurse
VALUES(2068, 'Stephnie Scates', 'F', 24);
INSERT INTO nurse
VALUES(2069, 'Maritza Akridge', 'T', 24);
INSERT INTO nurse
VALUES(2070, 'Elyse Sawyer', 'T', 23);
INSERT INTO nurse
VALUES(2071, 'Savannah Petrin', 'F', 24);

/* ward_shift table*/

INSERT INTO ward_shift
VALUES(1, 2000, 2002);
INSERT INTO ward_shift
VALUES(2, 2076, 2077);
INSERT INTO ward_shift
VALUES(3, 2021, 2022);
INSERT INTO ward_shift
VALUES(4, 2034, 2075);
INSERT INTO ward_shift
VALUES(5, 2038, 2039);
INSERT INTO ward_shift
VALUES(6, 2044, 2045);
INSERT INTO ward_shift
VALUES(7, 2049, 2050);
INSERT INTO ward_shift
VALUES(8, 2053, 2054);
INSERT INTO ward_shift
VALUES(9, 2058, 2059);
INSERT INTO ward_shift
VALUES(10, 2069, 2070);

/* unit_incharge table */

INSERT INTO unit_incharge
VALUES (1, 2006);
INSERT INTO unit_incharge
VALUES (2, 2007);
INSERT INTO unit_incharge
VALUES (3, 2009);
INSERT INTO unit_incharge
VALUES (4, 2011);
INSERT INTO unit_incharge
VALUES (5, 2012);
INSERT INTO unit_incharge
VALUES (6, 2013);
INSERT INTO unit_incharge
VALUES (7, 2014);
INSERT INTO unit_incharge
VALUES (8, 2015);
INSERT INTO unit_incharge
VALUES (9, 2023);
INSERT INTO unit_incharge
VALUES (10, 2024);
INSERT INTO unit_incharge
VALUES (11, 2031);
INSERT INTO unit_incharge
VALUES (12, 2032);
INSERT INTO unit_incharge
VALUES (13, 2033);
INSERT INTO unit_incharge
VALUES (14, 2041);
INSERT INTO unit_incharge
VALUES (15, 2040);
INSERT INTO unit_incharge
VALUES (16, 2047);
INSERT INTO unit_incharge
VALUES (17, 2074);
INSERT INTO unit_incharge
VALUES (18, 2051);
INSERT INTO unit_incharge
VALUES (19, 2055);
INSERT INTO unit_incharge
VALUES (20, 2062);
INSERT INTO unit_incharge
VALUES (21, 2061);
INSERT INTO unit_incharge
VALUES (22, 2063);
INSERT INTO unit_incharge
VALUES (23, 2064);
INSERT INTO unit_incharge
VALUES (24, 2065);

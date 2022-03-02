   
         
         List of relations
 Schema |   Name    | Type  |  Owner   
--------+-----------+-------+----------
 public | diagnosed | table | postgres
 public | diseases  | table | postgres
 public | doctors   | table | postgres
 public | patients  | table | postgres
 public | visits    | table | postgres
(5 rows)

INSERT INTO doctors(doctor_name,speciality) VALUES ('Jack','Dermatology'),('Kelly','Internal'),('Ayse','Radiology'),('Betul','Pediatric'),('Jiratchaya','Eye');

medicalcenter_db=# select *from doctors;
 id | doctor_name | speciality  
----+-------------+-------------
  1 | Jack        | Dermatology
  2 | Kelly       | Internal
  3 | Ayse        | Radiology
  4 | Betul       | Pediatric
  5 | Jiratchaya  | Eye
(5 rows)

medicalcenter_db=# INSERT INTO diseases (disease_name) VALUES ('chickenpox'),('Covid19'),('CommonCold'),('eczema'),('acne');
INSERT 0 5
medicalcenter_db=# select*from diseases;
 id | disease_name 
----+--------------
  1 | chickenpox
  2 | Covid19
  3 | CommonCold
  4 | eczema
  5 | acne
(5 rows)

medicalcenter_db=# INSERT INTO patients (patient_name) VALUES ('Liam'),('Noah'),('Elijah'),('Yousif'),('Ava'),('Olivia'),('Fatima');

INSERT 0 7

medicalcenter_db=# select * from patients;
 id | patient_name 
----+--------------
  1 | Liam
  2 | Noah
  3 | Elijah
  4 | Yousif
  5 | Ava
  6 | Olivia
  7 | Fatima
(7 rows)
medicalcenter_db=# INSERT INTO visits (doctor_id,patient_id) VALUES (1,4),(1,5),(2,2),(2,3),(4,1),(4,2),(4,4);
INSERT 0 7
medicalcenter_db=# SELECT * FROM visits;
 id | doctor_id | patient_id 
----+-----------+------------
  1 |         1 |          4
  2 |         1 |          5
  3 |         2 |          2
  4 |         2 |          3
  5 |         4 |          1
  6 |         4 |          2
  7 |         4 |          4
(7 rows)

medicalcenter_db=# INSERT INTO diagnosed(visit_id,disease_id) VALUES (1,5),(2,4),(3,2),(1,1);
INSERT 0 4
medicalcenter_db=# select *from diagnosed;
 id | visit_id | disease_id 
----+----------+------------
  1 |        1 |          5
  2 |        2 |          4
  3 |        3 |          2
  4 |        1 |          1
(4 rows)


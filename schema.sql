-- Create Donor Table
CREATE TABLE donar (
  D_id NUMBER(3) PRIMARY KEY,
  D_name VARCHAR2(30) NOT NULL,
  D_dob DATE,
  D_email VARCHAR2(30),
  gender VARCHAR2(2),
  D_mn NUMBER(12) UNIQUE,
  D_add VARCHAR2(55),
  D_bg VARCHAR2(3) NOT NULL
);

-- Create Patient Table
CREATE TABLE patient (
  P_id NUMBER(3) PRIMARY KEY,
  P_name VARCHAR2(30) NOT NULL,
  P_dob DATE,
  P_email VARCHAR2(30),
  gender VARCHAR2(2),
  P_mn NUMBER(12) UNIQUE,
  P_add VARCHAR2(55),
  P_bg VARCHAR2(3) NOT NULL
);

-- Create Hospital Table
CREATE TABLE hospital (
  h_id NUMBER(3) PRIMARY KEY,
  h_name VARCHAR2(30) NOT NULL,
  h_add VARCHAR2(55),
  h_mn NUMBER(12)
);

-- Create Donation Table
CREATE TABLE donation (
  Don_id NUMBER(3) PRIMARY KEY,
  Don_date DATE NOT NULL,
  volume NUMBER(3) NOT NULL,
  D_id NUMBER(3) REFERENCES donar(D_id),
  P_id NUMBER(3) REFERENCES patient(P_id),
  H_id NUMBER(3) REFERENCES hospital(h_id)
);

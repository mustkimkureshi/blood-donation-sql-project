# 🩸 Blood Donation Management System (SQL Project)

## 📌 Project Description
The Blood Donation Management System is a SQL-based project designed to manage and track information related to **blood donors**, **patients**, **hospitals**, and **donation events**. The system helps maintain clear records and supports efficient retrieval of important data such as donation history, blood group compatibility, and hospital activity.

This project uses **Oracle SQL** and includes an **ER Diagram**, sample data, and useful SQL queries.

---

## 🛠️ Technologies Used
- Oracle SQL / SQL Developer
- ER Diagram Tool (Draw.io)
- Command-line or SQL GUI for execution

---

## 📁 Project Structure


---

## 🧩 Database Tables

### 1. `donar`
Stores information about blood donors.

| Column   | Type         | Description               |
|----------|--------------|---------------------------|
| D_id     | NUMBER(3)    | Primary Key               |
| D_name   | VARCHAR2(30) | Donor's name              |
| D_dob    | DATE         | Date of birth             |
| D_email  | VARCHAR2(30) | Email address             |
| gender   | VARCHAR2(2)  | Gender                    |
| D_mn     | NUMBER(12)   | Mobile number (unique)    |
| D_add    | VARCHAR2(55) | Address                   |
| D_bg     | VARCHAR2(3)  | Blood group (NOT NULL)    |

---

### 2. `patient`
Stores patient details receiving blood.

| Column   | Type         | Description               |
|----------|--------------|---------------------------|
| P_id     | NUMBER(3)    | Primary Key               |
| P_name   | VARCHAR2(30) | Patient's name            |
| P_dob    | DATE         | Date of birth             |
| P_email  | VARCHAR2(30) | Email address             |
| gender   | VARCHAR2(2)  | Gender                    |
| P_mn     | NUMBER(12)   | Mobile number (unique)    |
| P_add    | VARCHAR2(55) | Address                   |
| P_bg     | VARCHAR2(3)  | Blood group (NOT NULL)    |

---

### 3. `hospital`
Stores hospital information where donations occur.

| Column   | Type         | Description            |
|----------|--------------|------------------------|
| h_id     | NUMBER(3)    | Primary Key            |
| h_name   | VARCHAR2(30) | Hospital name          |
| h_add    | VARCHAR2(55) | Hospital address       |
| h_mn     | NUMBER(12)   | Hospital phone number  |

---

### 4. `donation`
Logs each donation event.

| Column     | Type         | Description                            |
|------------|--------------|----------------------------------------|
| Don_id     | NUMBER(3)    | Primary Key                            |
| Don_date   | DATE         | Date of donation                       |
| volume     | NUMBER(3)    | Volume of blood donated (in units)     |
| D_id       | NUMBER(3)    | Foreign Key → `donar(D_id)`            |
| P_id       | NUMBER(3)    | Foreign Key → `patient(P_id)`          |
| H_id       | NUMBER(3)    | Foreign Key → `hospital(h_id)`         |

---

## 🖼️ ER Diagram
The Entity-Relationship diagram illustrates relationships:
- A donor can make multiple donations.
- A patient can receive multiple donations.
- Each donation is associated with one hospital.

The ER diagram file `blood donation.drawio` is included in the project folder.

---

## 🧪 Sample SQL Queries
Located in `queries.sql`. Examples include:
- List donors with blood type 'O'
- View donation history for a specific hospital
- Find donation details by donor or patient
- Count how many times each donor has donated

---

## 📜 How to Run

1. Open SQL Developer or any Oracle SQL tool.
2. Run `schema.sql` to create the tables.
3. Run `insert_data.sql` to insert test records.
4. Execute queries from `queries.sql` or create your own.

---

## 👨‍💻 Author

**Mustkim Kureshi** 
B.Sc. IT Student | Future Database Administrator  
📧 mustkimkureshi34@gmail.com  
📧 Likedin: https://www.linkedin.com/in/mustkim-kureshi-487876264


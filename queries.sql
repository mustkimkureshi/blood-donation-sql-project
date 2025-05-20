-- List all donors with blood group 'O'
SELECT * FROM donar WHERE D_bg = 'O';

-- Find donations made to a particular patient
SELECT * FROM donation WHERE P_id = 1;

-- List all patients who received donations from donor ID 5
SELECT p.P_name, d.volume, d.Don_date
FROM donation d
JOIN patient p ON d.P_id = p.P_id
WHERE d.D_id = 5;

-- Find all donation details with hospital name
SELECT d.Don_id, d.Don_date, d.volume, h.h_name
FROM donation d
JOIN hospital h ON d.H_id = h.h_id;

-- Count how many times each donor has donated
SELECT D_id, COUNT(*) AS total_donations
FROM donation
GROUP BY D_id;

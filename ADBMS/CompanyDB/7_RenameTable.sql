USE Company_db;

ALTER TABLE staff RENAME staff_members;
DESC staff_members;

RENAME TABLE staff_members to staff;
DESC staff;
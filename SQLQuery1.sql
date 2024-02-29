Create database UST;

use UST;

CREATE TABLE EMPLOYEE(EMPNO int NOT NULL,
        ENAME VARCHAR(10),
        JOB VARCHAR(9),
        MGR int,
        HIREDATE DATE,
        SAL int,
        COMM int,
        DEPTNO int);

INSERT INTO EMPLOYEE VALUES
        (7369, 'SMITH',  'CLERK',     7902,
        '17-DEC-1980',  800, NULL, 20);
INSERT INTO EMPLOYEE VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        '20-FEB-1981', 1600,  300, 30);
INSERT INTO EMPLOYEE VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        '22-FEB-1981', 1250,  500, 30);
INSERT INTO EMPLOYEE VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        '2-APR-1981',  2975, NULL, 20);
INSERT INTO EMPLOYEE VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        '28-SEP-1981', 1250, 1400, 30);
INSERT INTO EMPLOYEE VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        '1-MAY-1981',  2850, NULL, 30);
INSERT INTO EMPLOYEE VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        '9-JUN-1981',  2450, NULL, 10);
INSERT INTO EMPLOYEE VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
        '09-DEC-1982', 3000, NULL, 20);
INSERT INTO EMPLOYEE VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
        '17-NOV-1981', 5000, NULL, 10);
INSERT INTO EMPLOYEE VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
        '8-SEP-1981',  1500,    0, 30);
INSERT INTO EMPLOYEE VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        '12-JAN-1983', 1100, NULL, 20);
INSERT INTO EMPLOYEE VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        '3-DEC-1981',   950, NULL, 30);
INSERT INTO EMPLOYEE VALUES
        (7902, 'FORD',   'ANALYST',   7566,
        '3-DEC-1981',  3000, NULL, 20);
INSERT INTO EMPLOYEE VALUES
        (7934, 'MILLER', 'CLERK',     7782,
        '23-JAN-1982', 1300, NULL, 10);

Select * from EMPLOYEE;

select ENAME,SAL,DEPTNO from EMPLOYEE
where DEPTNO in (20,30,40);

CREATE TABLE Designation_Masters(
Design_Code int PRIMARY KEY,
Design_Name VARCHAR(50) UNIQUE);
INSERT INTO designation_masters VALUES(101,'HOD');
INSERT INTO designation_masters VALUES(102,'Professor');
INSERT INTO designation_masters VALUES(103,'Reader');
INSERT INTO designation_masters VALUES(104,'Sr.Lecturer');
INSERT INTO designation_masters VALUES(105,'Lecturer');
INSERT INTO designation_masters VALUES(106,'Director');

--Department Masters
--DROP TABLE DEPARTMENT_MASTERS CASCADE CONSTRAINTS;
CREATE TABLE Department_Masters(
Dept_code int PRIMARY KEY,
Dept_Name VARCHAR(50) UNIQUE);
INSERT INTO department_masters VALUES(10,'Computer Science');
INSERT INTO department_masters VALUES(20,'Electricals');
INSERT INTO department_masters VALUES(30,'Electronics');
INSERT INTO department_masters VALUES(40,'Mechanics');
INSERT INTO department_masters VALUES(50,'Robotics');

--Student Masters
--DROP TABLE STUDENT_MASTERS CASCADE CONSTRAINTS;
CREATE TABLE Student_Masters(
Student_Code int PRIMARY KEY,
Student_Name VARCHAR(50) NOT NULL,
Dept_Code int REFERENCES Department_Masters(dept_code),
Student_Dob DATE,
Student_Address VARCHAR(240));

INSERT INTO student_masters VALUES(1001,'Amit',10,'11-Jan-80','chennai');
INSERT INTO student_masters VALUES(1002,'Ravi',10,'1-Nov-81','New Delhi');
INSERT INTO student_masters VALUES(1003,'Ajay',20,'13-Jan-82',null);
INSERT INTO student_masters VALUES(1004,'Raj',30,'14-Jan-79','Mumbai');
INSERT INTO student_masters VALUES(1005,'Arvind',40,'15-Jan-83','Bangalore');
INSERT INTO student_masters VALUES(1006,'Rahul',50,'16-Jan-81','Delhi');
INSERT INTO student_masters VALUES(1007,'Mehul',20,'17-Jan-82','Chennai');
INSERT INTO student_masters VALUES(1008,'Dev',10,'11-Mar-81','Bangalore');
INSERT INTO student_masters VALUES(1009,'Vijay',30,'19-Jan-80','Bangalore');
INSERT INTO student_masters VALUES(1010,'Rajat',40,'20-Jan-80','Bangalore');
INSERT INTO student_masters VALUES(1011,'Sunder',50,'21-Jan-80','Chennai');
INSERT INTO student_masters VALUES(1012,'Rajesh', 30,'22-Jan-80',null);
INSERT INTO student_masters VALUES(1013,'Anil',20,'23-Jan-80','Chennai');
INSERT INTO student_masters VALUES(1014,'Sunil',10,'15-Feb-85',	null);
INSERT INTO student_masters VALUES(1015,'Kapil',40,'18-Mar-81','Mumbai');
INSERT INTO student_masters VALUES(1016,'Ashok',40,'26-Nov-80',null);
INSERT INTO student_masters VALUES(1017,'Ramesh',30,'27-Dec-80',null);
INSERT INTO student_masters VALUES(1018,'Amit Raj',50,'28-Sep-80','New Delhi');
INSERT INTO student_masters VALUES(1019,'Ravi Raj',50,'29-May-81','New Delhi');
INSERT INTO student_masters VALUES(1020,'Amrit',10,'11-Nov-80',null);
INSERT INTO student_masters VALUES(1021,'Sumit',20,'1-Jan-80','Chennai');







--Student Marks
--DROP TABLE STUDENT_MARKS CASCADE CONSTRAINTS;
CREATE TABLE Student_Marks(
Student_Code int REFERENCES student_Masters(student_code),
Student_Year int not null,
Subject1 int,
Subject2 int,
Subject3 int);
INSERT INTO student_marks VALUES(1001,	2010,	55,45,78);
INSERT INTO student_marks VALUES(1002,	2010,	66,74,88);
INSERT INTO student_marks VALUES(1003,	2010,	87,54,65);
INSERT INTO student_marks VALUES(1004,	2010,	65,64,90);
INSERT INTO student_marks VALUES(1005,	2010,	78,88,65);
INSERT INTO student_marks VALUES(1006,	2010,	65,86,54);
INSERT INTO student_marks VALUES(1007,	2010,	67,79,49);
INSERT INTO student_marks VALUES(1008,	2010,	72,55,55);
INSERT INTO student_marks VALUES(1009,	2010,	71,59,58);
INSERT INTO student_marks VALUES(1010,	2010,	68,44,92);
INSERT INTO student_marks VALUES(1011,	2010,	89,96,78);
INSERT INTO student_marks VALUES(1012,	2010,	78,56,55);
INSERT INTO student_marks VALUES(1013,	2010,	75,58,65);
INSERT INTO student_marks VALUES(1014,	2010,	73,74,65);
INSERT INTO student_marks VALUES(1015,	2010,	66,45,74);
INSERT INTO student_marks VALUES(1016,	2010,	68,78,74);
INSERT INTO student_marks VALUES(1017,	2010,	69,44,52);
INSERT INTO student_marks VALUES(1018,	2010,	65,78,56);
INSERT INTO student_marks VALUES(1019,	2010,	78,58,74);
INSERT INTO student_marks VALUES(1020,	2010,	45,55,65);
INSERT INTO student_marks VALUES(1021,	2010,	78,79,78);
INSERT INTO student_marks VALUES(1001,	2011,	68,44,92);
INSERT INTO student_marks VALUES(1002,	2011,	89,96,78);
INSERT INTO student_marks VALUES(1003,	2011,	78,56,55);
INSERT INTO student_marks VALUES(1004,	2011,	75,58,65);
INSERT INTO student_marks VALUES(1005,	2011,	73,74,65);
INSERT INTO student_marks VALUES(1006,	2011,	66,45,74);
INSERT INTO student_marks VALUES(1007,	2011,	68,78,74);
INSERT INTO student_marks VALUES(1008,	2011,	69,44,52);
INSERT INTO student_marks VALUES(1009,	2011,	65,78,56);
INSERT INTO student_marks VALUES(1010,	2011,	78,58,74);
INSERT INTO student_marks VALUES(1011,	2011,	45,55,65);
INSERT INTO student_marks VALUES(1012,	2011,	78,79,78);
INSERT INTO student_marks VALUES(1013,	2011,	66,74,88);
INSERT INTO student_marks VALUES(1014,	2011,	65,64,90);
INSERT INTO student_marks VALUES(1015,	2011,	78,88,65);
INSERT INTO student_marks VALUES(1016,	2011,	65,86,54);
INSERT INTO student_marks VALUES(1017,	2011,	67,79,49);
INSERT INTO student_marks VALUES(1018,	2011,	72,55,55);
INSERT INTO student_marks VALUES(1019,	2011,	71,59,58);
INSERT INTO student_marks VALUES(1020,	2011,	55,45,78);
INSERT INTO student_marks VALUES(1021,	2011,	87,54,65);
--Data to be repeated for 2 more years

--Staff Masters
--DROP TABLE STAFF_MASTERS CASCADE CONSTRAINTS;
CREATE TABLE staff_Masters(
Staff_Code int PRIMARY KEY,
Staff_Name varchar(50) NOT NULL,
Design_Code int REFERENCES Designation_Masters(design_code),
Dept_Code int REFERENCES Department_Masters(dept_code),
Staff_dob DATE,
Hiredate DATE,
Mgr_code int,
Staff_sal int,
Staff_address VARCHAR(240));

INSERT INTO staff_masters 
VALUES(100001,'Arvind',102,30,'1-15-80','1-15-03',100006,17000,'Bangalore');
INSERT INTO staff_masters 
VALUES(100002,'Shyam',102,20,'2-18-80','2-17-02',100007,20000,'Chennai');
INSERT INTO staff_masters 
VALUES(100003,'Mohan',102,10,'3-23-80','1-19-02',100006,24000,'Mumbai');
INSERT INTO staff_masters 
VALUES(100004,'Anil',102,20,'4-22-77','3-11-01',100006,20000,'Hyderabad');
INSERT INTO staff_masters
VALUES(100005,'John',106,10,'5-22-76','1-21-01',100007,32000,'Bangalore');
INSERT INTO staff_masters 
VALUES(100006,'Allen',103,30,'1-22-80','4-23-01',100005,42000,'Chennai');


INSERT INTO staff_masters 
VALUES(100007,'Smith',103,20,'7-19-73','3-12-02',100005,62000,'Mumbai');
INSERT INTO staff_masters 
VALUES(100008,'Raviraj',102,40,'6-17-80','1-11-03',100006,18000,'Bangalore');
INSERT INTO staff_masters
VALUES(100009,'Rahul',102,20,'1-16-78','12-11-03',100006,22000,'Hyderabad');
INSERT INTO staff_masters 
VALUES(100010,'Ram',103,30,'1-17-79','1-17-02',100007,32000,'Bangalore');

--Book Masters
--DROP TABLE BOOK_MASTERS CASCADE CONSTRAINTS;
CREATE TABLE Book_Masters(
Book_code int PRIMARY KEY,
Book_name VARCHAR(50) NOT NULL,
Book_pub_year int,
Book_pub_author VARCHAR(50) NOT NULL);


INSERT INTO book_masters VALUES(10000001,'Let Us C++',2000,'Yashavant Kanetkar');

INSERT INTO book_masters VALUES(10000002,'Mastersing VC++',2005,'P.J Allen');

INSERT INTO book_masters VALUES(10000003,'JAVA Complete Reference',2004,'H.Schild');

INSERT INTO book_masters VALUES(10000004,'J2EE Complete Reference',2000,'H. Schild');

INSERT INTO book_masters VALUES(10000005,'Relational DBMS',2000,'B.C. Desai');

INSERT INTO book_masters VALUES(10000006,'Let Us C',2000, 'Yashavant Kanetkar');

INSERT INTO book_masters VALUES(10000007,'Intoduction To Algorithams',2001,'Cormen');

INSERT INTO book_masters VALUES(10000008,'Computer Networks',2000,'Tanenbaum');

INSERT INTO book_masters VALUES(10000009,'Introduction to O/S',2001,'Millan');

--Book Transactions
--DROP TABLE BOOK_TRANSACTIONS;
CREATE TABLE Book_transactions(
Book_code int REFERENCES Book_Masters(Book_code),
Student_code int REFERENCES Student_Masters(student_code),
Staff_code int REFERENCES Staff_Masters(staff_code),
Book_issue_Date date not null,
Book_expected_return_date date not null,
Book_actual_return_date date);

INSERT INTO book_transactions 
VALUES(10000006,1012,NULL,'02-Feb-2011','09-Feb-2011',NULL);

INSERT INTO book_transactions 
VALUES(10000008,NULL,100006,'10-Mar-2011','17-Mar-2011','15-Mar-2011');

INSERT INTO book_transactions 
VALUES(10000009,NULL,100010,'01-Apr-2011','08-Apr-2011','10-Apr-2011');

INSERT INTO book_transactions 
VALUES(10000004,1015,NULL,'12-Feb-2011','19-Feb-2011',NULL);


INSERT INTO book_transactions 
VALUES(10000005,NULL,100007,'14-Mar-2011','21-Mar-2011','21-Mar-2011');

INSERT INTO book_transactions 
VALUES(10000007,NULL,100007,'01-Apr-2011','07-Apr-2011','06-Apr-2011');

INSERT INTO book_transactions 
VALUES(10000007,NULL,100006,'01-Apr-2010','07-Apr-2010','06-Apr-2010');
INSERT INTO book_transactions 
VALUES(10000005,1009,NULL,'31-May-2011','08-JUN-2011','08-JUN-2011');


SELECT SM.Student_Code, SUM(SM.Subject1 + SM.Subject2 + SM.Subject3) AS Total_Marks
FROM Student_Marks SM
JOIN Student_Masters ST ON SM.Student_Code = ST.Student_Code
GROUP BY SM.Student_Code, ST.Student_Name
ORDER BY SM.Student_Code;

select Staff_Name,Design_Code from staff_Masters where
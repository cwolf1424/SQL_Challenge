-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "Dept_Number" varchar(20)   NOT NULL,
    "Dept_Name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_Number"
     )
);

CREATE TABLE "Department_Employees" (
    "Emp_Number" FK-Employees.Emp_Number   NOT NULL,
    "Dept_Number" FK-Departmnets.Dept_Number   NOT NULL,
    CONSTRAINT "pk_Department_Employees" PRIMARY KEY (
        "Emp_Number"
     )
);

CREATE TABLE "Department_Managers" (
    "Emp_Number" FK-Employees.Emp_Number   NOT NULL,
    "Dept_Number" FK-Departmnets.Dept_Number   NOT NULL,
    CONSTRAINT "pk_Department_Managers" PRIMARY KEY (
        "Emp_Number"
     )
);

CREATE TABLE "Employees" (
    "Emp_Number" Int   NOT NULL,
    "Title_ID" varchar(10)   NOT NULL,
    "DOB" varchar(20)   NOT NULL,
    "First_Name" varchar(20)   NOT NULL,
    "Last_Name" varchar(20)   NOT NULL,
    "Sex" varchar(5)   NOT NULL,
    "Hire_Date" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_Number"
     )
);

CREATE TABLE "Tiltes" (
    "Title_ID" FK-Employees.Title_ID   NOT NULL,
    "Title" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Tiltes" PRIMARY KEY (
        "Title_ID"
     )
);

CREATE TABLE "Salaries" (
    "Emp_Number" FK-Employees.Emp_Number   NOT NULL,
    "Salary" Int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "Emp_Number"
     )
);


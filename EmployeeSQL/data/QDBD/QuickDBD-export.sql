-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Titles" (
    "Title_ID" varchar(10)   NOT NULL,
    "Title" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_ID"
     )
);

CREATE TABLE "Employees" (
    "Emp_Number" Int   NOT NULL,
    "Title_ID" varchar(10)   NOT NULL,
    "DOB" date   NOT NULL,
    "First_Name" varchar(20)   NOT NULL,
    "Last_Name" varchar(20)   NOT NULL,
    "Sex" varchar(5)   NOT NULL,
    "Hire_Date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_Number"
     )
);

CREATE TABLE "Departments" (
    "Dept_Number" varchar(20)   NOT NULL,
    "Dept_Name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_Number"
     )
);

CREATE TABLE "Department_Employees" (
    "Emp_Number" Int   NOT NULL,
    "Dept_Number" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Department_Employees" PRIMARY KEY (
        "Emp_Number"
     )
);

CREATE TABLE "Department_Managers" (
    "Dept_Number" varchar(20)   NOT NULL,
    "Emp_Number" Int   NOT NULL,
    CONSTRAINT "pk_Department_Managers" PRIMARY KEY (
        "Emp_Number"
     )
);

CREATE TABLE "Salaries" (
    "Emp_Number" Int   NOT NULL,
    "Salary" Int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "Emp_Number"
     )
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Title_ID" FOREIGN KEY("Title_ID")
REFERENCES "Titles" ("Title_ID");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Emp_Number" FOREIGN KEY("Emp_Number")
REFERENCES "Employees" ("Emp_Number");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Dept_Number" FOREIGN KEY("Dept_Number")
REFERENCES "Departments" ("Dept_Number");

ALTER TABLE "Department_Managers" ADD CONSTRAINT "fk_Department_Managers_Dept_Number" FOREIGN KEY("Dept_Number")
REFERENCES "Departments" ("Dept_Number");

ALTER TABLE "Department_Managers" ADD CONSTRAINT "fk_Department_Managers_Emp_Number" FOREIGN KEY("Emp_Number")
REFERENCES "Employees" ("Emp_Number");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_Number" FOREIGN KEY("Emp_Number")
REFERENCES "Employees" ("Emp_Number");


--1. List the employee number, last name, first name, sex, and salary of each employee.

Select  
	"Employees"."Emp_Number", 
	"Employees"."Last_Name", 
	"Employees"."First_Name", 
	"Employees"."Sex",
	"Salaries"."Salary"
From 
	"Employees"
Join 
	"Salaries" on "Employees"."Emp_Number" = "Salaries"."Emp_Number";

--2. List the first name, last name, and hire date for the employees who were hired in 1986.

Select
	"First_Name",
	"Last_Name",
	"Hire_Date"
From
	"Employees"
Where
	"Employees"."Hire_Date" between '1986-01-01' and '1986-12-31'
Order By
	"Hire_Date";

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

Select  
	"Department_Managers"."Dept_Number",
	"Departments"."Dept_Name",
	"Employees"."Emp_Number",
	"Employees"."Last_Name", 
	"Employees"."First_Name" 
From 
	"Employees"
Join 
	"Department_Managers" on "Employees"."Emp_Number" = "Department_Managers"."Emp_Number"
Join
	"Departments" on "Department_Managers"."Dept_Number" = "Departments"."Dept_Number";
	
--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

Select  
	"Department_Employees"."Dept_Number",
	"Employees"."Emp_Number",
	"Employees"."Last_Name", 
	"Employees"."First_Name",
	"Departments"."Dept_Name"
From 
	"Employees"
Join 
	"Department_Employees" on "Employees"."Emp_Number" = "Department_Employees"."Emp_Number"
Join
	"Departments" on "Department_Employees"."Dept_Number" = "Departments"."Dept_Number";


--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

Select  
	"First_Name",
	"Last_Name",
	"Sex"
From 
	"Employees"
Where
	"First_Name" = 'Hercules'
And
	"Last_Name" Like 'B%'

--6. List each employee in the Sales department, including their employee number, last name, and first name.

Select  
	"Employees"."Emp_Number",
	"Employees"."Last_Name",
	"Employees"."First_Name"
From 
	"Employees"
Join 
	"Department_Employees" on "Employees"."Emp_Number" = "Department_Employees"."Emp_Number"
Join
	"Departments" on "Department_Employees"."Dept_Number" = "Departments"."Dept_Number"
Where 
	"Departments"."Dept_Name" = 'Sales';

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select  
	"Employees"."Emp_Number",
	"Employees"."Last_Name",
	"Employees"."First_Name",
	"Departments"."Dept_Name"
From 
	"Employees"
Join 
	"Department_Employees" on "Employees"."Emp_Number" = "Department_Employees"."Emp_Number"
Join
	"Departments" on "Department_Employees"."Dept_Number" = "Departments"."Dept_Number"
Where 
	"Departments"."Dept_Name" = 'Sales'
	or
	"Departments"."Dept_Name" = 'Development';

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Select
	"Last_Name",
	count("Last_Name")
From 
	"Employees"
Group by 
	"Last_Name"
Order By 
	count("Last_Name") desc;
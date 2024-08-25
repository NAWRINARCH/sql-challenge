CREATE DATABASE office;
use office;

CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    birth_date DATE NOT NULL,
    first_name VARCHAR(14) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    sex varchar(6) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no, from_date),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
    emp_no INT NOT NULL,
    title VARCHAR(50) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no, title, from_date),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);




SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 
dept_emp = pd.read_csv(r'C:\Users\nawri\OneDrive\Desktop\Class_folder\W8  Sol SQL and mod 9\Mod 9 Challenge Starter_Code\Starter_Code files and solution\data and solution\dept_emp.csv')
dept_emp.head()
INTO TABLE departments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 
department = pd.read_csv(r'C:\Users\nawri\OneDrive\Desktop\Class_folder\W8  Sol SQL and mod 9\Mod 9 Challenge Starter_Code\Starter_Code files and solution\data and solution\departments.csv')
department.head()
INTO TABLE departments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 
department = pd.read_csv(r'C:\Users\nawri\OneDrive\Desktop\Class_folder\W8  Sol SQL and mod 9\Mod 9 Challenge Starter_Code\Starter_Code files and solution\data and solution\departments.csv')
department.head()
INTO TABLE departments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 
titles = pd.read_csv(r'C:\Users\nawri\OneDrive\Desktop\Class_folder\W8  Sol SQL and mod 9\Mod 9 Challenge Starter_Code\Starter_Code files and solution\data and solution\titles.csv')
titles.head()
INTO TABLE departments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 
dept_emp = pd.read_csv(r'C:\Users\nawri\OneDrive\Desktop\Class_folder\W8  Sol SQL and mod 9\Mod 9 Challenge Starter_Code\Starter_Code files and solution\data and solution\dept_emp.csv')
dept_emp.head()
INTO TABLE departments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 
department = pd.read_csv(r'C:\Users\nawri\OneDrive\Desktop\Class_folder\W8  Sol SQL and mod 9\Mod 9 Challenge Starter_Code\Starter_Code files and solution\data and solution\departments.csv')
department.head()
INTO TABLE departments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
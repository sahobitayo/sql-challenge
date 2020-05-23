# SQL-Challenge

## Employee Database: A Mystery in Two Parts


### Background
was asked to analyze employees of a corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files. I will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data performing:

1. Data Modeling

2. Data Engineering

3. Data Analysis

#### Data Modeling
I Inspected the CSVs and sketched out an ERD of the tables using http://www.quickdatabasediagrams.com to assist me

#### Data Engineering
I used the information I was given to create a table schema for each of the six CSV files. I Imported each CSV file into the corresponding SQL table.

#### Data Analysis
I accomplished the following tasks once I had a complete database

- Listed the following details of each employee: employee number, last name, first name, gender, and salary.
- Listed employees who were hired in 1986.
- Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
- Listed the department of each employee with the following information: employee number, last name, first name, and department name.
- Listed all employees whose first name is "Hercules" and last names begin with "B."
- Listed all employees in the Sales department, including their employee number, last name, first name, and department name.
- Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
- In descending order, I listed the frequency count of employee last names, i.e., how many employees share each last name.

#### Additional Analysis
In this repository, I have also included a [jupyter notebook file](https://github.com/sahobitayo/sql-challenge/blob/master/EmployeeSQL/sql_query.ipynb). In this file, I imported the tables from the sql database into pandas. After importing the database, I used matplotlib to create a histogram that visualizes the most common salary ranges for employees and a bar chart that shows the average salary by job title. Also there a joke Employee in there with an employee ID number is 499942.

Before you run the jupyter notebook, you will need to do the following:
- Install psycopg2 in the anaconda environment.
- Create a config.py file in the same directory as the jupyter notebook. Then, update the file to include your postgresql username and password, as shown in the following example:
```
username = "postgres"
password = "<your PostgreSQL password>"
```

### Tools Used
- **SQL**
- **Quick DBD**
- **Jupyter Notebook**
- **Python**
- **Matplotlib**
- **Pandas**
- **SQLAlchemy**


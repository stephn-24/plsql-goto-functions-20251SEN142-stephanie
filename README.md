# PL/SQL GOTO Statements and Functions

**Student ID:** 20251SEN142  
**Student:** Stephanie  
**Course:** INSY 8311 - Database Development with PL/SQL  
**Assignment:** Individual Assignment III - PL/SQL GOTO Statements and Functions

## Project
Employee Payroll Management System

## Description
This project demonstrates PL/SQL GOTO statements, user-defined functions, SQL function calls, and payroll validation using an Employee Payroll Management System.

## Database
The project uses an Oracle PDB and the `PAYROLL_APP` schema.

## Repository Structure
```text
plsql-goto-functions-20251SEN142-stephanie/
├── README.md
├── .gitignore
├── 00_setup/
│   └── create_tables.sql
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
└── docs/
    └── REFLECTION.md
```

## How to Run

1. Connect to the `PAYROLL_APP` schema in the assignment PDB.
2. Run `00_setup/create_tables.sql`.
3. Run the function files in `02_functions/`.
4. Run the GOTO programs in `01_goto/`.
5. Run the test scripts in `03_tests/`.
6. Review the screenshots and reflection.

## Functions
- `fn_annual_salary` - calculates annual salary.
- `fn_years_of_service` - calculates completed years of service.
- `fn_calculate_tax` - calculates tax using the assignment's tax brackets.
- `fn_dept_name` - returns an employee's department name.
- `fn_validate_payroll` - validates payroll input.

## Screenshots
The `screenshots/` directory contains evidence of successful execution. Screenshots should show the relevant code and/or output required by the assignment.

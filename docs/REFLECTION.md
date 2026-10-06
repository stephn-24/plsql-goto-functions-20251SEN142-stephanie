# Reflection — PL/SQL GOTO Statements and Functions

## 1. What I learned about GOTO statements

Through this assignment, I learned how the PL/SQL `GOTO` statement can be used to transfer control from one part of a PL/SQL block to another labeled section. I used `GOTO` in the number classifier and salary review programs to direct execution to different labels depending on the condition.

I also learned that `GOTO` has restrictions. A `GOTO` statement cannot branch into certain restricted areas such as an `IF` statement. In A3, I intentionally created an illegal `GOTO` and observed the Oracle error. I then corrected the program by placing the label in a valid location.

## 2. GOTO versus structured control flow

Although `GOTO` can solve some control-flow problems, I found that structured statements such as `IF`, `ELSIF`, `ELSE`, and loops are generally easier to understand and maintain.

In A4, I rewrote the salary review program without using `GOTO`. The resulting code was simpler because the conditions and their corresponding actions were kept together. Therefore, I would prefer structured control flow for most practical applications and use `GOTO` only when there is a clear reason for it.

## 3. What I learned about functions

I learned that PL/SQL functions are reusable program units that accept parameters and return a value. In this assignment, I created functions for calculating annual salary, determining years of service, calculating tax, retrieving a department name, and validating payroll information.

For example, the annual salary function allowed me to calculate an employee's annual salary by multiplying the monthly salary by 12. Instead of writing the same calculation repeatedly, I could call the function whenever the result was needed.

## 4. Functions in SQL

I learned that PL/SQL functions can be called directly inside SQL statements. In B5, I used several functions in a single `SELECT` statement to display employee information together with annual salary, years of service, calculated tax, and department name.

This showed me how functions can make SQL queries more reusable and organized.

## 5. Validation and error handling

The payroll validation function helped me understand how business rules can be implemented inside a function. The function checked whether an employee existed and whether salary, allowance, and tax values were valid.

Testing both valid and invalid data helped me understand the importance of validating data before processing it.

## Conclusion

This assignment improved my understanding of PL/SQL program control and reusable functions. I learned how `GOTO` works, why illegal jumps cause compilation errors, and why structured control flow is often easier to maintain. I also learned how functions can simplify calculations, enforce business rules, and be reused directly in SQL queries. These concepts will be useful when developing more complex database applications such as employee payroll management systems.

CREATE TABLE Emp_Table
(
   EmpNo INT NOT NULL PRIMARY KEY, 
   Ename VARCHAR(50) NOT NULL,
   Sal INT NOT NULL,
   Hire_Date DATE NOT NULL,
   Commission int,
   DeptNo INT,
   Mgr INT,
   FOREIGN KEY (DeptNo) REFERENCES Dept_Table(DeptNo)
); 
GO
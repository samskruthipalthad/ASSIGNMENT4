1.SELECT *
FROM Emp_Table
WHERE DeptNo=10 OR DeptNo=30;

2.SELECT *
FROM Dept_Table
WHERE Dpt_Table.DeptNo=Emp_Table.DeptNo
GROUP BY DeptNo HAVING COUNT(*)>1;

3.SELECT ename
FROM Emp_Table
WHERE Ename LIKE 'S%';

5.SELECT REPLACE('Sachin','a','#');

6.SELECT e.Ename 'emp_name', m.Ename 'mgr_name'
FROM Emp_Table
WHERE e.EmpNo=m.Mgr;

7.SELECT Dname
FROM d.Dept_Table
WHERE DeptNo IN(SELECT SUM(sal)
FROM e.Emp_Table
WHERE d.deptNo=e.deptNo
GROUP BY DeptNo);

8.SELECT *
FROM Dept_Table,Emp_table
WHERE Dept_Table.DeptNo=Emp_Table.DeptNo;
9.UPDATE Ep_Table SET sal=sal+(sal*10/100);

10.SELECT DeptNo
FROM Dept_Table
WHERE Loc='Chennai' IN(DELETE Emp_Table
WHERE Dept_Table.DeptNo=Emp_Table.DeptNo AN);

11.SELECT Ename,(sal+commission)AS Gross_salary
FROM Emp_Table;

12.ALTER table Emp_Table MODIFY(Ename VARCHAR(250));

13.SELECT GETDATE();//timestamp

14.CREATE TABLE STUDENT( stud_name VARCHAR(20),stud_id INT PRIMARY KEY,dob
DATE,addr VARCHAR(20),age INT);

15.SELECT COUNT(EmpNo)
FROM Empt_Table
WHERE Sal>10000;

16.SELECT MAX(Sal) AS Max_sal,MIN(Sal) AS Min_sal,AVG(Sal) AS Avg_sal
FROM Emp_Table;

17.SELECT Loc, COUNT(EmpNo) AS no_of_emp
FROM Emp_Table,Dept_Table
WHERE Emp_Table.DeptNo=Dept_Table.DeptNo
18.SELECT * FROM Emp_Table
ORDER BY Ename DESC;

19.CREATE TABLE EMP_BKP(EmpNO INT PRIMARY KEY,Ename VARCHAR(10),SAL
INT,HIRE_Dtae date,Commision INT,DeptNo INT,Mrg INT);
20.SELECT CONCAT(SUBSTRING(Ename,1,3),sal)
FROM Emp_Table;

21.SELECT *
FROM Emp_Table
WHERE Ename LIKE 'S%';

22.SELECT *
FROM e.Emp_Table,d.Dept_Table
WHERE e.DepNo=d.DepNo and Loc='Bangalore';

23.SELECT *
FROM Emp_table
WHERE Ename LIKE 'A%K';

24.SELECT EpNo,Ename
FROM Emp_Table
WHERE Mgr IN(
SELECT EmpNO
FROM Emp_Table
WHERE Ename='Stefen');

25.SELECT Mgr ,Ename
FROM Emp_Table
GROUP BY Mgr HAVING COUNT(*)=(SELECT MAX(COUNT(MGR)) FROM EMP GROUP
BY MGR);

26.select *from employee
group by salary
order by salary desc limit 1,1;

27.SELECT *
FROM Emp_Table
WHERE EmpNo=(SELECT Mrg
FROM Emp_Table
GROUP BY Mgr);

28SELECT Ename,Sal,Commission,DeptNo,AGE(CURRENT_DATE,Hire_Dtae) AS
Expierence
FROM Emp_Table
WHERE EmpNo=(SELECT Mrg
FROM Emp_Table
GROUP BY Mgr);

29.SELECT EmpNo
FROM e.Emp_Table,d.Dept_Table
WHERE Commission<1000 AND Loc='Delhi' AND e.DeptNo=d.DeptNo;

30.SELECT *
FROM Emp_Table
WHERE Hire_Date <(SELECT Hire_date
FROM Emp_Table
WHERE Ename='Martin');
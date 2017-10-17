####
#条件查询
###


#单条件查询
SELECT ename FROM t_employee WHERE job="CLERK";

#多条件查询
SELECT ename FROM t_employee WHERE job="CLERK" && sal>800;

#指定范围查询
SELECT ename FROM t_employee WHERE sal BETWEEN 1000 AND 2000;

#范围外查询
SELECT ename FROM t_employee WHERE sal NOT BETWEEN 1000 AND 2000;


#空值查询
SELECT ename FROM t_employee WHERE sal IS NULL;

#非空查询
SELECT ename FROM t_employee WHERE sal IS NOT NULL;

#取反查询
SELECT ename FROM t_employee WHERE NOT sal IS NULL;

#集合内查询
SELECT ename FROM t_employee WHERE empno IN (7521,7782,7566,7788);

#集合外查询
SELECT ename FROM t_employee WHERE empno NOT IN (7521,7782,7566,7788);
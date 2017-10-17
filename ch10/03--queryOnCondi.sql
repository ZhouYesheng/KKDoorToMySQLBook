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

#集合内查询（NULL元素自动忽略）
SELECT ename FROM t_employee WHERE empno IN (7521,7782,7566,7788,NULL);

#集合外查询
SELECT ename FROM t_employee WHERE empno NOT IN (7521,7782,7566,7788);


#%模糊查询
SELECT ename FROM t_employee
	WHERE ename LIKE "A%";

#%模糊查询取反
SELECT ename FROM t_employee
	WHERE NOT ename LIKE "A%";


#_模糊查询
#查询名字的第二个字母是A的员工
SELECT ename FROM t_employee
	WHERE ename LIKE "_A%";


#模糊取反查询
SELECT ename FROM t_employee
	WHERE ename NOT LIKE "_A%";


#模糊所有
SELECT ename FROM t_employee
	WHERE ename LIKE "%%";












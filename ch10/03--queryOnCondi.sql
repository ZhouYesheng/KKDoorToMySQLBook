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


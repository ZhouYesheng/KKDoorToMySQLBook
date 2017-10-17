####
#条件查询
###


#单条件查询
SELECT ename FROM t_employee WHERE job="CLERK";

#多条件查询
SELECT ename FROM t_employee WHERE job="CLERK" && sal>800;
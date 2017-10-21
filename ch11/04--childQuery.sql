####
#子查询
###

#查询笛卡尔积的大小
SELECT COUNT(*) FROM t_dept,t_employee;

#单行单列子查询（作为主查询条件的参考值）
#查询比SMITH工资【子查询，员工表】
#高的所有员工【主查询，员工表】
SELECT * FROM t_employee
	WHERE sal >
		(SELECT sal FROM t_employee WHERE ename='SMITH');

#多行多列子查询【作为主查询的条件的参考值】
#查询和SMITH的工资、岗位【子查询，员工表】
#一样的所有员工【主查询，员工表】
SELECT ename,sal,job FROM t_employee
	WHERE (sal,job) =
		(SELECT sal,job FROM t_employee WHERE ename='SMITH');
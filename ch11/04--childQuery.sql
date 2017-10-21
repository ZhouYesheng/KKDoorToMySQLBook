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

#多行单列--IN（作为主查询范围的参考值）
#查询部门编号在部门表【子查询，部门表】中
#的所有员工【主查询，员工表】
SELECT * FROM t_employee
	WHERE deptno IN
		(SELECT deptno FROM t_dept);

#多行单列--NOT IN（作为主查询范围的参考值）
#查询部门编号不在部门表【子查询，部门表】中
#的所有员工【主查询，员工表】
SELECT * FROM t_employee
	WHERE deptno NOT IN
		(SELECT deptno FROM t_dept);

#子查询--ANY至少一个（作为主查询的条件参考）
#查询工资比至少一个经理【经理的工资，子查询，员工表】
#要高的所有员工【主查询，员工表】
SELECT ename,sal FROM t_employee
	WHERE sal>ANY
		(SELECT sal FROM t_employee WHERE job='MANAGER');

#子查询--ALL全部匹配(作为主查询的条件的参考范围)
#查询工资比所有经理【经理的工资，子查询，员工表】
#都要高的所有员工【主查询，员工表】
SELECT ename,sal FROM t_employee
	WHERE sal>ALL
		(SELECT sal FROM t_employee WHERE job='MANAGER');

#查询部门编号在部门表中的所有员工
SELECT * FROM t_employee a,t_dept c
	WHERE a.deptno=c.deptno;

#子查询——NOT EXISTES（不在子查询结果范围）
#查询没有员工【有员工的部门，员工表，部门表，编号相等】
#的部门的编号和名称【主查询，部门表】
SELECT deptno,dname FROM t_dept c
	WHERE NOT EXISTS
		(SELECT * FROM t_employee WHERE deptno=c.deptno);

#内连接实例
#查询员工表中的
#各部门【按部门分组】
#的部门号、部门名称、部门地址、雇员人数和平均工资【员工表，部门表，部门编号相等】
SELECT d.deptno,d.dname,d.loc,
	COUNT(e.ename) number,AVG(e.sal) avgSal
	FROM t_employee e INNER JOIN t_dept d
	ON e.deptno=d.deptno
	GROUP BY d.deptno DESC,d.dname,d.loc;

#多行多列子查询——作为主查询的临时表查询
#查询员工表中的
#各部门的部门号、雇员人数、平均工资【员工表，按分组统计】
#和部门名称、部门地址【员工表，部门表，部门编号相等】
SELECT d.deptno,d.dname,d.loc,number,avgSal
	FROM t_dept d
	INNER JOIN
		(
			SELECT deptno dno,COUNT(empno) number,AVG(sal) avgSal
			FROM t_employee GROUP BY deptno DESC
		) employee
	ON d.deptno=employee.dno;
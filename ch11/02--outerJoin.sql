####
#外连查询
###
#左外连查询
#查询员工姓名、职位【员工表】
#关联领导的名字【领导表，e.mgr=l.empno】
SELECT e.ename employeename,e.job,
	l.ename loadername
	FROM t_employee e
	LEFT JOIN t_employee l ON e.mgr=l.empno;

#右外连查询
#查询员工姓名、职位【员工表】
#关联部门的的名字和地址【部门表，部门编号相等】
SELECT e.ename employeename,e.job,
	d.dname,d.loc
	FROM t_employee e
	RIGHT JOIN t_dept d ON e.deptno=d.deptno;


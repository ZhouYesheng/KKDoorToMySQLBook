####
#内联查询
###


#查询员工姓名和岗位
SELECT e.ename employeename,
	e.job FROM t_employee e;

#自连接——查询员工的领导名
SELECT  e.ename employeename,
		e.job,
		l.ename loadername
	 FROM t_employee e
	 INNER JOIN t_employee l ON e.mgr=l.empno;

#自连接——查询员工的领导名(where形式)
SELECT  e.ename employeename,
		e.job,
		l.ename loadername
	 FROM t_employee e,t_employee l
	 WHERE e.mgr=l.empno;

#等值连接
#查询员工关联的部门
SELECT e.empno,e.ename,e.job,
		d.dname,d.loc
		FROM t_employee e INNER JOIN t_dept d
		ON e.deptno=d.deptno;
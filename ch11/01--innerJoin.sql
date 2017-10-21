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

#等值连接（where形式）
#查询员工关联的部门
SELECT e.empno,e.ename,e.job,
		d.dname,d.loc
		FROM t_employee e,t_dept d
		WHERE e.deptno=d.deptno;

#查询员工的编号、姓名、工资和职位
SELECT e.empno,ename employeename,e.sal,e.job
	FROM t_employee e;

#查询员工的编号、姓名、工资和职位、领导姓名
SELECT e.empno,e.ename employeename,e.sal,e.job,
	l.ename loadername
	FROM t_employee e INNER JOIN t_employee l
	ON e.mgr=l.empno;

#查询员工的编号、姓名、工资和职位、
#领导名
#部门信息
SELECT e.empno,e.ename employeename,e.sal,e.job,
	l.ename loadername,
	d.dname,d.loc
	FROM t_employee e
	INNER JOIN t_employee l ON e.mgr=l.empno
	INNER JOIN t_dept d ON l.deptno=d.deptno;

#查询员工的编号、姓名、工资和职位、
#领导名
#部门信息(WHERE形式)
SELECT e.empno,e.ename employeename,e.sal,e.job,
	l.ename loadername,
	d.dname,d.loc
	FROM t_employee e,t_employee l,t_dept d
	WHERE e.mgr=l.empno AND l.deptno=d.deptno;

#内连不等查询
#查询员工的姓名、职位
#编号大于自己的领导姓名（自连接）
SELECT e.ename employeename,e.job,
	l.ename loadername
	FROM t_employee e
	INNER JOIN t_employee l
	ON e.mgr=l.empno AND e.empno>l.empno;

#内连不等查询[WHERE形式]
#查询员工的姓名、职位
#编号大于自己的领导姓名（自连接）
SELECT e.ename employeename,e.job,
	l.ename loadername
	FROM t_employee e,t_employee l
	WHERE e.mgr=l.empno AND e.empno>l.empno;












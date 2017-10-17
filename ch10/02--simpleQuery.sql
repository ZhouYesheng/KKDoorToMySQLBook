####
#简单查询
###

#查询所有字段
SELECT * FROM t_employee;

#查询部分字段
SELECT empno,ename,sal FROM t_employee;

#包含重复的查询
SELECT job FROM t_employee;


#不重复查询
SELECT DISTINCT job FROM t_employee;


#乘法查询
SELECT  ename,sal*12 FROM t_employee;

#修改结果字段名
SELECT  ename,
	sal*12  AS yearsal
	FROM t_employee;

#格式化查询
SELECT CONCAT(ename,"的年薪为---->",sal*12) AS yearsal
	FROM t_employee;
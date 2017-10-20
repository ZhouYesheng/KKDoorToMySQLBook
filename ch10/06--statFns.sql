####
#统计函数
###



#查询总记录数
SELECT COUNT(*) FROM t_employee;

#查询符合条件的记录数
SELECT COUNT(comm) AS number FROM t_employee
	WHERE NOT comm=0;

#均值查询
SELECT AVG(comm) AS aver FROM t_employee;

SELECT AVG(comm) AS aver FROM t_employee
	WHERE NOT comm=0;


#求和查询
SELECT SUM(sal) AS allSals FROM t_employee
	WHERE NOT comm=0;

#极值查询
SELECT MAX(sal) AS maxSal,
	MIN(sal) AS minSal FROM t_employee;

#极值查询--忽略null
SELECT MAX(comm) AS maxComm,
	MIN(comm) AS minComm FROM t_employee;

#极值查询--附加条件
SELECT MAX(comm) AS maxComm,
	MIN(comm) AS minComm FROM t_employee
	WHERE NOT comm=0;

#无记录查询——count返回0
SELECT COUNT(*) FROM t_dept;

#无记录查询——非count都返回null
SELECT AVG(deptno) AS avgNo,
	SUM(deptno) AS sumNo,
	MAX(deptno) AS maxNo,
	MIN(deptno) AS minNO FROM t_dept;

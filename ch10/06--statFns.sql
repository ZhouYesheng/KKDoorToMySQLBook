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

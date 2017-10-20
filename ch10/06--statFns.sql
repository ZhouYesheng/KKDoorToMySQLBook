####
#统计函数
###



#查询总记录数
SELECT COUNT(*) FROM t_employee;

#查询符合条件的记录数
SELECT COUNT(comm) AS number FROM t_employee
	WHERE NOT comm=0;

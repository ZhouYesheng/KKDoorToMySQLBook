####
#限量查询
###

#不偏移限量查询
#结果多余限量
SELECT * FROM t_employee
	WHERE comm IS NULL LIMIT 2;

#不偏移限量查询
#结果少于限量
SELECT * FROM t_employee
	WHERE comm IS NULL LIMIT 11;

#限定初始位置查询
SELECT * FROM t_employee
	WHERE comm IS NULL
		ORDER BY Hiredate
			LIMIT 0,5;

#限定初始位置查询
SELECT * FROM t_employee
	WHERE comm IS NULL
		ORDER BY Hiredate
			LIMIT 5,5;
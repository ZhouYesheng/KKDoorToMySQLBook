####
#算数运算符
###

#算数运算符，直接操作数值
SELECT 6+4 加法,
	6-4 减法,
	6*4 乘法,
	6/4 除法,
	6 DIV 4 除法,
	6%4 求余,
	6 MOD 4 取模;

#算数运算符——操作字段
SELECT ename 雇员,sal 月工资,sal*12 年薪
	FROM t_employee;


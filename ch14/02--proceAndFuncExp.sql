####
#存储过程和函数的表达式
###

#创建和设置变量
DELIMITER $$
CREATE PROCEDURE  proce_vars()
	COMMENT '创建和设置变量'
BEGIN
	#声明变量
	#声明用于存储员工工资的变量,默认值1000
	DECLARE employee_sal INT DEFAULT 1000;

	#赋值变量
	SET employee_sal=3500;

	#查询结果赋值给变量
	SELECT sal INTO employee_sal
		FROM t_employee WHERE empno=7566;

	#查看变量值
	SELECT employee_sal;
END$$
DELIMITER ;
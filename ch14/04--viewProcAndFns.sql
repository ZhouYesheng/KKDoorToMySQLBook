####
#查看存储过程和函数
###
#查看存储过程
SHOW PROCEDURE STATUS proce_employee_sal;

#查看函数
SHOW FUNCTION STATUS func_employee_sal;

#通过系统表routines查看存储过程
SELECT * FROM routines
	WHERE SPECIFIC_NAME like 'proce%';

#查看过程创建定义
SHOW CREATE PROCEDURE proce_employee_sal;

#查看函数创建定义
SHOW CREATE FUNCTION func_employee_sal;
####
#创建存储过程和函数
###


#创建简单存储过程
#查询员工表的所有工资
DELIMITER $$
CREATE PROCEDURE  proce_employee_sal()
	COMMENT '查询所有雇员的工资'
BEGIN
	SELECT sal FROM t_employee;
END$$
DELIMITER ;

#创建简单函数
#查询指定工号雇员的工资的函数
DELIMITER $$
CREATE FUNCTION func_employee_sal(empno INT(11))
		RETURNS DOUBLE(10,2)
		COMMENT '查询某个雇员的工资'
BEGIN
	RETURN (SELECT sal FROM t_employee e WHERE e.empno=empno);
END$$
DELIMITER ;
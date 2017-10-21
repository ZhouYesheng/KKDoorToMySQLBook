####
#游标
###

#游标实例
DROP PROCEDURE IF EXISTS employee_count;
DELIMITER $$
CREATE PROCEDURE  employee_count(OUT NUMBER INTEGER)
	COMMENT '游标实例'
BEGIN
	#声明变量
	DECLARE employee_sal INTEGER;
	DECLARE flag INTEGER;
	DECLARE num INTEGER;

	#声明游标
	#声明指向雇员工资的游标
	DECLARE cursor_employee CURSOR FOR
		SELECT sal FROM t_employee;

	#声明未发现错误标记和处理器
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag=1;
	#设置结束标记
	SET flag=0;
	SET num=0;
	#打开游标
	OPEN cursor_employee;
	#遍历游标指向的结果集
	FETCH cursor_employee INTO employee_sal;
	WHILE flag<>1 DO
		IF employee_sal >999 THEN
			SET num=num+1;
		END IF;
		#抓取下一条记录
		FETCH cursor_employee INTO employee_sal;
	END WHILE
	#关闭游标
	CLOSE cursor_employee;
	SET NUMBER=num;
END$$
DELIMITER ;

#调用游标
CALL employee_count(@count);

#查询结果
SELECT @count;

#游标实例——loop遍历
DROP PROCEDURE IF EXISTS employee_count;
DELIMITER $$
CREATE PROCEDURE  employee_count(OUT num INTEGER)
	COMMENT '游标实例(lOOP遍历)'
BEGIN
	#声明变量
	DECLARE employee_sal INTEGER;
	DECLARE flag INTEGER;


	#声明游标
	#声明指向雇员工资的游标
	DECLARE cursor_employee CURSOR FOR
		SELECT sal FROM t_employee;

	#设置结束标记
	SET flag=0;
	SET num=0;
	#打开游标
	OPEN cursor_employee;
	#遍历游标指向的结果集
	FETCH cursor_employee INTO employee_sal;
	#开始LOOP循环
	loop_label:LOOP
		IF employee_sal >999 THEN
			SET num=num+1;
		END IF;
		#抓取下一条记录
		FETCH cursor_employee INTO employee_sal;
		#判断是否结束
		IF (flag=1) THEN
			LEAVE loop_label;
		END IF;
	END lOOP
	#关闭游标
	CLOSE cursor_employee;
END$$
DELIMITER ;


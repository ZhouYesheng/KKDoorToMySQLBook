####
#测试日期/时间数据类型
###

#创建日期/时间数据类型测试表
CREATE TABLE d_test(
	f_date DATE,
	f_datetime DATETIME,
	f_timestamp TIMESTAMP,
	f_time TIME,
	f_year YEAR
);

#使用SELECT查询日期/时间相关的api
SELECT CURDATE(),NOW(),NOW(),time(NOW()),YEAR(NOW()) \G

#插入测试数据
INSERT INTO d_test VALUE(CURDATE(),NOW(),NOW(),time(NOW()),YEAR(NOW()));

#查询插入的测试数据
SELECT * FROM d_test;
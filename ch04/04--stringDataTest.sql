####
#测试字符串型数据
###

#创建测试字符串类型数据的用户表user
#其最长允许20个字节的名字
CREATE TABLE user(
	id INT,
	name VARCHAR(20)
);

#插入3条名字长度不同的记录
INSERT INTO user VALUES(1,'bob'),
	(2,'petter'),
	(3,'a123456789123456789123');

#展示系统警告
SHOW WARNINGS;

#查询所有用户
SELECT * FROM user;
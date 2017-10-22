####
#test1表
###

#创建表test1
CREATE TABLE test_1(
	id INT,
	username VARCHAR(20)
) ENGINE=InnoDB;

#插入测试数据 test_1
INSERT INTO test_1 VALUES(1,'petter'),
	(2,'bob'),
	(3,'allen'),
	(4,'aron');

#查询test_1全部
SELECT * FROM test_1;
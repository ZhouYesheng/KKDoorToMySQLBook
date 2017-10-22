####
#事务控制
###

#开启事务
BEGIN;
	#更新记录
	UPDATE test_1 SET username='test2' WHERE id=1;
#提交事务
COMMIT;
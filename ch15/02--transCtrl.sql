####
#事务控制
###

#开启事务
BEGIN;
	#更新记录
	UPDATE test_1 SET username='test2' WHERE id=1;
#提交事务
COMMIT;

#开启事务
BEGIN;
#更新记录
UPDATE test_1 SET username='test4' WHERE id=1;
#不提交事务


#开启事务
BEGIN;
#更新记录
UPDATE test_1 SET username='test' WHERE id=1;
#不提交事务
#回滚事务
ROLLBACK;
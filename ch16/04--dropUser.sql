####
#删除用户
###

#DROP USER删除用户
DROP USER 'cjgong'@'localhost';

#删除用户表的指定记录删除用户
DELETE FROM user
	WHERE user='cjgong' AND host='localhost';

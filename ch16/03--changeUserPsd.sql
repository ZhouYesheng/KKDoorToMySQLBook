####
#修改普通用户密码
###

#通过Grant授权的方式修改普通用户密码
GRANT SELECT,CREATE,DROP ON *.*
	TO 'cjgong'@'localhost' IDENTIFIED BY '123456';


#SET命令修改普通用户密码
SET PASSWORD FOR 'cjgong'@'localhost'=PASSWORD("123456");

#更新用户表的指定记录修改普通用户密码
UPDATE user SET password=PASSWORD('123456')
	WHERE user='cjgong' AND Host='localhost';
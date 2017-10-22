####
#修改root密码
###
#mysqladmin命令修改root密码
mysqladmin -u root -p password '123456';

#set命令修改root密码
SET PASSWORD=PASSWORD('123456');

#更改用户表user的root记录修改密码
UPDATE user SET password=PASSWORD('123456')
	WHERE user='root' AND Host='localhost';
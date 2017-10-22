####
#创建用户
###

#创建用户
CREATE USER 'cjgong'@'localhost' IDENTIFIED BY '123456';

#插入用户表创建新用户
INSERT INTO user(Host,User)
	VALUES('localhost','kk');


#插入用户表创建新用户
INSERT INTO user(Host,User,ssl_cipher,x509_issuer,x509_subject)
	VALUES('localhost','cjgong1','','','');

#使用户账户生效
FLUSH PRIVILEGES;

#创建指定权限的用户
GRANT SELECT ON company.t_dept
	TO 'cjgong2'@'localhost'  IDENTIFIED BY '123456';
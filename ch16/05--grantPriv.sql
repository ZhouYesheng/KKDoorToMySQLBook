####
#授权管理
###

#授权给 cjgong 对所有库、表的查、该、删以及授权权限
GRANT SELECT,CREATE,DROP ON *.*
	TO 'cjgong'@'localhost' IDENTIFIED BY 'cjgong'
	WITH GRANT OPTION;

#查看 cjgong 的权限
SELECT host,user,select_priv,create_priv,drop_priv,grant_priv
	FROM mysql.user WHERE user='cjgong';

#查看 cjgong 拥有的权限
SHOW GRANTS FOR 'cjgong'@'localhost';

#收回权限
#收回用户 cjgong 的查询权限
REVOKE SELECT ON *.*
	FROM 'cjgong'@'localhost';

#收回用户 cjgong 的所有权限
REVOKE ALL PRIVILEGES,GRANT OPTION
	FROM 'cjgong'@'localhost';
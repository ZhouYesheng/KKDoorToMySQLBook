####
#逻辑运算符
###

#逻辑运算符—— &&，AND 与
SELECT 3 AND 4,
	0 AND 4,
	0 AND NULL,
	3 AND NULL,
	3 && 4,
	0 && 4,
	0 && NULL,
	3 && NULL;

#逻辑运算符—— ||，OR 与
SELECT 3 OR 4,
	0 OR 4,
	0 OR NULL,
	3 OR NULL,
	3 || 4,
	0 || 4,
	0 || 0,
	0 || NULL,
	3 || NULL;

#逻辑运算符—— !,NOT 非
SELECT NOT 3,
	NOT 0,
	NOT NULL,
	!3,
	!0,
	!NULL;

#逻辑运算符—— XOR 异或
SELECT 3  XOR 4,
	0 XOR 0,
	NULL XOR NULL,
	0 XOR 4,
	0 XOR NULL,
	3 XOR NULL;
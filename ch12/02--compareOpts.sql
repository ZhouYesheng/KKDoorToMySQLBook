####
#比较运算符
###


#常用比较运算符 =
SELECT 1=1 数值比较,
	'cjgong'='cjgong' 字符串比较,
	1+2=2+3 表达式比较,
	1<=>1 数值比较,
	'cjgong'<=>'cjgong' 字符串比较,
	1+2<=>3+3 表达式比较;

#比较= Vs <=>
SELECT NULL <=> NULL '<=>比较null',
	NULL=NULL '=比较null';

#比较运算符  <> vs !=
SELECT 1<>1 '比较数值',
	'cjgong'<>'cjgong' 字符串比较,
	1+2<>3+3 表达式比较,
	1!=1 数值比较,
	'cjgong'!='cjgong' 字符串比较,
	1+2!=3+3 比较表达式;

#比较运算符  >,>=,<,<=
SELECT 1>=1 '比较数值',
	'cjgong'>='cjgong' 字符串比较,
	1+2>=3+3 表达式比较,
	1>1 数值比较,
	'cjgong'<='cjgong' 字符串比较,
	1+2<3+3 比较表达式;


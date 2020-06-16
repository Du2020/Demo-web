<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>注册页面</title>
	</head>
	<body>
					<form action="register.action" method="post">
						<label>账号:</label>
						<input type="text" name="cellphone" placeholder="手机号或邮箱号" /><br>
						<label>密码:</label>
					     <input type="password" name="password" placeholder="密码" /><br>
						<input type="submit"  value="注册"/>
					</form>
	                <a src="Login.jsp">登录</a>
	</body>
</html>

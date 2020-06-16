<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>注册页面</title>
        <script src="https://cdn.staticfile.org/react/16.4.0/umd/react.development.js"></script>
        <script src="https://cdn.staticfile.org/react-dom/16.4.0/umd/react-dom.development.js"></script>
        <script src="https://cdn.staticfile.org/babel-standalone/6.26.0/babel.min.js"></script>
	</head>
	<body>
    <div>
        <div id="example"></div>
    </div>

    <script type="text/babel">
        class Use extends React.Component{
            render() {
                return <div>
                    <form action="register.action" method="post">
                        <label>账号:</label>
                        <input type="text" name="cellphone" placeholder="手机号或邮箱号"/>
                        <label>密码:</label>
                        <input type="password" name="password" placeholder="密码" />
                        <input type="submit"  value="注册"/>
                    </form>
                    <a href="Register.jsp">登录</a>
                </div>
            }
        }
        //在桌面上显示
        ReactDOM.render(
            <Use />,
            document.getElementById('example')
        );
    </script>
    </body>
</html>

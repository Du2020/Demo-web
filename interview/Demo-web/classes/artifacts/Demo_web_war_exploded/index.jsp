<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 杜强
  Date: 2020/6/14
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div>
        <table border="1">
            <c:forEach var="v" items="${UserLoginLogList}">
                <tr>
                    <td>${v.getLogin_id()}</td>
                    <td>${v.getUser_id()}</td>
                    <td>${v.getLogin_ip()}</td>
                    <td>${v.getLogin_time()}</td>
                </tr>
            </c:forEach>
        </table>
        <a href="Login.jsp">登录</a>
        <a href="Register.jsp">注册</a>
    </div>
</body>
</html>

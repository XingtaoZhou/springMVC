<%--
  Created by IntelliJ IDEA.
  User: 16325
  Date: 2020/9/26
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>SSM整合框架</title>
</head>
<body>
    <div align="center">
        <table>
            <tr>
                <td><a href="addStudent.jsp">注册学生</a></td>
            </tr>
            <tr>
                <td><a href="selectStudent.jsp">查询学生</a></td>
            </tr>
        </table>
    </div>
</body>
</html>

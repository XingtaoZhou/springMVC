<%--
  Created by IntelliJ IDEA.
  User: 16325
  Date: 2020/9/26
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>查询学生</title>
    <script type="text/javascript" src="js/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        $(function (){
            selectStudent();
            $("#btn").click(function (){
                selectStudent();
            })
        })
        function selectStudent(){
            $.ajax({
                url:"student/selectStudent.do",
                dataType:"json",
                method:"get",
                success:function (resp){
                    //清空原始数据
                    $("#tabId").html("");
                    $.each(resp,function (i,n){
                        $("#tabId").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.name+"</td>")
                            .append("<td>"+n.age+"</td>")
                            .append("</tr>")
                    })

                }
            })
        }


    </script>
</head>
<body>
    <div align="center">
        <table id="tabId">
            <tr>
                <td>学生ID</td>
                <td>学生姓名</td>
                <td>学生年龄</td>
            </tr>
        </table>
        <button id="btn">查询学生</button>
    </div>
</body>
</html>

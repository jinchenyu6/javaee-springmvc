
<%@ page import="java.util.List" %>
<%@ page import="org.example.spring.mvc.bean.StudentHomework" %>
<%@ page import="org.example.spring.mvc.jdbc.StudentHomeworkJdbc" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/3/3
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>My Homework</title>
  </head>
  <body>
  <table align="center" width="960" border="1"  cellpadding="1" cellspacing="1">
    <tr align="center" height="50" bgcolor="#faebd7">
      <td>ID</td>
      <td>学生学号</td>
      <td>作业编号</td>
      <td>作业标题</td>
      <td>作业内容</td>
      <td>创建时间</td>

    </tr>
    <%
      List<StudentHomework> list = (List<StudentHomework>) StudentHomeworkJdbc.selectAll();
      if(null == list || list.size()<=0){
        out.println("No data.");
      }else{
        for (StudentHomework sh : list){
    %>
    <tr align="center">
      <td><%=sh.getId()%></td>
      <td><%=sh.getStudentId()%></td>
      <td><%=sh.getHomeworkId()%></td>
      <td><%=sh.getHomeworkTitle()%></td>
      <td><%=sh.getHomeworkContent()%></td>
      <td><%=sh.getCreateTime()%></td>
    </tr>
    <%
        }
      }%>
  </table>
  </body>
</html>

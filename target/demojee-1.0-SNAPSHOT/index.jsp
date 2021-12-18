<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<style>
    table, th, td {
        border:1px solid black;
    }
</style>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
    <c:set var="name" value="123" scopr="request"/>
    <c:out value="${name}"/>
</h1>
<br/>
<a href="./login.jsp">Hello Servlet</a>

<table style="width:100%">
   <tr>
    <% for (String table: Arrays.asList("1","2","3") ) {%>
    <th><%=table%></th>
    <% }%>
   </tr>
    <tr>
        <% for (String table: Arrays.asList("雪人","瓦力","方董") ) {%>
        <th><%=table%></th>
        <% }%>
    </tr>
</table>


</body>
</html>
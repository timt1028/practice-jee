<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title a </title>
</head>

<%
    String key = (String) request.getAttribute("key");
%>

<script>
    alert('<%=key%>');
</script>

<body>
<a href="d.jsp">d</a>

</body>
</html>

<%@ page import="com.huanlin.Response" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<%
    Response rm = null;
    if(request.getAttribute("rm") != null){
        rm = (Response)request.getAttribute("rm");
    }
%>

<head>
    <title>My Login</title>
</head>
    <body>

    <%!String userid = "Tommey120112"; %>

     <h1><%= "Login Page!" %></h1>
    <br/>
     <% if(rm != null){%>
     <h2><%= rm.getRm()%></h2>
     <%
     }
     %>
   <form method="post" action="./hello">
userid:   <input id="userid" name="userid">
password: <input id="password" name="password">
       </br>
       <button name="login">login</button>
    </form>
   </body>
</html>
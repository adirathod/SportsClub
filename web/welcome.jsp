<%-- 
    Document   : welcome
    Created on : 6 Jul, 2018, 5:50:30 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String name=session.getAttribute("username").toString();
        
        %>
        <div style="float: right"><input type="submit" value="logout" class="btn btn-primary"></div>
       <div style="float: right"> <b>Welcome&nbsp;<%=name%></div>
    </body>
</html>

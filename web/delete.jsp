<%-- 
    Document   : delete
    Created on : 5 Jul, 2018, 5:52:07 PM
    Author     : root
--%>

<%@page import="com.universal.dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
      int id=Integer.parseInt(request.getParameter("deletekey"));
      boolean flag=UserDao.deleteUser(id);
      if(!flag){
          response.sendRedirect("admin.jsp");
      }
      %>
    </body>
</html>

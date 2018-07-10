<%-- 
    Document   : edit
    Created on : 5 Jul, 2018, 5:51:50 PM
    Author     : root
--%>

<%@page import="com.universal.dto.User"%>
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
         int id=Integer.parseInt(request.getParameter("editkey"));
    User user= UserDao.getUser(id);
     String name=user.getName();
     String username=user.getUsername();
     String password=user.getPassword();
     String city=user.getCity();
     int age=user.getAge();
     String gender=user.getGender();
     String phone=user.getPhone();
     String email=user.getEmail();
     %>
     <br>
     <br>
     <center>
      <form action="update" >
        <table>
             <tr>
                
                 <td><input type="text" name="id" value="<%=id%>" style="display: none"></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="<%=name%>"></td>
            </tr>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username" value="<%=username%>"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="text" name="password" value="<%=password%>"></td>
            </tr>
            <tr>
                <td>City:</td>
                   <td><input type="text" name="city" value="<%=city%>"></td>     
                </td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><input type="text" name="age" value="<%=age%>"></td>
            </tr>
            <tr>
                <td>Gender</td>
                 <td><input type="text" name="gender" value="<%=gender%>"></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><input type="text" name="phone" value="<%=phone%>"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" value="<%=email%>"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Update Record">
                    <input type="reset" value="Reset">
                </td>
            </tr>
            <br>
           
        </table>
            </form>
        </center>
     
     
    </body>
</html>

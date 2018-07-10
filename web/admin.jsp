<%-- 
    Document   : admin
    Created on : 5 Jul, 2018, 5:27:18 PM
    Author     : root
--%>

<%@page import="com.universal.dto.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.universal.dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery-3.3.1.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <link href="css/jquery.dataTables.min.css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            $(document).ready(function() {
    var table = $('#example').DataTable();
 
    $('#example tbody').on( 'click', 'tr', function () {
        $(this).toggleClass('selected');
    } );
 
    $('#button').click( function () {
        alert( table.rows('.selected').data().length +' row(s) selected' );
    } );
} );
        </script>
    </head>
    <body>
        <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>USERNAME</th>
                <th>PASSWORD</th>
                <th>CITY</th>
                <th>GENDER</th>
                <th>EMAIL</th>
                <th>PHONE</th>
                <th>AGE</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <%
        ArrayList<User> userList=UserDao.getUserListFromdatabase();
        for(User user:userList){
            int id=user.getId();
            out.print("<tr>");
            out.print("<td>"+id+"</td>");
            out.print("<td>"+user.getName()+"</td>");
            out.print("<td>"+user.getUsername()+"</td>");
            out.print("<td>"+user.getPassword()+"</td>");
            out.print("<td>"+user.getCity()+"</td>");
            out.print("<td>"+user.getGender()+"</td>");
            out.print("<td>"+user.getEmail()+"</td>");
            out.print("<td>"+user.getPhone()+"</td>");
            out.print("<td>"+user.getAge()+"</td>");            
            out.print("<td><a href=edit.jsp?editkey="+id+"><img src='images/edit.png'  width=30px height=30px ></a></td>" );
            out.print("<td><a href=delete.jsp?deletekey="+id+"><img src='images/delete.png' width=30px height=30px></a></td>");
            
            out.print("</tr>");
        }
        
        %>
        </tbody>
        </table>
        
        
        
    </body>
</html>

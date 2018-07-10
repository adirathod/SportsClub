/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.dao;

import com.universal.db.DBConnection;
import com.universal.dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author root
 */
public class UserDao {

    public static boolean addUserInDatabase(User user) {
        boolean flag=true;
        int age = user.getAge();
        String city = user.getCity();
        String email = user.getEmail();
        String gender = user.getGender();
        String password = user.getPassword();
        String username = user.getUsername();
        String phone = user.getPhone();
        String name = user.getName();
        Connection conn = DBConnection.getConnection();
    String sql="insert into user(name,username,password,city,gender,phone,email,age)values('"+name+"','"+username+"','"+password+"','"+city+"','"+gender+"','"+phone+"','"+email+"','"+age+"')";
   try{
    PreparedStatement ps = conn.prepareStatement(sql);
   flag=ps.execute();
   }
   catch(Exception e){
       e.printStackTrace();
   }
   return flag;
    }

    public static String isUserValid(String username, String password) {
String name=null;
        try{
    Connection conn = DBConnection.getConnection();
String sql="select username,password,name from user";
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(sql);
    while(rs.next()){
        String dbUsername = rs.getString("username");
        String dbPassword = rs.getString("password");
        
    if(username.equals(dbUsername) && password.equals(dbPassword)){     
  name = rs.getString("name");
    }
    
    }
}catch(Exception e){
    e.printStackTrace();
}
return name;

    }
    public static ArrayList<User> getUserListFromdatabase()
    {
        ArrayList<User> userList=new ArrayList();
        try{
    Connection conn = DBConnection.getConnection();
String sql="select * from user";
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(sql);
    while(rs.next()){
        String username = rs.getString("username");
        String password = rs.getString("password");
        String city = rs.getString("city");
        String gender = rs.getString("gender");
        String phone = rs.getString("phone");
        String email = rs.getString("email");
        String name = rs.getString("name");
        int age = rs.getInt("age");
        int id = rs.getInt("id");
        User user=new User();
        user.setId(id);
        user.setCity(city);
        user.setEmail(email);
        user.setGender(gender);
        user.setName(name);
        user.setPassword(password);
        user.setPhone(phone);
        user.setUsername(username);
        user.setAge(age);
        
        userList.add(user);
        
    }
           }
           catch(Exception e){
               e.printStackTrace();
           }
        return userList;
    }
    public static boolean deleteUser(int id){
        boolean flag=true;
        try{
    Connection conn = DBConnection.getConnection();
    String sql="delete from user where id="+id;
   
    PreparedStatement ps = conn.prepareStatement(sql);
    flag=ps.execute();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return flag;
            }
    
    
    public static User getUser(int id){
          User user=null;
        try{
    Connection conn = DBConnection.getConnection();
String sql="select * from user where id="+id;
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(sql);
    while(rs.next()){
        String username = rs.getString("username");
        String password = rs.getString("password");
        String city = rs.getString("city");
        String gender = rs.getString("gender");
        String phone = rs.getString("phone");
        String email = rs.getString("email");
        String name = rs.getString("name");
        int age = rs.getInt("age");
     
      user=new User();
        user.setId(id);
        user.setCity(city);
        user.setEmail(email);
        user.setGender(gender);
        user.setName(name);
        user.setPassword(password);
        user.setPhone(phone);
        user.setUsername(username);
        user.setAge(age);
        
      
        
    }
           }
           catch(Exception e){
               e.printStackTrace();
           }
        return user;
    }

    public static boolean updateRecord(User user) {
         boolean flag=true;
        try{
    Connection conn = DBConnection.getConnection();
        String sql="update user set name='"+user.getName()+"',username='"+user.getUsername()+"',password='"+user.getPassword()+"',city='"+user.getCity()+"',email='"+user.getEmail()+"',phone='"+user.getPhone()+"', gender='"+user.getGender()+"', age="+user.getAge()+" where id="+user.getId();
            System.out.println("=====================sssql>"+sql);
         PreparedStatement ps = conn.prepareStatement(sql);
    flag=ps.execute();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return flag;
            }
    }

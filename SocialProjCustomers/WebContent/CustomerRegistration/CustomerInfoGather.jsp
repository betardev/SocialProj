<%@ page import = "java.security.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "socproj.db.connection.UserManagement" %>
<%@ page import = "socproj.db.connection.UserInfo" %>
<%@ page import = "socproj.db.connection.DataBaseConnector" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
 
//Check if sent username exists or not;
UserManagement usernameDBCheck = new UserManagement();
String usernameInfo = request.getParameter("username");
String emailInfo = request.getParameter("email");
String passwordInfo = request.getParameter("password");
if(usernameDBCheck.getUserInfo(usernameInfo).getUserName() != null){
	out.print("Username already exists");
}
else out.print("Everything is fine");
 
 
 
 
 %>
   
    
</body>
</html>

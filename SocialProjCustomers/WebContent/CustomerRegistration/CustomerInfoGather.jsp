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
     UserInfo getUserInf = new UserInfo();
     getUserInf.setUserName(request.getParameter("username"));
     getUserInf.setEmail(request.getParameter("email"));
     getUserInf.setPassWord(request.getParameter("password"));
     getUserInf.setStatus(1);
     UserManagement pushToDB = new UserManagement();
     pushToDB.addNewUser(getUserInf);
    %>
</body>
</html>
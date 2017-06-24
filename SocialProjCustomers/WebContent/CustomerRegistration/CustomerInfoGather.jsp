<%@ page import = "java.security.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "org.json.simple.*" %>
<%@ page import = "socproj.db.connection.UserManagement" %>
<%@ page import = "socproj.db.connection.UserInfo" %>
<%@ page import = "socproj.db.connection.DataBaseConnector" %>
<%@ include file = "hashPassword.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
UserManagement usernameDBCheck = new UserManagement();
String usernameInfo = request.getParameter("username");
String emailInfo = request.getParameter("email");
String passwordInfo = request.getParameter("password");
JSONObject returnData = new JSONObject();
passwordInfo = returnHashPass(passwordInfo);
PrintWriter dataOut = response.getWriter();
if(usernameDBCheck.getUserInfo(usernameInfo).getUserName() != null){
	returnData.put("isProblem", "true");
}
else{
	UserManagement pushUsrDB = new UserManagement();
	UserInfo setUserInf = new UserInfo();
	setUserInf.setStatus(1);
	setUserInf.setEmail(emailInfo);
	setUserInf.setUserName(usernameInfo);
	setUserInf.setPassWord(passwordInfo);
	pushUsrDB.addNewUser(setUserInf);
	returnData.put("isProblem", "false");
}

dataOut.println(returnData);
%>

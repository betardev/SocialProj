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
UserManagement loginInfCheck = new UserManagement();
String loginInf = request.getParameter("loginInf");
String passwordInf = returnHashPass(request.getParameter("password"));
UserInfo checkInDB = new UserInfo();
JSONObject returnData = new JSONObject();
PrintWriter dataOut = response.getWriter();
checkInDB = loginInfCheck.getUserInfoByUsername(loginInf); 
if(checkInDB == null){
	checkInDB = loginInfCheck.getUserInfoByEmail(loginInf);
}
else{
	if(passwordInf.equals(checkInDB.getPassWord())){
		returnData.put("loginSuccess",checkInDB.getUserId());
	}
	else{
		returnData.put("loginProblem","wrongPassword");
	}
}

if(checkInDB == null){
	returnData.put("loginProblem","noUser");
}
else{
	if(passwordInf.equals(checkInDB.getPassWord())){
		returnData.put("loginSuccess",checkInDB.getUserId());
	}
	else{
		returnData.put("loginProblem","wrongPassword");
	}
}
System.out.println(returnData.toString());
dataOut.println(returnData);
%>    

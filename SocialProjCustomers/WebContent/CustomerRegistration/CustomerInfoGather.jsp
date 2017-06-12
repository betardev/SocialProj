<%@ page import = "java.security.*" %>
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
		String passSec = request.getParameter("password");
		MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
		mdAlgorithm.update(passSec.getBytes());
		byte[] digest = mdAlgorithm.digest();
		StringBuffer hexString = new StringBuffer();

		for (int i = 0; i < digest.length; i++) {
	    	passSec = Integer.toHexString(0xFF & digest[i]);

	    if (passSec.length() < 2) {
	    	passSec = "0" + passSec;
	    }

	   	 	hexString.append(passSec);
		}
    
    
    
     	UserInfo getUserInf = new UserInfo();
     	getUserInf.setUserName(request.getParameter("username"));
     	getUserInf.setEmail(request.getParameter("email"));
     	getUserInf.setPassWord(passSec);
     	getUserInf.setStatus(1);
     	UserManagement pushToDB = new UserManagement();
     	pushToDB.addNewUser(getUserInf);
    %>
</body>
</html>
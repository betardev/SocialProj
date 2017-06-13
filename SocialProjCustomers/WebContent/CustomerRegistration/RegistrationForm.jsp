<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
     <%@ include file="RegistrationFormCss.css"%>
</style>

</head>
<body bgcolor = "#f4b642">
<div align="center">
<p> Registration </p>
<form name = "registerForm" action = "CustomerInfoGather.jsp">
 <table>
  <tr> 
   <td> <input name = "username" type = "text" placeholder = "Username.."/>  </td>
  </tr>
  <tr> 
   <td> <input name = "email" type = "text" placeholder = "email.."/>  </td>
  </tr>
  <tr> 
   <td> <input type = "password" name = "password" placeholder = "password.."/>  </td>
  </tr>
  <tr> 
   <td> <input type = "password" name = "cnfpassword" placeholder = "confirm password.."/>  </td>
  </tr>
  <tr>
  <td>
   <input type = "submit" name = "submitinfobtn" value = "Confirm">
   </td>
  </tr>
 </table>
</form>
</div>

</body>
</html>
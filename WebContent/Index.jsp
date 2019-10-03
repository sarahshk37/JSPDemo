<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
form {
  border: 3px solid #f1f1f1;
}
body {
	font-family: Arial, Helvetica, sans-serif;
}
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
input[type=submit] {
  background-color: #FF065D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;  
}
</style>
</head>
<body>
<h1>Welcome</h1>

<form action="LoginServlet" method="post">
<label>User Id</label>
<input type="text" name="userid" >
<label>Password</label>
<input type="password" name="password" >
<input type="submit" value="Login" >



</form>

<a href="inputs/EmpInput.jsp">Emp Input</a><br/>
<a href="include/includejsp.jsp">Emp Input</a>

<%Connection conn=(Connection)getServletContext().getAttribute("conn"); %>
<%=conn %>
</body>
</html>
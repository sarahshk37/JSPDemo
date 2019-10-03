<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<form action="Output.jsp" method="post">
<label>Enter Id</label>
<input type="text" name="id">
<label>Enter Name</label>
<input type="text" name="name">
<label>Enter Salary</label>
<input type="text" name="salary">

<input type="submit" value="submit">

</form>



</body>
</html>
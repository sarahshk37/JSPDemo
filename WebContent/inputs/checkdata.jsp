<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

Displaying Emp Details:

<jsp:useBean id="emp" class="com.ltil.model.Employee"  scope="application"></jsp:useBean>

Id: <jsp:getProperty property="id" name="emp"/>
Name: <jsp:getProperty property="name" name="emp"/>
Salary: <jsp:getProperty property="salary" name="emp"/>

</body>
</html>
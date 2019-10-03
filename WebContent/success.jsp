<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.ltil.model.User" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div{
background-color: #FF065D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  }
</style>
</head>
<body>

<div><h1>Welcome <%User user=(User) session.getAttribute("user");%>
<%=user.getUserid() %></h1>
</div>
</body>
</html>
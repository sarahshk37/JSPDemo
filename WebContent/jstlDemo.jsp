<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #FF065D;
  color: white;
}
</style>
</head>
<body>

	<c:forEach var="i" begin="1" step="10" end="101">
	<c:out value="${i}"></c:out>
	</c:forEach>
	
	<sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" user="HR" 
	password="hr" url="jdbc:oracle:thin:@localhost:1521:xe" var="ds" ></sql:setDataSource>
	
	<c:set var="query" value="select first_name, last_name, salary from employees where salary>5000">
	</c:set>
		
	<sql:query sql="${ query}" dataSource="${ ds}" var="result"></sql:query>
	<table id="customers">
	<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Salary</th>
	</tr>
	<c:forEach var="row" items="${ result.rows}"  >
	<tr>
		<td><c:out value="${ row.first_name}"></c:out></td>
		<td><c:out value="${ row.last_name}"></c:out></td>
		<td><c:out value="${ row.salary}"></c:out></td>
	</tr>	
	</c:forEach>
	</table>

</body>
</html>
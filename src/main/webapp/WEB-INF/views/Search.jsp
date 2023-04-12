<%@page import="com.jspiders.springmvc.pojo.EmployeePOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="NavBar.jsp"/>
<%
String msg =(String)request.getAttribute("msg");
EmployeePOJO employee=(EmployeePOJO)request.getAttribute("emp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>
<style type="text/css">
	form {
		margin-top: 10px;
	}
	form table {
		margin: auto;
		width: 100%;
	}
	tr {
		text-align: center;
	}
	fieldset table {
		margin: auto;
		text-align: left;
	}
	fieldset {
		margin: 15px 520px;
		text-align: center;
	}
	legend {
		color: white;
		background-color: #333;
	}
	body {
		background-image:
			url('https://www.xmple.com/wallpaper/linear-blue-white-highlight-gradient-1920x1080-c2-ffffff-e0ffff-l-50-a-165-f-21.svg');
		background-size: 100%;
	}
	#data {
		background-color: white;
		border: 1px solid black;
		width: 100%;
		border: 1px solid black;
	}
	#data td {
		border: 1px solid black;
		text-align: center;
	}
</style>
</head>
<body>
	<div align="center">
		<form action="./search" method="post">
			<fieldset>
				<legend>:::Search Employee:::</legend>
				<table>
					<tr>
						<td>Enter ID</td>
						<td><input type="text" name="id"></td>
					</tr>
				</table>
			</fieldset>
			<input type="submit" value="Search">
		</form>
		<%
		if (msg != null) {
		%>
		<h3><%=msg%>
		</h3>
		<%
		}
		%>
		<%
		if (employee != null) {
		%>
		<table id="data">
			<thead>
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>Email</td>
					<td>Contact</td>
					<td>Designation</td>
					<td>Salary</td>
				</tr>
			</thead>
			<tr>
				<td><%=employee.getId()%></td>
				<td><%=employee.getName()%></td>
				<td><%=employee.getEmail()%></td>
				<td><%=employee.getContact()%></td>
				<td><%=employee.getDesignation()%></td>
				<td><%=employee.getSalary()%></td>
			</tr>
		</table>
	</div>
	<%
	}
	%>
	
</body>
</html>
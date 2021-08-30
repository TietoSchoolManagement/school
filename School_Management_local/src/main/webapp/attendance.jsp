<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@page import="java.util.ArrayList"%>
	<%@page import="data.student"%>
	<%ArrayList studentData = (ArrayList)request.getAttribute("studentData"); %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Attendance</title>
</head>
<body>

<%if(session.getAttribute("id")==null) {
	response.sendRedirect("teacher_login.jsp");
}%>

<%@include file="teacherHeader.jsp" %>
	
	<table class="table">
<tr>
<th>ID</th>
<th>Name</th>

<th>Update Attendance</th>

 </tr>
 
<% for(int i = 0; i < studentData.size();i++){ %>
	
	<% student st=(student)studentData.get(i); %>
<tr>
<td><%= st.getID() %></td>
<td><%= st.getName() %></td>

<td><form action="saveattendance" method="post">
 <select class="dropdown my-2" name="mark" id="mark">
						    <option value="p">Present</option>
						    <option value="a">Absent</option>
</select>
	<input type="hidden" name="id" value="<%= st.getID() %>">
	
	<button class="btn btn-sm btn-success">Save</button>
</form></td>
 </tr>
 <%} %>
</table>
	
	
<%@include file="footer.html" %>
</body>
</html>
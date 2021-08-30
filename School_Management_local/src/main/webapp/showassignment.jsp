<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.util.ArrayList"%>
	<%@page import="data.assignmentData"%>
	<%ArrayList assignmentData = (ArrayList)request.getAttribute("assignmentData"); %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Assignment</title>
</head>
<body>
<%if(session.getAttribute("s_id")==null) {
	response.sendRedirect("student_login.jsp");
}%>

<%@include file="studentHeader.html" %> 



<div class="container">

<hr>
<table class="table">
<tr>
	
	<th>Subject Name</th>
	<th>Teacher Name</th>
	<th>Assignment Questions</th>
	<th>Start Time</th>
	<th>End Time</th>
</tr>

<% for(int i = 0; i < assignmentData.size();i++){ %>
	
	<% assignmentData sub=(assignmentData)assignmentData.get(i); %>
	<tr>
	
	<td><%= sub.getSubject_name() %></td>
	<td><%= sub.getName() %></td>
	<td><%= sub.getAssignment_text() %></td>
	<td><%= sub.getStart_date() %></td>
	<td><%= sub.getEnd_date() %></td>
	
	
	</tr>
<%} %>
</table>
</div>

<%@include file="footer.html" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
	<%@page import="data.subject"%>
	<%ArrayList subjectData = (ArrayList)request.getAttribute("subjectData"); %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Student Shedule</title>
</head>
<body>
<%if(session.getAttribute("s_id")==null) {
	response.sendRedirect("student_login.jsp");
}%>

<%@include file="studentHeader.html" %>


<div class="container">
<h3>Monday</h3>
<hr>
<table class="table">
<tr>
	
	<th>Subject Name</th>
	<th>Teacher Name</th>
	<th>Start Time</th>
	<th>End Time</th>
</tr>

<% for(int i = 0; i < subjectData.size();i++){ %>
	
	<% subject sub=(subject)subjectData.get(i); %>
	<tr>
	<% if(sub.getDay().equals("monday")){ %>
	<td><%= sub.getSubject_name() %></td>
	<td><%= sub.getName() %></td>
	<td><%= sub.getStart_time() %></td>
	<td><%= sub.getEnd_time() %></td>
	<%} %>
	</tr>
<%} %>
</table>
</div>




<div class="container">
<h3>Tuesday</h3>
<hr>
<table class="table">
<tr>
	
	<th>Subject Name</th>
	<th>Teacher Name</th>
	<th>Start Time</th>
	<th>End Time</th>
</tr>

<% for(int i = 0; i < subjectData.size();i++){ %>
	
	<% subject sub=(subject)subjectData.get(i); %>
	<tr>
	<% if(sub.getDay().equals("tuesday")){ %>
	<td><%= sub.getSubject_name() %></td>
	<td><%= sub.getName() %></td>
	<td><%= sub.getStart_time() %></td>
	<td><%= sub.getEnd_time() %></td>
	<%} %>
	</tr>
<%} %>
</table>
</div>

<div class="container">
<h3>Wednesday</h3>
<hr>
<table class="table">
<tr>
	
	<th>Subject Name</th>
	<th>Teacher Name</th>
	<th>Start Time</th>
	<th>End Time</th>
</tr>

<% for(int i = 0; i < subjectData.size();i++){ %>
	
	<% subject sub=(subject)subjectData.get(i); %>
	<tr>
	<% if(sub.getDay().equals("wednesday")){ %>
	<td><%= sub.getSubject_name() %></td>
	<td><%= sub.getName() %></td>
	<td><%= sub.getStart_time() %></td>
	<td><%= sub.getEnd_time() %></td>
	<%} %>
	</tr>
<%} %>
</table>
</div>


<div class="container">
<h3>Thursday</h3>
<hr>
<table class="table">
<tr>
	
	<th>Subject Name</th>
	<th>Teacher Name</th>
	<th>Start Time</th>
	<th>End Time</th>
</tr>

<% for(int i = 0; i < subjectData.size();i++){ %>
	
	<% subject sub=(subject)subjectData.get(i); %>
	<tr>
	<% if(sub.getDay().equals("thursday")){ %>
	<td><%= sub.getSubject_name() %></td>
	<td><%= sub.getName() %></td>
	<td><%= sub.getStart_time() %></td>
	<td><%= sub.getEnd_time() %></td>
	<%} %>
	</tr>
<%} %>
</table>
</div>



<div class="container">
<h3>Friday</h3>
<hr>
<table class="table">
<tr>
	
	<th>Subject Name</th>
	<th>Teacher Name</th>
	<th>Start Time</th>
	<th>End Time</th>
</tr>

<% for(int i = 0; i < subjectData.size();i++){ %>
	
	<% subject sub=(subject)subjectData.get(i); %>
	<tr>
	<% if(sub.getDay().equals("friday")){ %>
	<td><%= sub.getSubject_name() %></td>
	<td><%= sub.getName() %></td>
	<td><%= sub.getStart_time() %></td>
	<td><%= sub.getEnd_time() %></td>
	<%} %>
	</tr>
<%} %>
</table>
</div>


<%@include file="footer.html" %>
</body>
</html>
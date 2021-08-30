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
<title>Insert title here</title>
</head>
<body>
<%if(session.getAttribute("id")==null) {
	response.sendRedirect("admin_login.jsp");
}%>

<%@include file="adminheader.html" %>

<table class="table">
<tr>
<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Address</th>
<th>Date Of Birth</th>
<th>Mobile</th>
<th>Nationality</th>
<th>Religion</th>
<th>Cast</th>
<th>Class</th>
<th>Registration Date</th>
<th>Status</th>

  <th>Update Status</th>

 </tr>
 
<% for(int i = 0; i < studentData.size();i++){ %>
	
	<% student st=(student)studentData.get(i); %>
<tr>
<td><%= st.getID() %></td>
<td><%= st.getName() %></td>
<td><%= st.getGender() %></td>
<td><%= st.getAddress() %></td>
<td><%= st.getDob() %></td>
<td><%= st.getMobile() %></td>
<td><%= st.getNationality() %></td>
<td><%= st.getReligion() %></td>
<td><%= st.getCast() %></td>
<td><%= st.getStd() %></td>
<td><%= st.getRegistration_date() %></td>
<td><%= st.getStatus() %></td>
<% if(st.getStatus().equals("inactive")){ %>
  <td>
  <form action="update" method="post">
  	<input type="hidden" value="<%= st.getID() %>" name="id" >
  	<button type="submit"  class="btn btn-sm btn-success">Active</button>
  </form>
  </td>
<%} %>
 </tr>
 <%} %>
</table>


<%@include file="footer.html" %>
</body>
</html>
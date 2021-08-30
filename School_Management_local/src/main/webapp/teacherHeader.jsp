<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Teacher Portal</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="teacher.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="teacherProfile.jsp">Profile</a>
        </li>
         <li class="nav-item">
         <form action="teachertimetable" method="post">
<input type="hidden" value="${id}" name="id">
<button type="submit" class="btn ">Show TimeTable</button>
</form>
        </li>

          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="addAssignment.jsp">Add Assignment</a>
        </li>
         <li class="nav-item">
            <form action="AddAttendance" method="post">
			<input type="hidden" value="${std}" name="std">
			<button type="submit" class="btn ">Attendance</button>
			</form>
        </li>
  
          
      
      </ul>
		   <ul class="nav justify-content-end">
		  <li class="nav-item">
		    <form action="teacherlogout" method="get">
		    	<button type="submit" class="btn btn-primary" value="logout">Logout</button>
		    </form>
		  </li>
		  </ul>
    </div>
  </div>
</nav>
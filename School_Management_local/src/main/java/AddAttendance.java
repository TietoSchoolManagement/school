import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.student;

public class AddAttendance extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException
	{
		ArrayList<student> stud = new ArrayList<student>();
		
		int std=Integer.parseInt(request.getParameter("std"));
		OracleConnection orcl = new OracleConnection();
		Connection con = orcl.connect();
		String query= "select ID, NAME from student where class=? and id not in (select student_id from attendance where attendance_date like sysdate)";
		try {
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setInt(1, std);
			ResultSet res1 = pstmt.executeQuery();
			while(res1.next()){
				student st=new student();
				st.setID(res1.getInt(1));
				st.setName(res1.getString(2));
				stud.add(st);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("studentData", stud);
		RequestDispatcher rd= request.getRequestDispatcher("attendance.jsp");
		rd.forward(request, response);
		
	}

}

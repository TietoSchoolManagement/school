import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addAssignment extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");  
		OracleConnection orcl = new OracleConnection();
		Connection con = orcl.connect();
		int teacher_id = Integer.parseInt(request.getParameter("id"));
		int std=Integer.parseInt(request.getParameter("std"));
		int subject_id=Integer.parseInt(request.getParameter("subject"));
		String end_date=request.getParameter("end_date");
		String text =request.getParameter("text");
		
		if(std==5)
		{
			subject_id=subject_id+50;
		}else if(std==6)
		{
			subject_id=subject_id+60;
		}else if(std==7)
		{
			subject_id=subject_id+70;
		}else if(std==8)
		{
			subject_id=subject_id+80;
		}else if(std==9)
		{
			subject_id=subject_id+90;
		}else if(std==10)
		{
			subject_id=subject_id+100;
		}
		
		String query = "insert into assignment (TEACHER_ID ,SUBJECT_ID,END_DATE,ASSIGNMENT_TEXT,STD) values(?,?,?,?,?)";
		try {
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setInt(1, teacher_id);
			pstmt.setInt(2, subject_id);
			pstmt.setString(3, end_date);
			pstmt.setString(4, text);
			pstmt.setInt(5, std);
			int i=pstmt.executeUpdate();
			 request.getRequestDispatcher("teacher.jsp").include(request, response);  
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

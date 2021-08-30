import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SaveAttendance extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		OracleConnection orcl = new OracleConnection();
		
		 int id = Integer.parseInt(request.getParameter("id"));
		 String mark =request.getParameter("mark");
		 response.setContentType("text/html");  
		 Connection con = orcl.connect();
		 String query = "insert into attendance (student_id,mark) values(?,?)";
		 try {
			PreparedStatement pstmt= con.prepareStatement(query);
			pstmt.setInt(1, id);
			pstmt.setString(2, mark);
			int i=pstmt.executeUpdate();
			if(i==1)
			{
				
	            request.getRequestDispatcher("teacher.jsp").include(request, response);  
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

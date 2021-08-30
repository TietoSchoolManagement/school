import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Update extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		OracleConnection orcl = new OracleConnection();
		 String status="active";
		 int id = Integer.parseInt(request.getParameter("id"));
		 response.setContentType("text/html");  
		 Connection con = orcl.connect();
		 String query = "update student set status = ? where id=?";
		 try {
			PreparedStatement pstmt= con.prepareStatement(query);
			pstmt.setString(1, status);
			pstmt.setInt(2, id);
			int i=pstmt.executeUpdate();
			if(i==1)
			{
				
	            request.getRequestDispatcher("search.jsp").include(request, response);  
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

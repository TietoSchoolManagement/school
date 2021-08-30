import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLogin extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		PrintWriter ps = response.getWriter();
		OracleConnection orcl = new OracleConnection();
		Connection con = orcl.connect();
		 response.setContentType("text/html");  
		String userName = request.getParameter("userid");
		String password = request.getParameter("password");
		String query="select id from admin_user_details where username=? AND pass=?";
		
		try {
			
			PreparedStatement pstmt =con.prepareStatement(query);
			pstmt.setString(1, userName);
			pstmt.setString(2, password);
			ResultSet res= pstmt.executeQuery();
			if(res.next())
			{
				int id = res.getInt(1);
				 HttpSession session=request.getSession();  
			        session.setAttribute("id",id);
			        response.sendRedirect("Admin.jsp");
			}
			else
			{
					ps.print("Sorry, username or password error!");  
		            request.getRequestDispatcher("admin_login.jsp").include(request, response);  
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}

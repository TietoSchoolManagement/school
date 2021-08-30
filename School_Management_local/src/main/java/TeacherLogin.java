import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TeacherLogin extends HttpServlet {
	public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException {
		PrintWriter ps = response.getWriter();
		OracleConnection orcl = new OracleConnection();
		Connection con = orcl.connect();
		 response.setContentType("text/html");  
		Long userName = Long.parseLong(request.getParameter("userid")) ;
		String password = request.getParameter("password");
		String query="select teacher_id, name ,mobile,address,education,hiredate from teacher where mobile=? AND password=?";
		String query1 ="select std from classteacher where teacher_id=?";
		
		try {
			
			PreparedStatement pstmt =con.prepareStatement(query);
			pstmt.setLong(1, userName);
			pstmt.setString(2, password);
			ResultSet res= pstmt.executeQuery();
			if(res.next())
			{
				PreparedStatement pstmt1 =con.prepareStatement(query1);
				pstmt1.setInt(1, res.getInt(1));
				ResultSet res1 = pstmt1.executeQuery();
				if(res1.next())
				{
					int id = res.getInt(1);
					 HttpSession session=request.getSession();  
				        session.setAttribute("id",id);
				        getServletContext().setAttribute("name", res.getString(2));
				        getServletContext().setAttribute("mobile", res.getString(3));
				        getServletContext().setAttribute("address", res.getString(4));
				        getServletContext().setAttribute("education", res.getString(5));
				        getServletContext().setAttribute("hiredate", res.getString(6));
				        getServletContext().setAttribute("std", res1.getInt(1));
				       
				        response.sendRedirect("teacher.jsp");
					
				}
				else
				{
					int id = res.getInt(1);
					 HttpSession session=request.getSession();  
				        session.setAttribute("id",id);
				        getServletContext().setAttribute("name", res.getString(2));
				        getServletContext().setAttribute("mobile", res.getString(3));
				        getServletContext().setAttribute("address", res.getString(4));
				        getServletContext().setAttribute("education", res.getString(5));
				        getServletContext().setAttribute("hiredate", res.getString(6));
				        getServletContext().setAttribute("std", "Your not class teacher of any class");
				       
				        response.sendRedirect("teacher.jsp");
				}
			
			}
			else
			{
					ps.print("Sorry, username or password error!");  
		            request.getRequestDispatcher("teacher_login.jsp").include(request, response);  
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

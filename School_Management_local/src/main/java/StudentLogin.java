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

public class StudentLogin extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException
	{
		 response.setContentType("text/html"); 
		 PrintWriter ps = response.getWriter();
		 long mobile = Long.parseLong(request.getParameter("mobile"));
		 String password = request.getParameter("password");
		 OracleConnection orcl=new OracleConnection();
		 Connection con=orcl.connect();
		 String query1="select name,mobile from teacher t,classteacher c where t.teacher_id=c.teacher_id and std=?";
		 String query = "select ID,NAME, GENDER, ADDRESS, DOB, MOBILE,  NATIONALITY, RELIGION, CAST, REGISTRATION_DATE, CLASS,status from student where mobile=? AND password=?";
		 try {
			PreparedStatement pstmt=con.prepareStatement(query);
			
			pstmt.setLong(1, mobile);
			pstmt.setString(2, password);
			ResultSet res= pstmt.executeQuery();
			if(res.next())
			{
				if(res.getString(12).equals("inactive"))
				{
					
					ps.print("Your admission not yet approved please contact admin!!!");
					 request.getRequestDispatcher("student_login.jsp").include(request, response);  
				}
				else
				{
					PreparedStatement pstmt1=con.prepareStatement(query1);
					pstmt1.setInt(1, res.getInt(11));
					ResultSet res1=pstmt1.executeQuery();
						if(res1.next()) {
							
							 HttpSession session=request.getSession();  
						        session.setAttribute("s_id",res.getInt(1));
						        getServletContext().setAttribute("name", res.getString(2));
						        getServletContext().setAttribute("mobile", res.getString(6));
						        getServletContext().setAttribute("address", res.getString(4));
						        getServletContext().setAttribute("dob", res.getString(5));
						        getServletContext().setAttribute("std", res.getInt(11));
						        getServletContext().setAttribute("status", res.getString(12));
						        getServletContext().setAttribute("classteacher", res1.getString(1));
						        getServletContext().setAttribute("tmobile", res1.getString(2));
						        response.sendRedirect("student.jsp");
							
						}
						else
						{
							 HttpSession session=request.getSession();  
						        session.setAttribute("s_id",res.getInt(1));
						        getServletContext().setAttribute("name", res.getString(2));
						        getServletContext().setAttribute("mobile", res.getString(6));
						        getServletContext().setAttribute("address", res.getString(4));
						        getServletContext().setAttribute("dob", res.getString(5));
						        getServletContext().setAttribute("std", res.getInt(11));
						        getServletContext().setAttribute("status", res.getString(12));
						        getServletContext().setAttribute("classteacher", "Not Yet Assigned");
						        getServletContext().setAttribute("tmobile", " ");
						        response.sendRedirect("student.jsp");
							
						}
					
					
				}
			}
			else
			{
				ps.print("Wrong userid or password!!!");
				 request.getRequestDispatcher("student_login.jsp").include(request, response);  
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}
}

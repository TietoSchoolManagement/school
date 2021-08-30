import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddTeacher extends HttpServlet{
	public void doPost(HttpServletRequest request ,HttpServletResponse response) throws IOException, ServletException
	{
		PrintWriter ps=response.getWriter();
		
	
		response.setContentType("text/html");  
		String name = request.getParameter("name");
		long mobile = Long.parseLong(request.getParameter("mobile"));
		String hiredate = request.getParameter("hiredate");
		String address = request.getParameter("address");
		String education = request.getParameter("degree");
		long sal = Long.parseLong(request.getParameter("sal"));
		String query="insert into teacher ( NAME,MOBILE,ADDRESS,education,hiredate,sal) values(?,?,?,?,?,?)";
		OracleConnection orcl = new OracleConnection();
		Connection con=orcl.connect();
		try {
			PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setString(1, name);
				
				pstmt.setLong(2, mobile);
				pstmt.setString(3, address);
				pstmt.setString(4, education);
				pstmt.setString(5, hiredate);
			
				pstmt.setLong(6, sal);
				
				pstmt.executeUpdate();
				ps.print("Teacher Added successfully!!");
				 request.getRequestDispatcher("AddTeacher.jsp").include(request, response);  
				con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			ps.print("Mobile number already registered please try with different mobile !!!");
			 request.getRequestDispatcher("AddTeacher.jsp").include(request, response);  
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

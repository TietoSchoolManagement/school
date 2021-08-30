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


public class StudentRegistration extends HttpServlet{
	public void doPost(HttpServletRequest request ,HttpServletResponse response) throws IOException, ServletException
	{
		PrintWriter ps=response.getWriter();
		DateTimeFormatter dtf =DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now=LocalDateTime.now();
		String regDate=dtf.format(now);
		response.setContentType("text/html");  
		String name = request.getParameter("name");
		long mobile = Long.parseLong(request.getParameter("mobile"));
		String dob = request.getParameter("dob");
		String gender=request.getParameter("gender");
		int std=Integer.parseInt(request.getParameter("std"));
		String nat = request.getParameter("nat");
		String rel = request.getParameter("rel");
		String cast = request.getParameter("cast");
		String pass = request.getParameter("pass");
		String address = request.getParameter("address");
		String query="insert into student ( NAME,GENDER,ADDRESS,DOB,MOBILE,NATIONALITY,RELIGION,CAST,REGISTRATION_DATE,CLASS,PASSWORD) values(?,?,?,?,?,?,?,?,?,?,?)";
		OracleConnection orcl = new OracleConnection();
		Connection con=orcl.connect();
		try {
			PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setString(1, name);
				
				pstmt.setString(2, gender);
				pstmt.setString(3, address);
				pstmt.setString(4, dob);
				pstmt.setLong(5, mobile);
				pstmt.setString(6, nat);
				pstmt.setString(7, rel);
				pstmt.setString(8, cast);
				pstmt.setString(9, regDate);
				pstmt.setInt(10,std);
				pstmt.setString(11, pass);
				pstmt.executeUpdate();
				ps.print("Registered successfully!!");
				 request.getRequestDispatcher("student_login.jsp").include(request, response);  
				con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			ps.print("Mobile number already registered please try with different mobile !!!");
			 request.getRequestDispatcher("student_registration.jsp").include(request, response);  
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

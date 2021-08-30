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

public class SearchStudent extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException
	{
		ArrayList<student> stud = new ArrayList<student>();
		
		String name=request.getParameter("name");
		OracleConnection orcl = new OracleConnection();
		Connection con = orcl.connect();
		String query= "select ID, NAME, GENDER, ADDRESS, DOB, MOBILE,  NATIONALITY, RELIGION, CAST, REGISTRATION_DATE, CLASS, status from student where lower(name) LIKE ?";
		try {
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, "%"+name.toLowerCase()+"%");
			ResultSet res1 = pstmt.executeQuery();
			while(res1.next()){
				student st=new student();
				st.setID(res1.getInt(1));
				st.setName(res1.getString(2));
				st.setGender(res1.getString(3));
				st.setAddress(res1.getString(4));
				st.setDob(res1.getString(5));
				st.setMobile(res1.getLong(6));
				st.setNationality(res1.getString(7));
				st.setReligion(res1.getString(8));
				st.setCast(res1.getString(9));
				st.setRegistration_date(res1.getString(10));
				st.setStd(res1.getInt(11));
				st.setStatus(res1.getString(12));
				stud.add(st);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("studentData", stud);
		RequestDispatcher rd= request.getRequestDispatcher("table.jsp");
		rd.forward(request, response);
		
	}

}

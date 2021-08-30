import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.subject;

public class TimeTable extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		ArrayList<subject> subjectobj = new ArrayList<subject>();
		int std = Integer.parseInt(request.getParameter("std"));
		response.setContentType("text/html"); 
		OracleConnection orcl= new OracleConnection();
		Connection con = orcl.connect();
		String query = "select subject_name,name,day,start_time,end_time from timetable,subject,teacher where timetable.teacher_id=teacher.teacher_id and timetable.subject_id=subject.sub_id and timetable.std=?";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setInt(1, std);
			ResultSet res=pstmt.executeQuery();
			while(res.next())
			{
				subject sub=new subject();
				sub.setSubject_name(res.getString(1));
				sub.setName(res.getString(2));
				sub.setDay(res.getString(3));
				sub.setStart_time(res.getInt(4));
				sub.setEnd_time(res.getInt(5));
				subjectobj.add(sub);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("subjectData", subjectobj);
		RequestDispatcher rd= request.getRequestDispatcher("shedule.jsp");
		rd.forward(request, response);
		
	}

}

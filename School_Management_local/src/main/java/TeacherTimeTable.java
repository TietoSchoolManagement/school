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

import data.teachershedule;

public class TeacherTimeTable extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		ArrayList<teachershedule> teacherShedule = new ArrayList<teachershedule>();
		int id = Integer.parseInt(request.getParameter("id"));
		response.setContentType("text/html"); 
		OracleConnection orcl= new OracleConnection();
		Connection con = orcl.connect();
		String query = "select std,subject_name,name,day,start_time,end_time from timetable,subject,teacher where timetable.teacher_id=teacher.teacher_id and timetable.subject_id=subject.sub_id and teacher.teacher_id=?";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setInt(1, id);
			ResultSet res=pstmt.executeQuery();
			while(res.next())
			{
				teachershedule sub=new teachershedule();
				sub.setStd(res.getInt(1));
				sub.setSubject_name(res.getString(2));
				sub.setName(res.getString(3));
				sub.setDay(res.getString(4));
				sub.setStart_time(res.getInt(5));
				sub.setEnd_time(res.getInt(6));
				teacherShedule.add(sub);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("teacherData", teacherShedule);
		RequestDispatcher rd= request.getRequestDispatcher("teacherShedule.jsp");
		rd.forward(request, response);
		
	}

}

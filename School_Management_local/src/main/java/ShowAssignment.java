import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import data.assignmentData;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowAssignment extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<assignmentData> assignment= new ArrayList<assignmentData>();
		response.setContentType("text/html");
		OracleConnection orcl = new OracleConnection();
		Connection con = orcl.connect();
		int std=Integer.parseInt(request.getParameter("std"));
		String query = "select assignment_id,name,subject_name,assignment_text,start_date,end_date from assignment a,subject s,teacher t where a.teacher_id=t.teacher_id and a.subject_id=s.sub_id and std=?";
		try {
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setInt(1, std);
			ResultSet res=pstmt.executeQuery();
			while(res.next())
			{
				assignmentData data = new assignmentData();
				data.setAssignment_id(res.getInt(1));
				data.setName(res.getString(2));
				data.setSubject_name(res.getString(3));
				data.setAssignment_text(res.getString(4));
				data.setStart_date(res.getString(5));
				data.setEnd_date(res.getString(6));
				assignment.add(data);
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("assignmentData", assignment);
		RequestDispatcher rd= request.getRequestDispatcher("showassignment.jsp");
		rd.forward(request, response);
	}

}

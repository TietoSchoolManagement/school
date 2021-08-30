import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/studentlogout")
public class studentlogout extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		HttpSession session = request.getSession();
		session.removeAttribute("s_id");
		session.invalidate();
		response.sendRedirect("student_login.jsp");
	}
}

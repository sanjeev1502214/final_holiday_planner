package holiday_planner.bo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import holiday_planner.dao.AdminDAOImpl;
import holiday_planner.vo.Register;


@WebServlet("/ViewUsers")
public class ViewUsersBO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewUsersBO() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		 String action = request.getParameter("action");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		long contactnumber = Long.parseLong(request.getParameter("contactnumber"));
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Register r = new Register();
		r.setFirstname(firstname);
		r.setLastname(lastname);
		r.setAge(age);
		r.setGender(gender);
		r.setContactnumber(contactnumber);
		r.setEmail(email);
		r.setPassword(password);
		AdminDAOImpl ado = new AdminDAOImpl();
		
		if(action.equals("listUser"))
		{
			request.setAttribute("users", ado.getAllUsers());
		}
	}

}

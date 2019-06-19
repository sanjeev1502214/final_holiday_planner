package holiday_planner.bo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import holiday_planner.dao.LoginDAOImpl;
import holiday_planner.vo.Login;


@WebServlet("/Login")
public class LoginBO extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginBO() {
        super();
      
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		HttpSession s = request.getSession(true);
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		int result = 0;
				
		try
		{
			
		Login l = new Login();
		l.setEmail(email);
		l.setPassword(password);
		
		LoginDAOImpl ldo = new LoginDAOImpl();
		result = ldo.loginValidation(l);
		if(result == 1)
		{
		
			 
			System.out.println(new Date(s.getCreationTime()));
			s.setAttribute("ref", email);
			RequestDispatcher rd=request.getRequestDispatcher("viewPackages.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("signIn-Up.jsp");
			request.setAttribute("msg", "Invalid Username or Password");
			rd.forward(request, response);
		
		}
		}
		catch(Exception ex)
		{
			System.err.println(ex);
		}
	
		
	}

}

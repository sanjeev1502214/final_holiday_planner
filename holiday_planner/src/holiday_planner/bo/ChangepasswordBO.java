package holiday_planner.bo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import holiday_planner.dao.AdminDAOImpl;
import holiday_planner.vo.Admin;


@WebServlet("/Changepassword")
public class ChangepasswordBO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ChangepasswordBO() {
        super();
        
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String password = request.getParameter("password");
		int result = 0;
		String newpassword = request.getParameter("newpassword");
		
				
		try
		{
			
		Admin b = new Admin();
		
		b.setPassword(password);
		b.setName(newpassword);
		
		AdminDAOImpl ado = new AdminDAOImpl();
		
		result = ado.passwordChange(b);
		
		if(result == 1)
		{
			RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
			rd.forward(request, response);		
								
		}	
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
				rd.forward(request, response);
			}
			
		}
		catch(Exception ex)
		{
			System.err.println(ex);
		}
	}

}

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


@WebServlet("/Admin")
public class AdminBO extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AdminBO() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		int result = 0;	
				
		try
		{
			
		Admin a = new Admin();
		a.setName(name);
		a.setPassword(password);
		
		AdminDAOImpl ado = new AdminDAOImpl();
		
		result = ado.adminValidation(a);
		
		if(result == 1)
		{
			RequestDispatcher rd=request.getRequestDispatcher("adminHome.jsp");
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

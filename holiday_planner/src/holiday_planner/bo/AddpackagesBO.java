package holiday_planner.bo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import holiday_planner.dao.AdminDAOImpl;
import holiday_planner.vo.Addpackages;

@WebServlet("/Addpackages")
public class AddpackagesBO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddpackagesBO() {
        super();   
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		int packageid = Integer.parseInt(request.getParameter("packageid"));
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		int cost = Integer.parseInt(request.getParameter("cost"));
		int result = 0;	
		try
		{
			Addpackages ap = new Addpackages();
			ap.setPackageid(packageid);
			ap.setSource(source);
			ap.setDestination(destination);
			ap.setCost(cost);
			

			AdminDAOImpl ado = new AdminDAOImpl();
			
			result = ado.newPackages(ap);
			

			if(result == 1)
			{
				RequestDispatcher rd=request.getRequestDispatcher("adminHome.jsp");
				rd.forward(request, response);		
									
			}	
				else
				{
					RequestDispatcher rd=request.getRequestDispatcher("addPackages.jsp");
					rd.forward(request, response);
				}
			
		}
		catch(Exception ex)
		{
			System.err.println(ex);		
		}
	}

}

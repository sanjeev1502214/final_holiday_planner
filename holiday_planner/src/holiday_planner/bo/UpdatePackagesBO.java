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

@WebServlet("/UpdatePackages")
public class UpdatePackagesBO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdatePackagesBO() {
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
			Addpackages ap1 = new Addpackages();
			ap1.setPackageid(packageid);
			ap1.setSource(source);
			ap1.setDestination(destination);
			ap1.setCost(cost);
			

			AdminDAOImpl ado = new AdminDAOImpl();
			
			result = ado.updatePackages(ap1);
			

			if(result == 1)
			{
				RequestDispatcher rd=request.getRequestDispatcher("updatePackages.jsp");
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

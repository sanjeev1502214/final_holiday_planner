package holiday_planner.bo;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import holiday_planner.dao.TourDetailsDAOImpl;
import holiday_planner.vo.TourDetails;


@WebServlet("/TourDetails")
public class TourDetailsBO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public TourDetailsBO() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long totalcost = 0;
		PrintWriter out = response.getWriter();
	try
	{
		
		
		response.setContentType (" text/html");
		
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String contactnumber = request.getParameter("contactnumber");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String zipcode = request.getParameter("zipcode");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String startingdate = request.getParameter("startingdate");
		String enddate = request.getParameter("enddate");
		
		
		
		Long nooftourists = Long.parseLong(request.getParameter("touristcount"));
	
	
		TourDetails td = new TourDetails();
		td.setFirstname(firstname);
		td.setLastname(lastname);
		td.setAge(age);
		td.setGender(gender);
		td.setContactnumber(contactnumber);
		td.setEmail(email);
		td.setAddress(address);
		td.setCity(city);
		td.setZipcode(zipcode);
		td.setSource(source);
		td.setDestination(destination);
		td.setStartingdate(startingdate);
		td.setEnddate(enddate);
		td.setNooftourists(nooftourists);

		TourDetailsDAOImpl tdd = new TourDetailsDAOImpl();
		
		
		
		totalcost = tdd.generateBill(td);
		
		request.setAttribute("totalcost",totalcost);
		td.setTotalcost(totalcost);
		
		
		
		int result = tdd.saveTour(td);
	
		if(result == 1)
		{
			
			RequestDispatcher rd1=request.getRequestDispatcher("billPreview.jsp");
			rd1.forward(request, response);		
								
		}	
			else
			{
				RequestDispatcher rd1=request.getRequestDispatcher("viewPackages.jsp");
				rd1.forward(request, response);
			}
		
	}
	catch(Exception ex)
	{
		System.out.println("ex");
		
	}

	}

}

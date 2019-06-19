package holiday_planner.dao;

import java.util.Calendar;
import java.util.Date;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import holiday_planner.util.Db;
import holiday_planner.vo.TourDetails;

public class TourDetailsDAOImpl implements TourDetailsDAO
{

	@Override
	public long generateBill(TourDetails td) 
	{
		long totalcost=0;
		try{
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			
			Date d = sdf.parse(td.getStartingdate());
			Date d1 = sdf.parse(td.getEnddate());
			
			Calendar c = Calendar.getInstance();
			c.setTime(d);
			long t = c.getTimeInMillis();
			c.setTime(d1);
			long u = c.getTimeInMillis();
			
			long v = u-t;
			long w = v/(1000*24*60*60);
			
			long nooftourists = td.getNooftourists();
			
			TourDetailsDAOImpl tdd = new TourDetailsDAOImpl();
			 long cost = tdd.retrieveCost(td);
			
			totalcost = w*nooftourists*cost;	
		   
			
		} 
		
		catch (Exception e) 
		{
			System.err.println(e);
			
		}
		
		return totalcost;
	}

	@Override
	public long retrieveCost(TourDetails td) {
		long cost=0;
		try
		{
			PreparedStatement pst=Db.getDb().prepareStatement("select * from sourcedestination");
			ResultSet rs= pst.executeQuery();
			while(rs.next())
			{
				if(td.getSource().equals(rs.getString(2)) && td.getDestination().equals(rs.getString(3)))
				{
					cost = rs.getInt("cost");
				}
					
			}
		}
		
		catch(Exception e)
		{
			System.out.println(e);
		}
		return cost;
		
	}

	@Override
	public int saveTour(TourDetails td) {
		int result=0;
		try
		{
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			String sd = td.getStartingdate();
			String ed=  td.getEnddate();
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			
			Date d = sdf.parse(sd);
			Date d1 = sdf.parse(ed);
			String a= sdf1.format(d);
			String b = sdf1.format(d1);
			
			PreparedStatement pst =  Db.getDb().prepareStatement("insert into tourdetails(firstname,lastname,age,gender,contactnumber,email,address,city,zipcode,source,destination,startingdate,endingdate,numberoftourists,totalcost) values ('"+td.getFirstname()+"','"+ td.getLastname()+"','"+ td.getAge()+"','"+ td.getGender()+"','"+td.getContactnumber()+"','"+ td.getEmail()+"','"+ td.getAddress()+"','"+ td.getCity()+"','"+ td.getZipcode()+"','"+ td.getSource()+"','"+ td.getDestination()+"','"+ a+"','"+ b+"','"+ td.getNooftourists()+"','"+td.getTotalcost()+"');");
			result = pst.executeUpdate();
					
					
		}
		
		catch(Exception e)
		{
			System.out.println("error1");
			
		}
		return result;
	}

}

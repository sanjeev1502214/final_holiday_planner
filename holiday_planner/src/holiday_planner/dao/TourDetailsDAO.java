package holiday_planner.dao;

import java.text.ParseException;

import holiday_planner.vo.TourDetails;

public interface TourDetailsDAO 
{
	public long generateBill(TourDetails td) throws ParseException;
	
	public long retrieveCost(TourDetails td);
	
	public int saveTour(TourDetails td);

}

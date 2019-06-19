package holiday_planner.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import holiday_planner.util.Db;
import holiday_planner.vo.Login;

public class LoginDAOImpl implements LoginDAO 
{

	@Override
	public int loginValidation(Login l) {
		int result=0;
		try
		{
			PreparedStatement pst=Db.getDb().prepareStatement(" select * from registeration");
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				if(l.getEmail().equals(rs.getString(6)) && l.getPassword().equals(rs.getString(7)))
				{
					result=1;
					break;
				}
				else
				{
					result=0;
				}
					
			}
		}catch(Exception e)
		{
			System.err.println(e);
		}
		return result;
	}

	
	
	
	

}




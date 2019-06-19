package holiday_planner.dao;

import java.sql.PreparedStatement;

import holiday_planner.util.Db;
import holiday_planner.vo.Register;

public class RegisterDAOImpl implements RegisterDAO
{

	@Override
	public int registerValidation(Register r) 
	{
		int result=0;
		try
		{
			PreparedStatement pst=Db.getDb().prepareStatement(" insert into registeration(firstname,lastname,age,gender,contactnumber,email,password) values ('"+r.getFirstname()+"','"+ r.getLastname()+"','"+ r.getAge()
			+"','"+ r.getGender()+"','"+r.getContactnumber()+"','"+ r.getEmail()+"','"+r.getPassword()+"');");
		
			result = pst.executeUpdate();
					
					
		}
		
		catch(Exception e)
		{
			System.err.println(e);
		}
		return result;
	}

}

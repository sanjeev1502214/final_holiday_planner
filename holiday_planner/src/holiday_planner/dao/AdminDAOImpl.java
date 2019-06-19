package holiday_planner.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import holiday_planner.util.Db;
import holiday_planner.vo.Addpackages;
import holiday_planner.vo.Admin;
import holiday_planner.vo.Register;

public class AdminDAOImpl implements AdminDAO
{

	@Override
	public int adminValidation(Admin a)
	{
		int result=0;
		try
		{
			PreparedStatement pst= Db.getDb().prepareStatement("select * from admin");
			ResultSet rs= pst.executeQuery();
			while(rs.next())
			{
				if(a.getName().equals(rs.getString(1)) && a.getPassword().equals(rs.getString(2)))
				{
					result=1;
				}
					
			}
		}catch(Exception e)
		{
			System.err.println(e);
		}
		return result;
	}
	
	
	public int passwordChange(Admin b) 
	{
		
		int result=0;
		try
		{
			PreparedStatement pst=Db.getDb().prepareStatement("select * from admin");
			ResultSet rs= pst.executeQuery();
			while(rs.next())
			{
				if(b.getPassword().equals(rs.getString(2)))
				{
			PreparedStatement pst1= Db.getDb().prepareStatement("update admin set password='"+b.getName()+"' where name='"+rs.getString(1)+"'");
			result=pst1.executeUpdate();
				}
			}
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return result;
	}
	
	
	@Override
	public int newPackages(Addpackages ap) 
	{
		int result = 0;
		try
		{
			PreparedStatement pst1 = Db.getDb().prepareStatement("select * from registeration");
			ResultSet rs= pst1.executeQuery();
			while(rs.next())
			{
				if(ap.getSource().equals(rs.getString(2)) && ap.getDestination().equals(rs.getString(3)))
				{ 
				       result = 0;
				       break;
				}
				else
				{
					PreparedStatement pst2 = Db.getDb().prepareStatement("insert into sourcedestination(packageid,source,destination,cost) values ('"+ap.getPackageid()+"','"+ap.getSource()+"','"+ap.getDestination()+"','"+ap.getCost()+"');");
					result = pst2.executeUpdate();
				}
				}
		}
		
		catch(Exception e)
		{
			System.err.println(e);
		}
		return result;
	}
	
	@Override
	public int updatePackages(Addpackages ap1) {
		
		int result = 0;
		try
		{
			PreparedStatement pst= Db.getDb().prepareStatement("update sourcedestination set source= '"+ap1.getSource()+"',destination= '"+ap1.getDestination()+"',cost= '"+ap1.getCost()+"' where packageid ='"+ap1.getPackageid()+"'");
			result = pst.executeUpdate();					
		}
		
		catch(Exception e)
		{
			System.err.println(e);
		}
		return result;	
		}
	

	
	@Override
	 public List<Register> getAllUsers() {
        List users = new ArrayList();
        
        
        try {
        	String sql = "SELECT * FROM registeration";
            PreparedStatement ps = (PreparedStatement) Db.getDb().prepareStatement(sql);
            ResultSet rs = (ResultSet) ps.executeQuery();
            while (rs.next()) {
            	Register r =new Register ();
            	r.setFirstname(rs.getString("firstname"));
            	r.setLastname(rs.getString("lastname"));
            	r.setAge(rs.getInt("age"));
            	r.setGender(rs.getString("gender"));
            	r.setContactnumber(Long.parseLong(rs.getString("contactnumber")));
            	r.setEmail(rs.getString("email"));
            	r.setPassword(rs.getString("password"));
            	     	                                            
                users.add(r);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }


	@Override
	public List<Addpackages> getAllPackages()
	{
		List packages = new ArrayList<>();
		try
		{
		String sql = "SELECT * FROM sourcedestination";
        PreparedStatement ps =  Db.getDb().prepareStatement(sql);
        ResultSet rs =  ps.executeQuery();
        while (rs.next()) 
        {
        	Addpackages ap = new Addpackages();
			ap.setPackageid(rs.getInt("packageid"));
			ap.setSource(rs.getString("source"));
			ap.setDestination(rs.getString("destination"));
			ap.setCost(rs.getInt("cost"));
			
			packages.add(ap);
        }
		}
        catch(Exception ex)
        {
        	 System.err.println(ex);
        }
			
		return packages;
	}


	


	


	
	
}


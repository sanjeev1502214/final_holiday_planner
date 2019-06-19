package holiday_planner.dao;

import java.util.List;

import holiday_planner.vo.Addpackages;
import holiday_planner.vo.Admin;
import holiday_planner.vo.Register;

public interface AdminDAO 
{
	public int adminValidation(Admin a);
	
	public int passwordChange(Admin b);
	
	public int newPackages(Addpackages ap);
	
	public  List<Addpackages> getAllPackages();
	
	//public int deletePackages(Addpackages ap2);
	
	public int updatePackages(Addpackages ap1);
	
	public List<Register> getAllUsers();
	
	

}

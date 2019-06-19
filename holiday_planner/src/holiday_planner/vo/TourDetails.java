package holiday_planner.vo;

import java.util.Date;

public class TourDetails 
{
	String firstname;
	String lastname;
	String age;
	String gender;
	String contactnumber;
	String email;
	String address;
	String city;
	String zipcode;
	String source;
	String destination;
	String startingdate;
	String enddate;
	Long nooftourists;
	Long totalcost;
	
	


	public TourDetails(String firstname, String lastname, String age, String gender, String contactnumber, String email,
			String address, String city, String zipcode, String source, String destination, String startingdate,
			String enddate, Long nooftourists) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.gender = gender;
		this.contactnumber = contactnumber;
		this.email = email;
		this.address = address;
		this.city = city;
		this.zipcode = zipcode;
		this.source = source;
		this.destination = destination;
		this.startingdate = startingdate;
		this.enddate = enddate;
		this.nooftourists = nooftourists;
	}


	public TourDetails() {
		super();
		
	}


	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContactnumber() {
		return contactnumber;
	}
	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getStartingdate() {
		return startingdate;
	}

	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public Long getNooftourists() {
		return nooftourists;
	}
	public void setNooftourists(Long nooftourists) {
		this.nooftourists = nooftourists;
	}


	public Long getTotalcost() {
		return totalcost;
	}

	public void setTotalcost(Long totalcost) {
		this.totalcost = totalcost;
	}


	public void setStartingdate(String startingdate) {
		// TODO Auto-generated method stub
		this.startingdate = startingdate;
	}

}

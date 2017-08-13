
package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class ShippingAddress {


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	private int id;
	@NotEmpty(message="Street Name is mandatory")
	@Pattern(regexp="^[A-Za-z]*",message="Street name cannot contain numbers")
	private String streetname;
	
	@NotEmpty(message="Apartment Number is mandatory")
	@Pattern(regexp="^[0-9]*",message="Apartment Number can only contain numbers")
	private String apartmentnumber;
	
	@NotEmpty(message="City is mandatory")
	@Pattern(regexp="^[A-Za-z]*",message="City name cannot contain numbers")
	private String city;
	
	@NotEmpty(message="State is mandatory")
	@Pattern(regexp="^[A-Za-z]*",message="State name cannot contain numbers")
	private String state;
	
	@NotEmpty(message="Country is mandatory")
	@Pattern(regexp="^[A-Za-z]*",message="Country name cannot contain numbers")
	private String country;
	
	@NotEmpty(message="Zipcode is mandatory")
	@Pattern(regexp="^[0-9]*",message="Zipcode can only contain numbers")
	@Size(max=6,min=6,message="Zipcode should be of 6 numbers")
	private String zipcode;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStreetname() {
		return streetname;
	}

	public void setStreetname(String streetname) {
		this.streetname = streetname;
	}

	public String getApartmentnumber() {
		return apartmentnumber;
	}

	public void setApartmentnumber(String apartmentnumber) {
		this.apartmentnumber = apartmentnumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
}

package com.ligou4.entity;

public class CommonInfo {
	private Integer id;
	private String introducetitle;
	private String introducecontent;
	private String email;
	private String mobilephone;
	private String icpnumber;
	private String address;
	private String	hotline;
	private String 	zipcode;
	private String	telephone;
	private String 	emailme;
	private Integer active;
	
	public Integer getActive() {
		return active;
	}
	public void setActive(Integer active) {
		this.active = active;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getIntroducetitle() {
		return introducetitle;
	}
	public void setIntroducetitle(String introducetitle) {
		this.introducetitle = introducetitle;
	}
	public String getIntroducecontent() {
		return introducecontent;
	}
	public void setIntroducecontent(String introducecontent) {
		this.introducecontent = introducecontent;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getMobilephone() {
		return mobilephone;
	}
	public void setMobilephone(String mobilephone) {
		this.mobilephone = mobilephone;
	}
	public String getIcpnumber() {
		return icpnumber;
	}
	public void setIcpnumber(String icpnumber) {
		this.icpnumber = icpnumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHotline() {
		return hotline;
	}
	public void setHotline(String hotline) {
		this.hotline = hotline;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmailme() {
		return emailme;
	}
	public void setEmailme(String emailme) {
		this.emailme = emailme;
	}
	@Override
	public String toString() {
		return "CommonInfo [active=" + active + ", address=" + address
				+ ", email=" + email + ", emailme=" + emailme + ", hotline="
				+ hotline + ", icpnumber=" + icpnumber + ", id=" + id
				+ ", introducecontent=" + introducecontent
				+ ", introducetitle=" + introducetitle + ", mobilephone="
				+ mobilephone + ", telephone=" + telephone + ", zipcode="
				+ zipcode + "]";
	}


	
}

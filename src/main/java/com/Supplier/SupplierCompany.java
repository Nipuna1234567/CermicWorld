package com.Supplier;

public class SupplierCompany {
	
	private String comp_id;
    private String comp_name;
	private String comp_type;
	private String comp_phone;
	private String comp_address;
	private String comp_email;
	
	public SupplierCompany(String comp_id, String comp_name, String comp_type, String comp_phone, String comp_address,
			String comp_email) {
		super();
		this.comp_id = comp_id;
		this.comp_name = comp_name;
		this.comp_type = comp_type;
		this.comp_phone = comp_phone;
		this.comp_address = comp_address;
		this.comp_email = comp_email;
		
		
	}

	public String getComp_id() {
		return comp_id;
	}

	public void setComp_id(String comp_id) {
		this.comp_id = comp_id;
	}

	public String getComp_name() {
		return comp_name;
	}

	public void setComp_name(String comp_name) {
		this.comp_name = comp_name;
	}

	public String getComp_type() {
		return comp_type;
	}

	public void setComp_type(String comp_type) {
		this.comp_type = comp_type;
	}

	public String getComp_phone() {
		return comp_phone;
	}

	public void setComp_phone(String comp_phone) {
		this.comp_phone = comp_phone;
	}

	public String getComp_address() {
		return comp_address;
	}

	public void setComp_address(String comp_address) {
		this.comp_address = comp_address;
	}

	public String getComp_email() {
		return comp_email;
	}

	public void setComp_email(String comp_email) {
		this.comp_email = comp_email;
	}
}
	
	

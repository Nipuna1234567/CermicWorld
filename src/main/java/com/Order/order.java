package com.Order;

public class order {
	
	private String sup_oid;
    private String qty;
	private String date;
	private String comp_id;
	private String mat_id;
	
	
	public order(String sup_oid2, String qty2, String date, String comp_id, String mat_id)
			 {
		super();
		this.sup_oid = sup_oid2;
		this.qty = qty2;
		this.date = date;
		this. comp_id =  comp_id;
		this.mat_id = mat_id;
		
		
		
	}

	public String getSup_oid() {
		return sup_oid;
	}

	public void setSup_oid(String sup_oid) {
		this.sup_oid = sup_oid;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getComp_id() {
		return comp_id;
	}

	public void setComp_id(String comp_id) {
		this.comp_id = comp_id;
	}

	public String getMat_id() {
		return mat_id;
	}

	public void setMat_id(String mat_id) {
		this.mat_id = mat_id;
	}

	
}
	
	




package com.Transport;

public class Transport {
	
	private String t_id;
	private String t_distance;
	private String t_price;
	private String t_amount;
	private String date;
	private String vehi_no;
	private String shop_order;
	
	public Transport(String t_id, String t_distance, String t_price, String t_amount, String date, String vehi_no,
			String shop_order) {
		super();
		this.t_id = t_id;
		this.t_distance = t_distance;
		this.t_price = t_price;
		this.t_amount = t_amount;
		this.date = date;
		this.vehi_no = vehi_no;
		this.shop_order = shop_order;
	}

	public String getT_id() {
		return t_id;
	}

	public void setT_id(String t_id) {
		this.t_id = t_id;
	}

	public String getT_distance() {
		return t_distance;
	}

	public void setT_distance(String t_distance) {
		this.t_distance = t_distance;
	}

	public String getT_price() {
		return t_price;
	}

	public void setT_price(String t_price) {
		this.t_price = t_price;
	}

	public String getT_amount() {
		return t_amount;
	}

	public void setT_amount(String t_amount) {
		this.t_amount = t_amount;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getVehi_no() {
		return vehi_no;
	}

	public void setVehi_no(String vehi_no) {
		this.vehi_no = vehi_no;
	}

	public String getShop_order() {
		return shop_order;
	}

	public void setShop_order(String shop_order) {
		this.shop_order = shop_order;
	}


}

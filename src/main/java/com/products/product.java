package com.products;

public class product {
	
	private String p_id;
	private String p_type;
	private String p_date;
	private String p_qty;
	private String p_limited;
	private String p_less;
	private String p_price;
	
	public product(String p_id, String p_type, String p_date, String p_qty, String p_limited, String p_less,
			String p_price) {
		super();
		this.p_id = p_id;
		this.p_type = p_type;
		this.p_date = p_date;
		this.p_qty = p_qty;
		this.p_limited = p_limited;
		this.p_less = p_less;
		this.p_price = p_price;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public String getP_date() {
		return p_date;
	}

	public void setP_date(String p_date) {
		this.p_date = p_date;
	}

	public String getP_qty() {
		return p_qty;
	}

	public void setP_qty(String p_qty) {
		this.p_qty = p_qty;
	}

	public String getP_limited() {
		return p_limited;
	}

	public void setP_limited(String p_limited) {
		this.p_limited = p_limited;
	}

	public String getP_less() {
		return p_less;
	}

	public void setP_less(String p_less) {
		this.p_less = p_less;
	}

	public String getP_price() {
		return p_price;
	}

	public void setP_price(String p_price) {
		this.p_price = p_price;
	}
	
	

}

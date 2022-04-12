package com.material;

public class material {

	private String mat_id;
	private String mat_type;
	private String mat_name;
	private String mat_use;
	private String mat_qty;
	private String mat_limit;
	private String mat_less;
	private String mat_price;
	
	public material(String mat_id, String mat_type, String mat_name,String mat_use, String mat_qty, String mat_limit, String mat_less,
			String mat_price) {
		super();
		this.mat_id = mat_id;
		this.mat_type = mat_type;
		this.mat_name = mat_name;
		this.mat_use = mat_use;
		this.mat_qty = mat_qty;
		this.mat_limit = mat_limit;
		this.mat_less = mat_less;
		this.mat_price = mat_price;
		
		
	}

	public String getMat_id() {
		return mat_id;
	}

	public void setMat_id(String mat_id) {
		this.mat_id = mat_id;
	}

	public String getMat_type() {
		return mat_type;
	}

	public void setMat_type(String mat_type) {
		this.mat_type = mat_type;
	}

	public String getMat_name() {
		return mat_name;
	}

	public void setMat_name(String mat_name) {
		this.mat_name = mat_name;
	}
	public String getMat_use() {
		return mat_use;
	}

	public void setMat_use(String mat_use) {
		this.mat_use = mat_use;
	}

	public String getMat_qty() {
		return mat_qty;
	}

	public void setMat_qty(String mat_qty) {
		this.mat_qty = mat_qty;
	}

	public String getMat_limit() {
		return mat_limit;
	}

	public void setMat_limit(String mat_limit) {
		this.mat_limit = mat_limit;
	}

	public String getMat_less() {
		return mat_less;
	}

	public void setMat_less(String mat_less) {
		this.mat_less = mat_less;
	}

	public String getMat_price() {
		return mat_price;
	}

	public void setMat_price(String mat_price) {
		this.mat_price = mat_price;
	}
}

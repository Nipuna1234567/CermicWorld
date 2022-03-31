package com.vehicle;

public class Vehicle {

		private String vehi_no;
		private String vehi_type;
		private String vehi_brand;
		private String chassi_no;
		private String vehi_mileage;
		private String ins_upto;
		private String emi_upto;
		
		public Vehicle(String vehi_no, String vehi_type, String vehi_brand, String chassi_no, String vehi_mileage,
				String ins_upto, String emi_upto) {
			super();
			this.vehi_no = vehi_no;
			this.vehi_type = vehi_type;
			this.vehi_brand = vehi_brand;
			this.chassi_no = chassi_no;
			this.vehi_mileage = vehi_mileage;
			this.ins_upto = ins_upto;
			this.emi_upto = emi_upto;
			
			
		}

		public String getVehi_no() {
			return vehi_no;
		}

		public void setVehi_no(String vehi_no) {
			this.vehi_no = vehi_no;
		}

		public String getVehi_type() {
			return vehi_type;
		}

		public void setVehi_type(String vehi_type) {
			this.vehi_type = vehi_type;
		}

		public String getVehi_brand() {
			return vehi_brand;
		}

		public void setVehi_brand(String vehi_brand) {
			this.vehi_brand = vehi_brand;
		}

		public String getChassi_no() {
			return chassi_no;
		}

		public void setChassi_no(String chassi_no) {
			this.chassi_no = chassi_no;
		}

		public String getVehi_mileage() {
			return vehi_mileage;
		}

		public void setVehi_mileage(String vehi_mileage) {
			this.vehi_mileage = vehi_mileage;
		}

		public String getIns_upto() {
			return ins_upto;
		}

		public void setIns_upto(String ins_upto) {
			this.ins_upto = ins_upto;
		}

		public String getEmi_upto() {
			return emi_upto;
		}

		public void setEmi_upto(String emi_upto) {
			this.emi_upto = emi_upto;
		}
		
		
}

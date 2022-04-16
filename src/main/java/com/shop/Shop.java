package com.shop;



public class Shop {

private String sh_id;
private String sh_name;
private String sh_phone;
private String sh_address;


public Shop(String sh_id, String sh_name, String sh_phone, String sh_address)
{
super();
this.sh_id = sh_id;
this.sh_name = sh_name;
this.sh_phone = sh_phone;
this. sh_address = sh_address;



}



public String getSh_id() {
return sh_id;
}



public void setSh_id(String sh_id) {
this.sh_id = sh_id;
}



public String getSh_name() {
return sh_name;
}



public void setSh_name(String sh_name) {
this.sh_name = sh_name;
}



public String getSh_phone() {
return sh_phone;
}



public void setSh_phone(String sh_phone) {
this.sh_phone = sh_phone;
}



public String getSh_address() {
return sh_address;
}



public void setSh_address(String sh_address) {
this.sh_address = sh_address;
}




}
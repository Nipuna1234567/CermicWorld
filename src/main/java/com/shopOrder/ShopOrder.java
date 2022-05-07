package com.shopOrder;



public class ShopOrder {

private String shop_order;
private String shop_name;
private String shop_no;
private String shop_address;
private String qty;
private String unite_price;
private String date;
private String sh_id;
private String p_id;



public ShopOrder(String shop_order, String shop_name, String shop_no, String shop_address, String qty, String unite_price, String date, String sh_id, String p_id)
{
super();
this.shop_order = shop_order;
this.shop_name = shop_name;
this.shop_no = shop_no;
this.shop_address = shop_address;
this.qty = qty;
this.unite_price = unite_price;
this.date = date;
this.sh_id = sh_id;
this.p_id = p_id;



}



public String getShop_order() {
return shop_order;
}



public void setShop_order(String shop_order) {
this.shop_order = shop_order;
}



public String getShop_name() {
return shop_name;
}



public void setShop_name(String shop_name) {
this.shop_name = shop_name;
}



public String getShop_no() {
return shop_no;
}



public void setShop_no(String shop_no) {
this.shop_no = shop_name;
}



public String getShop_address() {
return shop_address;
}



public void setShop_address(String shop_address) {
this.shop_address = shop_address;
}


public String getQty() {
return qty;
}


public void setQty(String qty) {
this.qty = qty;
}


public String getUnite_price() {
return unite_price;
}


public void setUnite_price(String unite_price) {
this.unite_price = unite_price;
}



public String getDate() {
return date;
}


public void setDate(String date) {
this.date = date;
}



public String getSh_id() {
return sh_id;
}



public void setSh_id(String sh_id) {
this.sh_id = sh_id;
}



public String getP_id() {
return p_id;
}


public void setP_id(String p_id) {
this.p_id = p_id;
}


















}
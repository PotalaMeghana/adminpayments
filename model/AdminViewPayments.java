package eStoreProduct.model;

import java.util.Date;

public class AdminViewPayments {

	private int orderid;
	private String orderbillno;
	private Date paydate;
	private double ordertotal;
    private String orderpayreference;
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public String getOrderbillno() {
		return orderbillno;
	}
	public void setOrderbillno(String orderbillno) {
		this.orderbillno = orderbillno;
	}
	public Date getPaydate() {
		return paydate;
	}
	public void setPaydate(Date paydate) {
		this.paydate = paydate;
	}
	public double getOrdertotal() {
		return ordertotal;
	}
	public void setOrdertotal(double ordertotal) {
		this.ordertotal = ordertotal;
	}
	public String getOrderpayreference() {
		return orderpayreference;
	}
	public void setOrderpayreference(String orderpayreference) {
		this.orderpayreference = orderpayreference;
	}
}

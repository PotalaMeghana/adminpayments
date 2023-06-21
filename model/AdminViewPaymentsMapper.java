package eStoreProduct.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AdminViewPaymentsMapper implements RowMapper<AdminViewPayments>{

	@Override
	public AdminViewPayments mapRow(ResultSet rs, int rowNum) throws SQLException {
		AdminViewPayments payments=new AdminViewPayments();
		payments.setOrderid(rs.getInt(1));
		payments.setOrderbillno(rs.getString(2));
		payments.setPaydate(rs.getTimestamp(3));
		payments.setOrdertotal(rs.getDouble(4));
		payments.setOrderpayreference(rs.getString(5));
		return payments;
	}

}

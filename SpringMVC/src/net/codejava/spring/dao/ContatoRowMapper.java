package net.codejava.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import net.codejava.spring.model.Contact;

public class ContatoRowMapper implements RowMapper<Contact>{

	@Override
	public Contact mapRow(ResultSet rs, int arg1) throws SQLException {
		Contact aContact = new Contact();
		
		aContact.setId(rs.getInt("contact_id"));
		aContact.setName(rs.getString("name"));
		aContact.setEmail(rs.getString("email"));
		aContact.setAddress(rs.getString("address"));
		aContact.setTelephone(rs.getString("telephone"));
		
		return aContact;
	}


}

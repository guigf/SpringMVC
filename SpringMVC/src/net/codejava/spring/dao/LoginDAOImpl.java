package net.codejava.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import net.codejava.spring.model.Contact;
import net.codejava.spring.model.Login;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;


public class LoginDAOImpl implements LoginDAO{

	private JdbcTemplate jdbcTemplate;
	
	public LoginDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Login> list(String username) {
		String sql = "SELECT * FROM login WHERE username=?";
		List<Login> listLogin = jdbcTemplate.query(sql, new RowMapper<Login>() {

			@Override
			public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
				Login aLogin= new Login();
	
				aLogin.setUsername(rs.getString("username"));
				aLogin.setPassword(rs.getString("password"));
				return aLogin;
			}
			
		},username);
		
		return listLogin;
	}


}

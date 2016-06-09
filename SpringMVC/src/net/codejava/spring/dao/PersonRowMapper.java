package net.codejava.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import net.codejava.spring.model.Person;

public class PersonRowMapper implements RowMapper<Person> {
	public Person mapRow(ResultSet resultSet, int arg1) throws SQLException {
		Person person = new Person();
		person.setName(resultSet.getString(1));
		person.setSurname(resultSet.getString(2));
		return person;
	}
}

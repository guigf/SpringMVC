package net.codejava.spring.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import net.codejava.spring.model.Person;

public class PersonDaoImpl implements PersonDao {
	DataSource dataSource;

	private JdbcTemplate jdbcTemplate;

	public PersonDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public void createPerson(String name, String surname) {
		jdbcTemplate.update("INSERT INTO PERSON_RECORD (NAME,SURNAME) VALUES (?,?)", new Object[] { name, surname });
	}

	public List<Person> selectPerson(String name, String surname) {
		return jdbcTemplate.query("SELECT NAME,SURNAME FROM PERSON_RECORD WHERE NAME=? AND SURNAME=?",
				new Object[] { name, surname }, new PersonRowMapper());
	}

	public List<Person> selectAll() {
		return jdbcTemplate.query("SELECT NAME,SURNAME FROM PERSON_RECORD", new PersonRowMapper());
	}

	public List<Person> searchByName(String name) {
		return jdbcTemplate.query("SELECT NAME,SURNAME FROM PERSON_RECORD WHERE NAME LIKE ?",new Object[] { "%" + name + "%" }, new PersonRowMapper());
	}
	
	public void deletePerson(String name, String surname) {
		jdbcTemplate.update("DELETE FROM PERSON_RECORD WHERE NAME=? AND SURNAME=?", new Object[] { name, surname });
	}

	public void deleteAll() {
		jdbcTemplate.update("DELETE FROM PERSON_RECORD");
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void updateName(String oldName, String newName) {
		jdbcTemplate.update("UPDATE PERSON_RECORD SET NAME = ? WHERE NAME = ?", new Object[] { newName, oldName });
	}

	public List<Person> selectAllOrderedByName() {
		return jdbcTemplate.query("SELECT NAME,SURNAME FROM PERSON_RECORD ORDER BY NAME ASC", new PersonRowMapper());
	}
}

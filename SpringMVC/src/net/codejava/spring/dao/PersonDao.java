package net.codejava.spring.dao;

import java.util.List;

import net.codejava.spring.model.Person;

public interface PersonDao {
	public abstract void createPerson(String name, String surname);
	public abstract List<Person> selectPerson(String name, String surname);
	public abstract List<Person> selectAll();
	public abstract void deletePerson(String name, String surname);
	public abstract void deleteAll();
	public abstract void updateName(String oldName, String newName);
	public abstract List<Person> selectAllOrderedByName();
	public abstract List<Person> searchByName(String name);
}

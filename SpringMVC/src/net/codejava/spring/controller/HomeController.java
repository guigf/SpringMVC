package net.codejava.spring.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.codejava.spring.dao.ContactDAO;
import net.codejava.spring.dao.PersonDao;
import net.codejava.spring.model.Contact;
import net.codejava.spring.model.Person;

/**
 * This controller routes accesses to the application to the appropriate hanlder
 * methods.
 * 
 * @author www.codejava.net
 *
 */
@Controller
public class HomeController {

	@Autowired
	private ContactDAO contactDAO;
	
	@Autowired
	private PersonDao personDao;
	
	@RequestMapping(value = "/index")
	public ModelAndView mainPage(ModelAndView model) throws IOException {
		model.setViewName("index");

		return model;
	}
	
	@RequestMapping(value = "/person")
	public ModelAndView listPerson(ModelAndView model) throws IOException {
		List<Person> listPerson = personDao.selectAll();
		model.addObject("listPerson", listPerson);
		model.setViewName("personList");

		return model;
	}
	
	@RequestMapping(value = "/searchPersonByName", method = RequestMethod.GET)
	public ModelAndView listPerson(ModelAndView model,HttpServletRequest request) throws IOException {
		String name = request.getParameter("search");
		List<Person> listPerson = personDao.searchByName(name);
		model.addObject("listPerson", listPerson);
		model.setViewName("personListSearch");

		return model;
	}
	
	
}

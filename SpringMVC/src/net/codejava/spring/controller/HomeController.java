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

	@RequestMapping(value = "/contacts")
	public ModelAndView listContact(ModelAndView model) throws IOException {
		List<Contact> listContact = contactDAO.list();
		model.addObject("listContact", listContact);
		model.setViewName("contactIndex");

		return model;
	}

	@RequestMapping(value = "/newContact", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		Contact newContact = new Contact();
		model.addObject("contact", newContact);
		model.setViewName("ContactForm");
		return model;
	}
	
	/*TESTANDO*/
	@RequestMapping(value = "/newContactModal", method = RequestMethod.GET)
	public ModelAndView newContactModal(ModelAndView model) {
		Contact newContact = new Contact();
		model.addObject("contact", newContact);
		model.setViewName("cadastroContato");
		return model;
	}

	@RequestMapping(value = "/saveContact", method = RequestMethod.POST)
	public ModelAndView saveContact(@ModelAttribute Contact contact) {
		contactDAO.saveOrUpdate(contact);
		return new ModelAndView("redirect:/contacts");
	}
	
	@RequestMapping(value = "/cancelSaving")
	public ModelAndView cancelSaving(@ModelAttribute Contact contact) {
		//contactDAO.saveOrUpdate(contact);
		return new ModelAndView("redirect:/contacts");
	}
	
	@RequestMapping(value = "/deleteContact", method = RequestMethod.GET)
	public ModelAndView deleteContact(HttpServletRequest request) {
		int contactId = Integer.parseInt(request.getParameter("id"));
		contactDAO.delete(contactId);
		return new ModelAndView("redirect:/contacts");
	}

	@RequestMapping(value = "/editContact", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		int contactId = Integer.parseInt(request.getParameter("id"));
		Contact contact = contactDAO.get(contactId);
		ModelAndView model = new ModelAndView("ContactForm");
		model.addObject("contact", contact);

		return model;
	}
	
	@RequestMapping(value = "/editContactModal", method = RequestMethod.GET)
	public ModelAndView editContactModal(HttpServletRequest request) {
		int contactId = Integer.parseInt(request.getParameter("id"));
		Contact contact = contactDAO.get(contactId);
		ModelAndView model = new ModelAndView("cadastroContato");
		model.addObject("contact", contact);

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

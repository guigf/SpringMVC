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
import net.codejava.spring.model.Contact;

@Controller
public class ContactController {

	@Autowired
	private ContactDAO contactDAO;
	
	@RequestMapping(value = "/contacts")
	public ModelAndView listContact(ModelAndView model) throws IOException {
		List<Contact> listContact = contactDAO.list();
		
		model.addObject("listContact", listContact);
		model.setViewName("Contact/index");
		
		return model;
	}
	
	@RequestMapping(value = "/newContact", method = RequestMethod.GET)
	public ModelAndView newContactModal(ModelAndView model) {
		Contact newContact = new Contact();
		
		model.addObject("contact", newContact);
		model.setViewName("Contact/form");
		
		return model;
	}
	
	@RequestMapping(value = "/editContact", method = RequestMethod.GET)
	public ModelAndView editContactModal(HttpServletRequest request) {
		int contactId = Integer.parseInt(request.getParameter("id"));
		Contact contact = contactDAO.get(contactId);
		ModelAndView model = new ModelAndView("Contact/form");
		
		model.addObject("contact", contact);

		return model;
	}
	
	@RequestMapping(value = "/saveContact", method = RequestMethod.POST)
	public ModelAndView saveContact(@ModelAttribute Contact contact) {
		contactDAO.saveOrUpdate(contact);
		return new ModelAndView("redirect:/contacts");
	}
	
	@RequestMapping(value = "/deleteContact", method = RequestMethod.GET)
	public ModelAndView deleteContact(HttpServletRequest request) {
		int contactId = Integer.parseInt(request.getParameter("id"));
		contactDAO.delete(contactId);
		return new ModelAndView("redirect:/contacts");
	}
	
	@RequestMapping(value = "/cancelSaving")
	public ModelAndView cancelSaving(@ModelAttribute Contact contact) {
		return new ModelAndView("redirect:/contacts");
	}
}

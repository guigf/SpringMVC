package net.codejava.spring.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.codejava.spring.dao.LoginDAO;
import net.codejava.spring.model.Contact;
import net.codejava.spring.model.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@Autowired
	private LoginDAO loginDAO;
	
	@RequestMapping(value = "/")
	public ModelAndView mainPage(ModelAndView model) throws IOException {
		Login newLogin = new Login();
		model.addObject("login", newLogin);
		model.setViewName("login");
		return model;
	}
	
	@RequestMapping(value = "/logar", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute Login login) {
		List<Login> listaLogin = loginDAO.list(login.getUsername());
		
		if(!verificaLogin(listaLogin, login.getUsername(), login.getPassword())){
			ModelAndView model = new ModelAndView();
			model.addObject("login", login);
			model.addObject("error","Login inválido.");
			model.setViewName("login");
			return model;
		}
		
		return new ModelAndView("redirect:/index");
	}
	
	private Boolean verificaLogin(List<Login> listLogin,String username, String password){
		if(listLogin == null || listLogin.isEmpty()){
			return false;
		}
			
		for(Login login : listLogin){			
			if(login.getUsername() != null && login.getUsername().equals(username)){
				if(login.getPassword() != null && login.getPassword().equals(password)){
					return true;
				}
			}
		}
		
		return false;
	}
	
}

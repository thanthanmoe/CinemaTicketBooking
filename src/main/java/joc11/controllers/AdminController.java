package joc11.controllers;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import joc11.daos.AdminDao;
import joc11.models.AdminModel;




@Controller
public class AdminController {
	@Autowired
	AdminDao dao;
	
	
	@RequestMapping(value="/loginAdmin",method=RequestMethod.GET)
	public ModelAndView adminLogin() {
		return new ModelAndView("ADM001","admin",new AdminModel());
		
	}
		
	@RequestMapping(value="/adminLogin",method=RequestMethod.POST)
	public String loginAdmin(@ModelAttribute("admin") AdminModel admin,ModelMap model) {
	
		if(!admin.getName().isEmpty() && !admin.getPass().isEmpty()){
			
			AdminModel adminModel=new AdminModel();
			adminModel = dao.adLogin(admin.getName(),admin.getPass());
			
	
			if( adminModel != null)
			{
			System.out.print("succ");
			return "ADM002";
			}
		}if (admin.getName().isEmpty() || admin.getPass().isEmpty()) { 
			model.addAttribute("error","Name or Password is null!!");
			return "ADM001"; 
		}else{
			System.out.print("fail");
			model.addAttribute("error","Login Fail! Name or Password incorrect!");
			return "ADM001";
		
		}
		
	}
	
	
	@RequestMapping(value="/forget",method=RequestMethod.GET)
	public ModelAndView forgetpass() {
		return new ModelAndView("REG001","admin",new AdminModel());			
	}
	@RequestMapping(value="/forgetpass",method=RequestMethod.POST)
	public String forget1(@ModelAttribute("admin") AdminModel admin, HttpSession session,ModelMap model) {
		if (admin==null){ 
			return "REG001"; 
		} else 
		{
			
			AdminModel adminModel=new AdminModel();
			adminModel = dao.forGet(admin.getName(),admin.getEmail());
			
			session.setAttribute("res", adminModel);
		
	
		if( adminModel != null)
		{
			System.out.print("succ");
		return "redirect:/password";
		}
		else
		{
			System.out.print("fall");
			model.addAttribute("error"," Name or Email incorrect!");
			return "REG001";
		
		}
	
		
	}
}
	@RequestMapping(value="/password",method=RequestMethod.GET)
	public ModelAndView passwordCom() {
		return new ModelAndView("REG002","admin",new AdminModel());			
	}
	@RequestMapping(value="/confirmPassword",method=RequestMethod.POST)
	public String forget2(@ModelAttribute("admin") AdminModel admin,ModelMap map) {
		int status=0;
		if (admin==null) 
		{ 
			return "REG001"; 
		} else {
			
			AdminModel adminModel=new AdminModel();
			adminModel.setName(admin.getName());
			adminModel.setEmail(admin.getEmail());
			adminModel.setPass(admin.getPass());
			adminModel.setCompass(admin.getCompass());
			
			if( adminModel.getPass().equals(adminModel.getCompass()))
			{
				status=dao.forgetPassword(adminModel);
				if( status == 0 )
				{
					map.addAttribute("error","Update Failed");
					return "REG002";
				}
			}else if( !adminModel.getPass().equals(adminModel.getCompass()))
			{
				map.addAttribute("error","Password are not match!");
				return "REG002";
			}
		
			
			return "ADM001";
			
		}
	
		
	}
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String adminHome() {
		return "ADM002";
		
	}


}

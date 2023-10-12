package joc11.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import joc11.daos.SeatDao;
import joc11.daos.UserDao;
import joc11.models.SeatModel;
import joc11.models.UserModel;

@Controller
public class UserController {
	
	@Autowired
	SeatDao dao;
	
	@Autowired
	UserDao udao;
	@RequestMapping(value = "/userDetails" ,method = RequestMethod.GET)
	
	public ModelAndView userDetails(ModelMap model,HttpSession session) {
	 SeatModel seat=(SeatModel) session.getAttribute("seat");
	 model.addAttribute("seat",seat);
	 session.setAttribute("seat",seat);
		return new ModelAndView("USR001" ,"user",new UserModel());
	}
 @RequestMapping(value = "/remove",method = RequestMethod.GET )
  public String remove(@ModelAttribute("seat") SeatModel seat ,ModelMap model,HttpSession session) {
		
		session.removeAttribute("seat");
		
		return "redirect:/"; 
		
 }
 @RequestMapping(value = "/back/{movieId}",method = RequestMethod.GET )
 public ModelAndView movieEdit(@PathVariable("movieId") String movieId,@PathVariable("seat") SeatModel seat,HttpSession session,ModelMap model) {
	
	 model.addAttribute(movieId);
	 session.setAttribute("seat",seat);
	 return new ModelAndView("SE001","seat",dao.getAllSeat(movieId)); 
	 
 }
 
 @RequestMapping(value = "/confirm",method = RequestMethod.POST )
  public String confirm(@ModelAttribute("user") @Validated UserModel user,ModelMap model,HttpSession session,BindingResult bs) {
		
	 SeatModel seat=(SeatModel) session.getAttribute("seat");
	
	 if( bs.hasErrors() ||  seat.equals(null) || user.getMovieId().isEmpty() || user.getUserName().isEmpty() || user.getEmail().isEmpty() || user.getPhoneNo().isEmpty()) {
		 return "redirect:/buyTicket/{user.getMovieId()}";
	 	
	 }else if(!bs.hasErrors() &&  !seat.equals(null) && !user.getUserName().isEmpty() && !user.getEmail().isEmpty() && !user.getPhoneNo().isEmpty()) {
			
	 		
		 int test=udao.insertUser(user);
			int status=dao.seatSelect(seat);
			
			
			if(status>0 && test>0){
				
				session.setAttribute("userName", user.getUserName());
				session.setAttribute("movieId", user.getMovieId());
				session.setAttribute("seats", user.getSeats());
				
			 return "redirect:/ticket";
			}
		
		}  else {
			 
		return "redirect:/userDetails"; 
		 }
	 	return "redirect:/userDetails"; 
 }
 
 @RequestMapping(value="/viewuser",method=RequestMethod.GET)
	public ModelAndView displayView(ModelMap model) {
		List<UserModel> list=udao.getAllUser();
		model.addAttribute("list", list);
		return new ModelAndView ("USR003","user",new UserModel());
		
	}
	
	  @RequestMapping(value="/userSearch",method=RequestMethod.GET) 
	  public String userDetil(@ModelAttribute ("user") UserModel user,ModelMap model) {
		String userName=user.getUserName() ;
		System.out.println(userName);
		if(!userName.isEmpty()) {

			List<UserModel> users=udao.search(userName);
			if(!users.isEmpty()) {
			model.addAttribute("list", users); 
			return "USR003";
			}else {
				List<UserModel> list=udao.getAllUser();
				model.addAttribute("list", list);
				model.addAttribute("error","User not Found!!");
				return "USR003";
			}
			
		}else {
			List<UserModel> list=udao.getAllUser();
			model.addAttribute("list", list);
			return "USR003";
		 
		}
	  }
	  
	  
}

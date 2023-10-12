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
import joc11.models.SeatModel;
import joc11.models.UserModel;




@Controller
public class SeatController {
	@Autowired
	SeatDao dao;
	
	
	
	
	
	 @RequestMapping(value = "/buyTicket/{movieId}",method = RequestMethod.GET )
	  public ModelAndView movieEdit(@PathVariable String movieId,ModelMap model,SeatModel seat) {
		 
		 List<SeatModel> seats = dao.getAllSeat(movieId);
		model.addAttribute("seats", seats);
		 model.addAttribute(movieId);
		 
		 return new ModelAndView("SE001","seat",new SeatModel()); 
		 }
	 
	 
	 
	 @RequestMapping(value = "/select",method = RequestMethod.POST )
	  public String userSelect(@ModelAttribute("seat")@Validated SeatModel seat ,BindingResult bs,ModelMap model,HttpSession session) {
			model.addAttribute("seat", seat);
			session.setAttribute("seat", seat);
			/* int status=dao.seatSelect(seat); */
			 if(bs.hasErrors() || seat.equals(null)) {
				 return "SE001";
			 }else {
				 
			return "redirect:/userDetails"; 
			 }
	 }
	 
	 
	 
	 @RequestMapping(value = "/reSelect",method = RequestMethod.POST )
	  public String reSelect(@ModelAttribute("seat") SeatModel seat ,ModelMap model) {
			/*
			 * int status=dao.seatSelect(seat);
			 * 
			 * if(status>0) { return ("SE001"); }else {
			 */
			 return ("SE001"); 
		
		
	 }
	 
	 
//	 @Autowired
//		SeatDao dao1;
//		@RequestMapping(value = "/test", method = RequestMethod.GET)
//		public String Seat(ModelMap model) {
//			List<SeatModel> seats = dao1.getAll();
//			model.addAttribute("seats", seats);
//			return "SE001";
//		}
	
}

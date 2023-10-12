package joc11.controllers;




import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import joc11.daos.TicketDao;
import joc11.models.TicketModel;




@Controller
public class TicketController {
	@Autowired
	TicketDao dao;
	
	@RequestMapping(value = "/ticket",method = RequestMethod.GET )
	  public String ticket(HttpSession session,ModelMap model) {
			String userName=(String) session.getAttribute("userName");
			String movieId=(String) session.getAttribute("movieId");
			String seats=(String) session.getAttribute("seats");
			
			System.out.println(userName +" " +movieId);
			List<TicketModel> list=dao.getTicket(userName, movieId,seats);
			model.addAttribute("list",list);
			
			
			for (TicketModel ticket : list) { 
		   TicketModel tickets=new TicketModel();
		   tickets.setId(ticket.getId()); 
		   tickets.setUserName(ticket.getUserName());
		   tickets.setMovieId(ticket.getMovieId());
		   tickets.setMovieName(ticket.getMovieName());
		   tickets.setShowTime(ticket.getShowTime());
		   tickets.setShowDate(ticket.getShowDate());
		   tickets.setNumberOfSeats(ticket.getNumberOfSeats());
		   tickets.setSeats(ticket.getSeats());
		   tickets.setTotalPrice(ticket.getTotalPrice());
		   dao.userTicket(tickets);
			}
			
			
			return "TK001"; 
			
	 }
}

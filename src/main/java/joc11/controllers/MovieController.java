package joc11.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import joc11.daos.MovieDao;
import joc11.daos.SeatDao;
import joc11.models.MovieModel;
import joc11.models.SeatModel;



@Controller
public class MovieController {
	@Autowired
	MovieDao dao;
	
	@Autowired
	SeatDao daos;
	@RequestMapping(value = "/",method = RequestMethod.GET )
	public ModelAndView movieView(ModelMap model) {
		List<MovieModel> movieList=dao.getNowshowingMovie();
		List<MovieModel> movieListAll=dao.getShowMovie();
		model.addAttribute("movieList", movieList) ;
		model.addAttribute("movieListAll", movieListAll) ;
		
	
		 
		return new ModelAndView ("MV001","movie",new MovieModel());
	}
	
		
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(@ModelAttribute("movie") @Validated MovieModel movie, BindingResult bindingResult,ModelMap model,HttpServletRequest request, HttpServletResponse response) {
		if(!movie.getMovieName().isEmpty()){
			List<MovieModel> movieListAll=dao.search(movie.getMovieName());
			if(movieListAll.size()==0) {
				List<MovieModel> movieList=dao.getNowshowingMovie();
				
				model.addAttribute("movieList", movieList) ;
				
				System.out.println("Movie not found");
				model.addAttribute("error", "Movie not found");
				return "MV001";
			}else {
				System.out.println("Movie  found");
				model.addAttribute("movieListAll", movieListAll);
				return "MV001";
		}
		
		
		}else if(bindingResult.hasErrors() || movie.getMovieName().isEmpty()) { 
			List<MovieModel> movieList=dao.getNowshowingMovie();
			List<MovieModel> movieListAll=dao.getShowMovie();
			model.addAttribute("movieList", movieList) ;
			model.addAttribute("movieListAll", movieListAll) ;
			System.out.println("All Movie");
			return "MV001"; 
		}
		return "MV001";
		
	}
	

	
	@RequestMapping(value = "/movieAdd",method = RequestMethod.GET)
	public ModelAndView movieAdd() {
		return new ModelAndView ("MV004","movie",new MovieModel());
	}
	@RequestMapping(value = "/movieAdd" ,method = RequestMethod.POST)
	public String movieAdd(@ModelAttribute("movie") @Validated MovieModel movie, BindingResult bindingResult,ModelMap model) throws IOException {
		if(bindingResult.hasErrors() || movie.getFile().isEmpty()) { 
			model.addAttribute("image_error", "ImageFile is null");
			return "MV004";
		}
		
		MultipartFile multipartFile = movie.getFile();
		String uploadPath = "D:\\AIWebDevelopment\\JOC11CINEMA\\src\\main\\webapp\\assets\\uploadImage" + File.separator;
		byte[] bytes = multipartFile.getBytes();
		String fileName = multipartFile.getOriginalFilename();
		Path path = Paths.get(uploadPath + multipartFile.getOriginalFilename());
		model.addAttribute("fileName", fileName);
		Files.write(path, bytes);
		System.out.println(multipartFile);
		System.out.println(fileName);
		
		
		int status = dao.insertMovie(movie);

		if (status == 0) {
			model.addAttribute("error","Add Fail,MovieId is Duplicate entry,so don't match MovieId");
			return "MV004";
			
		}else {
			return "redirect:/admin_movieView";
		}
	}
	
	
	
	@RequestMapping(value = "/admin_movieView",method = RequestMethod.GET )
	public ModelAndView admin_movieView(ModelMap model) {
		List<MovieModel> movieList=dao.getAllMovie();
		model.addAttribute("movieList", movieList) ;
		return new ModelAndView ("MV002","movie",new MovieModel());
	}
	
	
	
	
	@RequestMapping(value = "/movieSearch",method = RequestMethod.GET)
	public String movieSearch(@ModelAttribute("movie") @Validated MovieModel movie, BindingResult bindingResult,ModelMap model) {
		if(!movie.getMovieId().isEmpty() || !movie.getMovieName().isEmpty() || !movie.getShowDate().isEmpty()){
			List<MovieModel> movieList=dao.searchMovie(movie.getMovieId(), movie.getMovieName(),movie.getShowDate());
			if(movieList.size()==0) {
				System.out.println("Movie not found");
				model.addAttribute("error", "Movie not found");
				return "MV002";
			}else {
				System.out.println("Movie  found");
				model.addAttribute("movieList", movieList);
				return "MV002";
		}
		
		
		}else if(bindingResult.hasErrors() || movie.getMovieId().isEmpty() || movie.getMovieName().isEmpty() || movie.getShowDate().isEmpty()) { 
			List<MovieModel> movieList=dao.getAllMovie();
			System.out.println("All Movie");
			model.addAttribute("movieList",movieList);
			return "MV002"; 
		}
		return "MV002";
		
	}
	

	
	
	 @RequestMapping(value = "/movieEdit/{movieId}",method = RequestMethod.GET )
	  public ModelAndView movieEdit(@PathVariable String movieId,ModelMap model) {
		 
		 return new ModelAndView ("MV003","movie",dao.getMovieId(movieId)); 
		 }
	 
	 @RequestMapping(value = "/movieDelete/{movieId}",method = RequestMethod.GET )
		public String movieDelete(@PathVariable String movieId,ModelMap model) {
			int status=dao.seatSelectDelete(movieId);
			if(status==0) {
				return "MV003";
			}else {
				dao.movieDelete(movieId);
				return "redirect:/admin_movieView";
			}
			
		}
	 
	 @RequestMapping(value = "/movieUpdate",method = RequestMethod.POST )
		public String movieUpdate(@ModelAttribute("movie") MovieModel movie, @RequestParam("file") MultipartFile file, BindingResult bindingResult,ModelMap model) throws IOException {
			if(bindingResult.hasErrors() || file.isEmpty()) { 
				model.addAttribute("image_error", "ImageFile is null");
				return "MV003";
			}
			
			/* String fileName = StringUtils.cleanPath(file.getOriginalFilename()); */
		    
			MultipartFile multipartFile =movie.getFile();
			String uploadPath = "D:\\AIWebDevelopment\\JOC11CINEMA\\src\\main\\webapp\\assets\\uploadImage" + File.separator;
			byte[] bytes = multipartFile.getBytes();
			String fileName = multipartFile.getOriginalFilename();
			Path path = Paths.get(uploadPath + multipartFile.getOriginalFilename());
			model.addAttribute("fileName", fileName);
			Files.write(path, bytes);
			System.out.println(file);
			System.out.println(fileName);
			
			movie.setMovieImage(fileName);
			int status = dao.movieUpdate(movie);

			if (status == 0) {
				model.addAttribute("error","Add Fail,MovieId is Duplicate entry,so don't match MovieId");
				return "MV003";
				
			}else {
				return "redirect:/admin_movieView";
			}
			
		 }
}
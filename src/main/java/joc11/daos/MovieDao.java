package joc11.daos;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import joc11.helper.CinemaHelper;
import joc11.models.MovieModel;


@Service("movieDao")
public class MovieDao {
	public int insertMovie(MovieModel movie) {

		MultipartFile multipartFile = movie.getFile();
		

		String fileName = multipartFile.getOriginalFilename();
	
		System.out.println(multipartFile);

		int status = 0;
		String query = "insert into movie(movieId,movieName,movieType,showTime,showDate,subTitle,shortStory,movieImage) values(?,?,?,?,?,?,?,?)";
		Connection con = CinemaHelper.getInstance().getConnection();

		try {

			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, movie.getMovieId());
			ps.setString(2, movie.getMovieName());
			ps.setString(3, movie.getMovieType());
			ps.setString(4, movie.getShowTime());
			ps.setString(5, movie.getShowDate());
			ps.setString(6, movie.getSubTitle());
			ps.setString(7, movie.getShortStory());
			ps.setString(8, fileName);

			status = ps.executeUpdate();

			if (status > 0) {
				System.out.println("Image added into database successfully.");

			}

			else {
				System.out.println("Failed to upload image.");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return status;
	}

	public List<MovieModel> getNowshowingMovie() {
		List<MovieModel> movies = new ArrayList<MovieModel>();
		String query = "SELECT *\r\n"
				+ "FROM movie WHERE showDate > DATE(NOW())\r\n"
				+ "ORDER BY showDate,\r\n"
				+ "  CASE\r\n"
				+ "    WHEN showTime LIKE '%AM' THEN CONCAT('00:', SUBSTRING_INDEX(showTime, ':', -2), ':00')\r\n"
				+ "    WHEN showTime LIKE '%PM' THEN CONCAT('12:', SUBSTRING_INDEX(showTime, ':', -2), ':00')\r\n"
				+ "    ELSE showTime\r\n"
				+ "  END ASC  limit 3";
		Connection con = CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				MovieModel movie = new MovieModel(
									rs.getString("movieId"), 
									rs.getString("movieName"),
									rs.getString("movieType"), 
									rs.getString("showTime"),
									rs.getString("showDate"), 
									rs.getString("subTitle"),
									rs.getString("shortStory"), 
									rs.getString("movieImage"));
				movies.add(movie);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return movies;
	}
	
	public List<MovieModel> getShowMovie() {
		List<MovieModel> movies = new ArrayList<MovieModel>();
		String query = "SELECT *\r\n"
				+ "FROM movie WHERE showDate > DATE_ADD(DATE(NOW()), INTERVAL 1 DAY)\r\n"
				+ "ORDER BY showDate,\r\n"
				+ "  CASE\r\n"
				+ "    WHEN showTime LIKE '%AM' THEN CONCAT('00:', SUBSTRING_INDEX(showTime, ':', -2), ':00')\r\n"
				+ "    WHEN showTime LIKE '%PM' THEN CONCAT('12:', SUBSTRING_INDEX(showTime, ':', -2), ':00')\r\n"
				+ "    ELSE showTime\r\n"
				+ "  END ASC  \r\n"
				+ "LIMIT 6";
		Connection con = CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				MovieModel movie = new MovieModel(
									rs.getString("movieId"), 
									rs.getString("movieName"),
									rs.getString("movieType"), 
									rs.getString("showTime"),
									rs.getString("showDate"), 
									rs.getString("subTitle"),
									rs.getString("shortStory"), 
									rs.getString("movieImage"));
				movies.add(movie);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return movies;
	}


	
	public List<MovieModel> getAllMovie() {
		List<MovieModel> movies = new ArrayList<MovieModel>();
		String query = "select * from movie order by showDate";
		Connection con = CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				MovieModel movie = new MovieModel(
									rs.getString("movieId"), 
									rs.getString("movieName"),
									rs.getString("movieType"), 
									rs.getString("showTime"),
									rs.getString("showDate"), 
									rs.getString("subTitle"),
									rs.getString("shortStory"), 
									rs.getString("movieImage"));
				movies.add(movie);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return movies;
	}

public List<MovieModel> search(String movieName){ 
		
		List<MovieModel> movies=new ArrayList<MovieModel>();
		String query="SELECT * FROM movie WHERE movieName = ? AND DATE(showDate) > DATE(NOW()) ORDER BY showDate";
		Connection con=CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, movieName);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				MovieModel movie = new MovieModel();

				movie.setMovieId(rs.getString("movieId"));
				movie.setMovieName(rs.getString("movieName"));
				movie.setMovieType(rs.getString("movieType"));
				movie.setShowTime(rs.getString("showTime"));
				movie.setShowDate(rs.getString("showDate"));
				movie.setSubTitle(rs.getString("subTitle"));
				movie.setShortStory(rs.getString("shortStory"));
				movie.setMovieImage(rs.getString("movieImage"));
				movies.add(movie);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return movies;
	}

	
	
	public List<MovieModel> searchMovie(String movieId,String movieName,String showDate){ 
		
		List<MovieModel> movies=new ArrayList<MovieModel>();
		String query="select * from movie where movieId=? or movieName=? or showDate=?";
		Connection con=CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, movieId);
			ps.setString(2, movieName);
			ps.setString(3, showDate);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				MovieModel movie = new MovieModel();

				movie.setMovieId(rs.getString("movieId"));
				movie.setMovieName(rs.getString("movieName"));
				movie.setMovieType(rs.getString("movieType"));
				movie.setShowTime(rs.getString("showTime"));
				movie.setShowDate(rs.getString("showDate"));
				movie.setSubTitle(rs.getString("subTitle"));
				movie.setShortStory(rs.getString("shortStory"));
				movie.setMovieImage(rs.getString("movieImage"));
				movies.add(movie);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return movies;
	}

		
	public int movieDelete(String movieId){
		int status=0;
		String query="delete from movie where movieId=?";
		Connection con=CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, movieId);
			status=ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return status;
	}
	
	
	public int seatSelectDelete(String movieId){
		int status=0;
		String query="delete from seat_select where movieId=?";
		Connection con=CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, movieId);
			status=ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return status;
	}
	
	public MovieModel getMovieId(String  movieId) {
		 MovieModel movie=null;
		  try{ 
		  	  Connection con=CinemaHelper.getInstance().getConnection(); 
		  	  PreparedStatement ps=con.prepareStatement("select * from movie where movieId=?");
		  	  ps.setString(1,movieId); 
		  	  ResultSet rs=ps.executeQuery(); 
		  	  while(rs.next()){ 
		  		movie = new  MovieModel(); 
		  		movie.setMovieId(rs.getString("movieId"));
				movie.setMovieName(rs.getString("movieName"));
				movie.setMovieType(rs.getString("movieType"));
				movie.setShowTime(rs.getString("showTime"));
				movie.setShowDate(rs.getString("showDate"));
				movie.setSubTitle(rs.getString("subTitle"));
				movie.setShortStory(rs.getString("shortStory"));
				movie.setMovieImage(rs.getString("movieImage"));}
		  		
		  }catch(Exception e){ 
		  	 System.out.println(e); 
		  	 } 
		  return movie; 
		  }
	
	public int movieUpdate(MovieModel movie) {
		int status=0;
	
		String query="update movie set movieName=?,movieType=?,showTime=?,showDate=?,subTitle=?,shortStory=?,movieImage=? where movieId=?";
		Connection con=CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(query);
			
			
			ps.setString(1, movie.getMovieName());
			ps.setString(2, movie.getMovieType());
			ps.setString(3, movie.getShowTime());
			ps.setString(4, movie.getShowDate());
			ps.setString(5, movie.getSubTitle());
			ps.setString(6, movie.getShortStory());
			ps.setString(7, movie.getMovieImage());
			ps.setString(8, movie.getMovieId());
			status=ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		return status;
	}




}

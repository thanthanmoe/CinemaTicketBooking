package joc11.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import joc11.helper.CinemaHelper;
import joc11.models.TicketModel;



@Service("ticketDao")
public class TicketDao {
	public List<TicketModel> getTicket(String userName,String movieId,String seats) {
		List<TicketModel> users = new ArrayList<TicketModel>();
		String query = "select user.id,user.userName,user.movieId,movie.movieName,movie.showTime,movie.showDate,movie.shortStory,movie.movieImage,user.numberOfSeats,user.seats,user.totalPrice\r\n"
				+ "from user left join movie on user.movieId=movie.movieId  where userName=? and movie.movieId=? and seats=?";
		Connection con = CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, userName);
			ps.setString(2, movieId);
			ps.setString(3, seats);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				TicketModel user = new TicketModel(
									rs.getInt("id"), 
									rs.getString("userName"),
									rs.getString("movieId"), 
									rs.getString("movieName"),
									rs.getString("showTime"),
									rs.getString("showDate"),
									rs.getString("shortStory"), 
									rs.getString("movieImage"),
									rs.getString("numberOfSeats"),
									rs.getString("seats"),
									rs.getInt("totalPrice"));
				users.add(user);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return users;
	}
	
	public int userTicket(TicketModel ticket) {


		int status = 0;
		String query = "insert into ticket(userName,movieId,movieName,showTime,showDate,numberOfSeats,seats,totalPrice) values(?,?,?,?,?,?,?,?)";
		Connection con = CinemaHelper.getInstance().getConnection();

		try {

			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, ticket.getUserName());
			ps.setString(2, ticket.getMovieId());
			ps.setString(3, ticket.getMovieName());
			ps.setString(4, ticket.getShowTime());
			ps.setString(5, ticket.getShowDate());
			ps.setString(6, ticket.getNumberOfSeats());
			ps.setString(7, ticket.getSeats());
			ps.setInt(8, ticket.getTotalPrice());

			status = ps.executeUpdate();

			if (status > 0) {
				System.out.println("successfully.");

			}

			else {
				System.out.println("Failed.");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return status;
	}

}

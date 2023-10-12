package joc11.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;


import joc11.helper.CinemaHelper;
import joc11.models.MovieModel;
import joc11.models.UserModel;

@Service("userDao")
public class UserDao {
	public int insertUser(UserModel user) {


		int status = 0;
		String query = "insert into user(userName,email,phNo,movieId,numberOfSeats,seats,totalPrice) values(?,?,?,?,?,?,?)";
		Connection con = CinemaHelper.getInstance().getConnection();

		try {

			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPhoneNo());
			ps.setString(4, user.getMovieId());
		
			ps.setString(5, user.getNumberOfSeats());
			ps.setString(6, user.getSeats());
			ps.setInt(7, user.getTotalPrice());

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

	public List<UserModel> getAllUser() {
		List<UserModel> users = new ArrayList<UserModel>();
		String query = "select user.id,user.userName,user.email,user.phNo,user.numberOfSeats,user.seats,user.movieId,movie.movieName,user.totalPrice\r\n"
				+ "from user left join movie on user.movieId=movie.movieId;";
		Connection con = CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				UserModel user = new UserModel(
									rs.getInt("id"), 
									rs.getString("userName"),
									rs.getString("email"), 
									rs.getString("phNo"),
									rs.getString("movieId"),
									rs.getString("movieName"),
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
	
	
	
	public List<UserModel> searchUser(String userName) {
		List<UserModel> users=new ArrayList<UserModel>();
		String query="select * from user where userName=?";
		Connection con = CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps= con.prepareStatement(query);
			ps.setString(1, userName);
			ResultSet rs=ps.executeQuery();
			UserModel user=new UserModel(rs.getInt("id"),
					rs.getString("userName"),
					rs.getString("email"),
					rs.getString("phNo"),
					rs.getString("movieId"),
					rs.getString("numberOfSeats"),
					rs.getString("seats"),
					rs.getInt("totalPrice"));
				users.add(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}
	
	
public List<UserModel> search(String userName){ 
		
		List<UserModel> users=new ArrayList<UserModel>();
		String query="select * from user where userName=?";
		Connection con=CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, userName);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				UserModel user = new UserModel();

				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("userName"));
				user.setEmail(rs.getString("email"));
				user.setPhoneNo(rs.getString("phNo"));
				user.setMovieId(rs.getString("movieId"));
				user.setNumberOfSeats(rs.getString("numberOfSeats"));
				user.setSeats(rs.getString("seats"));
				
				users.add(user);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return users;
	}

	
}

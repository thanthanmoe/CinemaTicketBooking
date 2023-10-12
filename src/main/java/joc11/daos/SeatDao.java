package joc11.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import org.springframework.stereotype.Service;

import joc11.helper.CinemaHelper;

import joc11.models.SeatModel;


@Service("seatDao")
public class SeatDao {
	
	
	
	SeatModel seat;
	

	
	public List<SeatModel> getAllSeat(String movieId) {
		List<SeatModel> seats = new ArrayList<SeatModel>();
		String query = "SELECT * FROM joc11_cinema.seat_select where movieId=?";
		Connection con = CinemaHelper.getInstance().getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,movieId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				seat = new SeatModel(rs.getInt("id"), rs.getString("movieId"),
						rs.getBoolean("s01"),rs.getBoolean("s02"),
						rs.getBoolean("s03"),rs.getBoolean("s04"),
						rs.getBoolean("s05"),rs.getBoolean("s06"),
						rs.getBoolean("s07"),rs.getBoolean("s08"),
						rs.getBoolean("s09"),rs.getBoolean("s10"),
						rs.getBoolean("s11"),rs.getBoolean("s12"),
						rs.getBoolean("s13"),rs.getBoolean("s14"),
						rs.getBoolean("s15"),rs.getBoolean("s16"),
						rs.getBoolean("s17"),rs.getBoolean("s18"),
						rs.getBoolean("s19"),rs.getBoolean("s20"),
						rs.getBoolean("s21"),rs.getBoolean("s22"),
						rs.getBoolean("s23"),rs.getBoolean("s24"),
						rs.getBoolean("s25"),rs.getBoolean("s26"),rs.getBoolean("s27"),
						
						rs.getBoolean("v01"),rs.getBoolean("v02"),
						rs.getBoolean("v03"),rs.getBoolean("v04"),
						rs.getBoolean("v05"),rs.getBoolean("v06"),
						rs.getBoolean("v07"),rs.getBoolean("v08"),
						rs.getBoolean("v09"),rs.getBoolean("v10"),
						rs.getBoolean("v11"),rs.getBoolean("v12"),
						rs.getBoolean("v13"),rs.getBoolean("v14"),
						rs.getBoolean("v15"),rs.getBoolean("v16"),
						rs.getBoolean("v17"),rs.getBoolean("v18"),
						
						rs.getBoolean("c01"),rs.getBoolean("c02"),
						rs.getBoolean("c03"),rs.getBoolean("c04"),
						rs.getBoolean("c05"),rs.getBoolean("c06"),
						rs.getBoolean("c07"),rs.getBoolean("c08"),
						rs.getBoolean("c09"),rs.getBoolean("c10"),
						rs.getBoolean("c11"),rs.getBoolean("c12"));

				seats.add(seat);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return seats;
	}

	
	  public int seatSelect(SeatModel seat) {
		  int status = 0; String query ="insert into seat_select(movieId,s01,s02,s03,s04,s05,s06,s07,s08,\r\n"
		  		+ "s09,s10,s11,s12,s13,s14,s15,s16,\r\n"
		  		+ "s17,s18,s19,s20,s21,s22,s23,s24,\r\n"
		  		+ "s25,s26,s27,v01,v02,v03,v04,\r\n"
		  		+ "v05,v06,v07,v08,v09,v10,v11,v12,\r\n"
		  		+ "v13,v14,v15,v16,v17,v18,c01,c02,c03,c04,\r\n"
		  		+ "c05,c06,c07,c08,c09,c10,c11,c12) "
		  		+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"
		  		+ "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"
		  		+ "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; 
		  Connection con = CinemaHelper.getInstance().getConnection();
		
			 try {
			
			 PreparedStatement ps = con.prepareStatement(query); 
			 ps.setString(1, seat.getMovieId()); 
			 ps.setBoolean(2, seat.getS01());
			 ps.setBoolean(3, seat.getS02());
			 ps.setBoolean(4, seat.getS03());
			 ps.setBoolean(5, seat.getS04());
			 ps.setBoolean(6, seat.getS05());
			 ps.setBoolean(7, seat.getS06());
			 ps.setBoolean(8, seat.getS07());
			 ps.setBoolean(9, seat.getS08());
			 ps.setBoolean(10, seat.getS09());
			 ps.setBoolean(11, seat.getS10());
			 ps.setBoolean(12, seat.getS11());
			 ps.setBoolean(13, seat.getS12());
			 ps.setBoolean(14, seat.getS13());
			 ps.setBoolean(15, seat.getS14());
			 ps.setBoolean(16, seat.getS15());
			 ps.setBoolean(17, seat.getS16());
			 ps.setBoolean(18, seat.getS17());
			 ps.setBoolean(19, seat.getS18());
			 ps.setBoolean(20, seat.getS19());
			 ps.setBoolean(21, seat.getS20());
			 ps.setBoolean(22, seat.getS21());
			 ps.setBoolean(23, seat.getS22());
			 ps.setBoolean(24, seat.getS23());
			 ps.setBoolean(25 ,seat.getS24());
			 ps.setBoolean(26, seat.getS25());
			 ps.setBoolean(27, seat.getS26());
			 ps.setBoolean(28, seat.getS27());

			 ps.setBoolean(29, seat.getV01());
			 ps.setBoolean(30, seat.getV02());
			 ps.setBoolean(31, seat.getV03());
			 ps.setBoolean(32, seat.getV04());
			 ps.setBoolean(33, seat.getV05());
			 ps.setBoolean(34, seat.getV06());
			 ps.setBoolean(35, seat.getV07());
			 ps.setBoolean(36, seat.getV08());
			 ps.setBoolean(37, seat.getV09());
			 ps.setBoolean(38, seat.getV10());
			 ps.setBoolean(39, seat.getV11());
			 ps.setBoolean(40, seat.getV12());
			 ps.setBoolean(41, seat.getV13());
			 ps.setBoolean(42, seat.getV14());
			 ps.setBoolean(43, seat.getV15());
			 ps.setBoolean(44, seat.getV16());
			 ps.setBoolean(45, seat.getV17());
			 ps.setBoolean(46, seat.getV18());

			 ps.setBoolean(47, seat.getC01());
			 ps.setBoolean(48, seat.getC02());
			 ps.setBoolean(49, seat.getC03());
			 ps.setBoolean(50, seat.getC04());
			 ps.setBoolean(51, seat.getC05());
			 ps.setBoolean(52, seat.getC06());
			 ps.setBoolean(53, seat.getC07());
			 ps.setBoolean(54, seat.getC08());
			 ps.setBoolean(55, seat.getC09());
			 ps.setBoolean(56, seat.getC10());
			 ps.setBoolean(57, seat.getC11());
			 ps.setBoolean(58, seat.getC12());
			 
			 status = ps.executeUpdate();
			  
			  
			  } catch (SQLException e) { 
				  System.out.println(e.getMessage());
			  e.printStackTrace(); 
			  } 
			 return status; 
			 }
			  

}

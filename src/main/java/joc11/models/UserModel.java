package joc11.models;



import org.springframework.stereotype.Service;

@Service
public class UserModel {
	private int id;
	
	
	private String userName;

	private String email;
	
	private String phoneNo;
	
	private String movieId;
	private String movieName;
	private String numberOfSeats;
	
	private String seats;
	private int totalPrice;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getMovieId() {
		return movieId;
	}
	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getNumberOfSeats() {
		return numberOfSeats;
	}
	public void setNumberOfSeats(String numberOfSeats) {
		this.numberOfSeats = numberOfSeats;
	}
	public String getSeats() {
		return seats;
	}
	public void setSeats(String seats) {
		this.seats = seats;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public UserModel() {
		super();
	}
	public UserModel(String userName, String email, String phoneNo, String movieId, String numberOfSeats, String seats,
			int totalPrice) {
		super();
		this.userName = userName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.movieId = movieId;
		this.numberOfSeats = numberOfSeats;
		this.seats = seats;
		this.totalPrice = totalPrice;
	}
	public UserModel(int id, String userName, String email, String phoneNo, String movieId, String movieName,
			String numberOfSeats, String seats, int totalPrice) {
		super();
		this.id = id;
		this.userName = userName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.movieId = movieId;
		this.movieName = movieName;
		this.numberOfSeats = numberOfSeats;
		this.seats = seats;
		this.totalPrice = totalPrice;
	}
	public UserModel(int id, String userName, String email, String phoneNo, String movieId, String numberOfSeats,
			String seats, int totalPrice) {
		super();
		this.id = id;
		this.userName = userName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.movieId = movieId;
		this.numberOfSeats = numberOfSeats;
		this.seats = seats;
		this.totalPrice = totalPrice;
	}
	
	
	
	
}

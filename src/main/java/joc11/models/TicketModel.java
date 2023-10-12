package joc11.models;


public class TicketModel {
	
private int id;
		
private String userName;
private String movieId;
private String movieName;
private String showTime;
private String showDate;
private String shortStory;
private String movieImage;
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
public String getShowTime() {
	return showTime;
}
public void setShowTime(String showTime) {
	this.showTime = showTime;
}
public String getShowDate() {
	return showDate;
}
public void setShowDate(String showDate) {
	this.showDate = showDate;
}
public String getShortStory() {
	return shortStory;
}
public void setShortStory(String shortStory) {
	this.shortStory = shortStory;
}
public String getMovieImage() {
	return movieImage;
}
public void setMovieImage(String movieImage) {
	this.movieImage = movieImage;
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
public TicketModel(int id, String userName, String movieId, String movieName, String showTime, String showDate,
		String shortStory, String movieImage, String numberOfSeats, String seats) {
	super();
	this.id = id;
	this.userName = userName;
	this.movieId = movieId;
	this.movieName = movieName;
	this.showTime = showTime;
	this.showDate = showDate;
	this.shortStory = shortStory;
	this.movieImage = movieImage;
	this.numberOfSeats = numberOfSeats;
	this.seats = seats;
}
public TicketModel() {
	super();
}

public TicketModel(int id, String userName, String movieId, String movieName, String showTime, String showDate,
		String shortStory, String movieImage, String numberOfSeats, String seats, int totalPrice) {
	super();
	this.id = id;
	this.userName = userName;
	this.movieId = movieId;
	this.movieName = movieName;
	this.showTime = showTime;
	this.showDate = showDate;
	this.shortStory = shortStory;
	this.movieImage = movieImage;
	this.numberOfSeats = numberOfSeats;
	this.seats = seats;
	this.totalPrice = totalPrice;
}




}

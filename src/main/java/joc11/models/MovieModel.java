package joc11.models;


import javax.validation.constraints.NotBlank;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
@Service
public class MovieModel {
	@NotBlank(message = "MovieID must be null")
private String movieId;
	@NotBlank(message = "MovieName must be null")
private String movieName;
	@NotBlank(message = "MovieType must be null")
private String movieType;
	@NotBlank(message = "MovieTime must be null")
private String showTime;
	@NotBlank(message = "ShowDate must be null")
private String showDate;
	@NotBlank(message = "SubTitle must be null")
private String subTitle;
	@NotBlank(message = "ShortStory must be null")
private String shortStory;
	
private MultipartFile file;

private String movieImage;
	
	
	
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
public String getMovieType() {
	return movieType;
}
public void setMovieType(String movieType) {
	this.movieType = movieType;
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
public void setShowDate(String showdate) {
	this.showDate = showdate;
}
public String getSubTitle() {
	return subTitle;
}
public void setSubTitle(String subTitle) {
	this.subTitle = subTitle;
}
public String getShortStory() {
	return shortStory;
}
public void setShortStory(String shortStory) {
	this.shortStory = shortStory;
}
public MultipartFile getFile() {
	return file;
}
public void setFile(MultipartFile file) {
	this.file = file;
}
public String getMovieImage() {
	return movieImage;
}
public void setMovieImage(String movieImage) {
	this.movieImage = movieImage;
}
public MovieModel(String movieId, String movieName, String movieType, String showTime, String showDate, String subTitle,
		String shortStory, String movieImage) {
	super();
	this.movieId = movieId;
	this.movieName = movieName;
	this.movieType = movieType;
	this.showTime = showTime;
	this.showDate = showDate;
	this.subTitle = subTitle;
	this.shortStory = shortStory;
	this.movieImage = movieImage;
}
public MovieModel() {
	super();
}
public MovieModel(String movieId,String movieName, String showDate) {
	super();
	this.movieId = movieId;
	this.movieName = movieName;
	this.showDate = showDate;
}


}

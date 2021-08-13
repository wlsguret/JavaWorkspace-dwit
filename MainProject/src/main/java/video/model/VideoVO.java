package video.model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class VideoVO {

	int id;
	String url;
	String imgFile;
	String artist;
	String title;
	Date releaseDate;
	String formatDate;
	public static DateFormat format = new SimpleDateFormat("yyyy/MM/dd");
//	// 날짜 형식을 String으로 혹은 String을 날짜 형식으로 변환하기 위한 포맷형식이다.
//	DateFormat format = new SimpleDateFormat("yyyy/MM/dd");
//	// Date 값을 가져와서 String으로 변환한다.
//	String datestr = format.format(Date date);
//	// Date 객체를 선언해서 String으로 변환한다.
//	datestr = format.format(new Date());
//	// String 형식을 Date형식으로 변환한다.
//	Date date = format.parse("2019/06/29");

	public VideoVO() {
	}

	public VideoVO(String url, String imgFile, String artist, String title, Date releaseDate) {
		this.url = url;
		this.imgFile = imgFile;
		this.artist = artist;
		this.title = title;
		this.releaseDate = releaseDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImgFile() {
		return imgFile;
	}

	public void setImgFile(String imgFile) {
		this.imgFile = imgFile;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
		this.formatDate = format.format(releaseDate);
	}

	public String getformatDate() {
		return formatDate;
	}

	public void setformatDate(String formatDate) {
		this.formatDate = formatDate;
	}

	@Override
	public String toString() {
		return "VideoVO [id=" + id + ", url=" + url + ", imgFile=" + imgFile + ", artist=" + artist + ", title=" + title
				+ ", releaseDate=" + releaseDate + ", formatDate=" + formatDate + "]";
	}

}

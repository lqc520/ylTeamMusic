package entity;

public class ChangeMusicType {

	private String title;
	private String artist;
	private String mp3;
	private String poster;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public String getMp3() {
		return mp3;
	}
	public void setMp3(String mp3) {
		this.mp3 = mp3;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public ChangeMusicType(String title, String artist, String mp3, String poster) {
		super();
		this.title = title;
		this.artist = artist;
		this.mp3 = mp3;
		this.poster = poster;
	}
	public ChangeMusicType() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ChangeMusicType [title=" + title + ", artist=" + artist + ", mp3=" + mp3 + ", poster=" + poster + "]";
	}
	
}

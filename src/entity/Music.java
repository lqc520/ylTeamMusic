package entity;

import java.util.Date;

public class Music {
    private Integer musicid;

    private String musicname;

    private String musicphotourl;

    private Integer singerid;

    private Integer musichot;

    private String lyricurl;

    private Integer musictypeid;

    private String songurl;

    private Date time;

    private String musictime;
    
    private String singername;

    public Integer getMusicid() {
        return musicid;
    }

    public void setMusicid(Integer musicid) {
        this.musicid = musicid;
    }

    public String getMusicname() {
        return musicname;
    }

    public void setMusicname(String musicname) {
        this.musicname = musicname == null ? null : musicname.trim();
    }

    public String getMusicphotourl() {
        return musicphotourl;
    }

    public void setMusicphotourl(String musicphotourl) {
        this.musicphotourl = musicphotourl == null ? null : musicphotourl.trim();
    }

    public Integer getSingerid() {
        return singerid;
    }

    public void setSingerid(Integer singerid) {
        this.singerid = singerid;
    }

    public Integer getMusichot() {
        return musichot;
    }

    public void setMusichot(Integer musichot) {
        this.musichot = musichot;
    }

    public String getLyricurl() {
        return lyricurl;
    }

    public void setLyricurl(String lyricurl) {
        this.lyricurl = lyricurl == null ? null : lyricurl.trim();
    }

    public Integer getMusictypeid() {
        return musictypeid;
    }

    public void setMusictypeid(Integer musictypeid) {
        this.musictypeid = musictypeid;
    }

    public String getSongurl() {
        return songurl;
    }

    public void setSongurl(String songurl) {
        this.songurl = songurl == null ? null : songurl.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getMusictime() {
        return musictime;
    }

    public void setMusictime(String musictime) {
        this.musictime = musictime == null ? null : musictime.trim();
    }

	public String getSingername() {
		return singername;
	}

	public void setSingername(String singername) {
		this.singername = singername;
	}

	public Music(String musicname, String musicphotourl, Integer singerid, Integer musichot, String lyricurl,
			Integer musictypeid, String songurl, Date time, String musictime, String singername) {
		super();
		this.musicname = musicname;
		this.musicphotourl = musicphotourl;
		this.singerid = singerid;
		this.musichot = musichot;
		this.lyricurl = lyricurl;
		this.musictypeid = musictypeid;
		this.songurl = songurl;
		this.time = time;
		this.musictime = musictime;
		this.singername = singername;
	}

	public Music() {
		super();
		// TODO 自动生成的构造函数存根
	}

	public Music(String musicname, String musicphotourl, Integer singerid, Integer musichot, String lyricurl,
			Integer musictypeid, String songurl, Date time) {
		super();
		this.musicname = musicname;
		this.musicphotourl = musicphotourl;
		this.singerid = singerid;
		this.musichot = musichot;
		this.lyricurl = lyricurl;
		this.musictypeid = musictypeid;
		this.songurl = songurl;
		this.time = time;
	}

	public Music(Integer musicid, String musicname, String musicphotourl, Integer singerid, Integer musichot,
			String lyricurl, Integer musictypeid, String songurl, Date time) {
		super();
		this.musicid = musicid;
		this.musicname = musicname;
		this.musicphotourl = musicphotourl;
		this.singerid = singerid;
		this.musichot = musichot;
		this.lyricurl = lyricurl;
		this.musictypeid = musictypeid;
		this.songurl = songurl;
		this.time = time;
	}
	
    
    
}
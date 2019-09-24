package entity;

import java.util.Date;

public class Video {
    private Integer videoid;

    private String videoname;

    private String videoauthor;

    private String videophoto;

    private String videourl;

    private Date videotime;

    public Integer getVideoid() {
        return videoid;
    }

    public void setVideoid(Integer videoid) {
        this.videoid = videoid;
    }

    public String getVideoname() {
        return videoname;
    }

    public void setVideoname(String videoname) {
        this.videoname = videoname == null ? null : videoname.trim();
    }

    public String getVideoauthor() {
        return videoauthor;
    }

    public void setVideoauthor(String videoauthor) {
        this.videoauthor = videoauthor == null ? null : videoauthor.trim();
    }

    public String getVideophoto() {
        return videophoto;
    }

    public void setVideophoto(String videophoto) {
        this.videophoto = videophoto == null ? null : videophoto.trim();
    }

    public String getVideourl() {
        return videourl;
    }

    public void setVideourl(String videourl) {
        this.videourl = videourl == null ? null : videourl.trim();
    }

    public Date getVideotime() {
        return videotime;
    }

    public void setVideotime(Date videotime) {
        this.videotime = videotime;
    }

	@Override
	public String toString() {
		return "Video [videoid=" + videoid + ", videoname=" + videoname + ", videoauthor=" + videoauthor
				+ ", videophoto=" + videophoto + ", videourl=" + videourl + ", videotime=" + videotime + "]";
	}

	public Video(String videoname, String videoauthor, String videophoto, String videourl, Date videotime) {
		super();
		this.videoname = videoname;
		this.videoauthor = videoauthor;
		this.videophoto = videophoto;
		this.videourl = videourl;
		this.videotime = videotime;
	}

	public Video() {
		super();
		// TODO 自动生成的构造函数存根
	}

	public Video(Integer videoid, String videoname, String videoauthor, String videophoto, String videourl,
			Date videotime) {
		super();
		this.videoid = videoid;
		this.videoname = videoname;
		this.videoauthor = videoauthor;
		this.videophoto = videophoto;
		this.videourl = videourl;
		this.videotime = videotime;
	}
    
}
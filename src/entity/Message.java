package entity;

import java.sql.Date;

public class Message {
    private Integer messageid;

    private String nessagename;

    private String messageemail;

    private String messagecomment;

    private Date messagetime;

    private Integer videoid;

    public Integer getMessageid() {
        return messageid;
    }

    public Message(String nessagename, String messageemail, String messagecomment, Date messagetime, Integer videoid) {
		super();
		this.nessagename = nessagename;
		this.messageemail = messageemail;
		this.messagecomment = messagecomment;
		this.messagetime = messagetime;
		this.videoid = videoid;
	}

	public Message() {
		super();
	}

	public void setMessageid(Integer messageid) {
        this.messageid = messageid;
    }

    public String getNessagename() {
        return nessagename;
    }

    public void setNessagename(String nessagename) {
        this.nessagename = nessagename == null ? null : nessagename.trim();
    }

    public String getMessageemail() {
        return messageemail;
    }

    public void setMessageemail(String messageemail) {
        this.messageemail = messageemail == null ? null : messageemail.trim();
    }

    public String getMessagecomment() {
        return messagecomment;
    }

    public void setMessagecomment(String messagecomment) {
        this.messagecomment = messagecomment == null ? null : messagecomment.trim();
    }

    public Date getMessagetime() {
        return messagetime;
    }

    public void setMessagetime(Date messagetime) {
        this.messagetime = messagetime;
    }

    public Integer getVideoid() {
        return videoid;
    }

    public void setVideoid(Integer videoid) {
        this.videoid = videoid;
    }

	@Override
	public String toString() {
		return "Message [messageid=" + messageid + ", nessagename=" + nessagename + ", messageemail=" + messageemail
				+ ", messagecomment=" + messagecomment + ", messagetime=" + messagetime + ", videoid=" + videoid + "]";
	}
    
}
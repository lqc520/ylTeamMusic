package entity;

public class User {
    private Integer userid;

    private String username;

    private String useremail;

    private String userpwd;

    private String phone;

    private String address;
    
    public User(String username, String useremail, String userpwd) {
		super();
		this.username = username;
		this.useremail = useremail;
		this.userpwd = userpwd;
	}

	public User() {
		super();
		// TODO 自动生成的构造函数存根
	}

	public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd == null ? null : userpwd.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

	public User(Integer userid, String username, String useremail, String userpwd, String phone, String address) {
		super();
		this.userid = userid;
		this.username = username;
		this.useremail = useremail;
		this.userpwd = userpwd;
		this.phone = phone;
		this.address = address;
	}

	public User(String username, String useremail, String userpwd, String phone, String address) {
		super();
		this.username = username;
		this.useremail = useremail;
		this.userpwd = userpwd;
		this.phone = phone;
		this.address = address;
	}
    
}
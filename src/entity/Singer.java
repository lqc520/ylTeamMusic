package entity;

public class Singer {
    private Integer singerid;

    private String singername;

    private String singerphotourl;

    private Integer singerhot;

    private Integer typeid;

    private String address;

    public Integer getSingerid() {
        return singerid;
    }

    public void setSingerid(Integer singerid) {
        this.singerid = singerid;
    }

    public String getSingername() {
        return singername;
    }

    public void setSingername(String singername) {
        this.singername = singername == null ? null : singername.trim();
    }

    public String getSingerphotourl() {
        return singerphotourl;
    }

    public void setSingerphotourl(String singerphotourl) {
        this.singerphotourl = singerphotourl == null ? null : singerphotourl.trim();
    }

    public Integer getSingerhot() {
        return singerhot;
    }

    public void setSingerhot(Integer singerhot) {
        this.singerhot = singerhot;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }
}
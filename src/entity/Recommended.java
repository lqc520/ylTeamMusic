package entity;

public class Recommended {
    private Integer recommendedid;

    private String recommendedname;

    private String photourl;

    public Integer getRecommendedid() {
        return recommendedid;
    }

    public void setRecommendedid(Integer recommendedid) {
        this.recommendedid = recommendedid;
    }

    public String getRecommendedname() {
        return recommendedname;
    }

    public void setRecommendedname(String recommendedname) {
        this.recommendedname = recommendedname == null ? null : recommendedname.trim();
    }

    public String getPhotourl() {
        return photourl;
    }

    public void setPhotourl(String photourl) {
        this.photourl = photourl == null ? null : photourl.trim();
    }
}
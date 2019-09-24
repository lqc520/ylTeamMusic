package entity;

public class MusicType {
    private Integer musictypeid;

    private String musictypename;

    public Integer getMusictypeid() {
        return musictypeid;
    }

    public void setMusictypeid(Integer musictypeid) {
        this.musictypeid = musictypeid;
    }

    public String getMusictypename() {
        return musictypename;
    }

    public void setMusictypename(String musictypename) {
        this.musictypename = musictypename == null ? null : musictypename.trim();
    }
}
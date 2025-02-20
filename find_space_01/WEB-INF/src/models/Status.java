package models;

public class Status {
    //-----------------field summary------------------------
    private Integer statusId;
    private String type;

    //-----------------constructor summary----------------------------
    public Status() {
        super();
    }

    public Status(Integer statusId, String type) {
        super();
        this.statusId = statusId;
        this.type = type;
    }

    //--------------------getter & setter methods------------------------------
    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    public Integer getStatusId() {
        return statusId;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }
}
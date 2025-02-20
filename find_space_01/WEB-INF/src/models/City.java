package models;

public class City {
    //-----------------field summary------------------------
    private Integer cityId;
    private String city;
    private State state;   
    
    //--------------------getter & setter methods------------------------------
    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setState(State state) {
        this.state = state;
    }

    public State getState() {
        return state;
    }
}
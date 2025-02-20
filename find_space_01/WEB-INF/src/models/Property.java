package models;

public class Property {
    private Integer propertyId;
    private String title;
    private String address;
    private City cityId;
    private Property propertyTypeId;
    private User userId;
    private String description;
    private Status statusId;
    private Integer floors;
    private Integer bhk;

    public Property() {
        super();
    }

    public Property(Integer propertyId, String title, String address, City cityId, Property propertyTypeId, User userId, String description, Status statusId, Integer floors, Integer bhk) {
        super();
        this.propertyId = propertyId;
        this.title = title;
        this.address = address;
        this.cityId = cityId;
        this.propertyTypeId = propertyTypeId;
        this.userId = userId;
        this.description = description;
        this.statusId = statusId;
        this.floors = floors;
        this.bhk = bhk;
    }

    public void setPropertyId(Integer propertyId) {
        this.propertyId = propertyId;
    }

    public Integer getPropertyId() {
        return propertyId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setCityId(City cityId) {
        this.cityId = cityId;
    }

    public City getCityId() {
        return cityId;
    }

    public void setPropertyTypeId(Property propertyTypeId) {
        this.propertyTypeId = propertyTypeId;
    }

    public Property getPropertyTypeId() {
        return propertyTypeId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public User getUserId() {
        return userId;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setStatusId(Status statusId) {
        this.statusId = statusId;
    }

    public Status getStatusId() {
        return statusId;
    }

    public void setFloors(Integer floors) {
        this.floors = floors;
    }

    public Integer getFloors() {
        return floors;
    }

    public void setBhk(Integer bhk) {
        this.bhk = bhk;
    }

    public Integer getBhk() {
        return bhk;
    }
}

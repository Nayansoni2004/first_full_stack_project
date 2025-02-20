package models;

public class PropertyType {
    private Integer propertyTypeId;
    private String type;

    public PropertyType() {
        super();
    }
    
    public PropertyType(Integer propertyTypeId, String type) {
        super();
        this.propertyTypeId = propertyTypeId;
        this.type = type;
    }

    
    public void setPropertyTypeId(Integer propertyTypeId) {
        this.propertyTypeId = propertyTypeId;
    }

    public Integer getPropertyTypeId() {
        return propertyTypeId;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }
}
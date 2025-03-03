package models;

public class PropertyArea {
    private Integer propertyAreaId;
    private Property propertyId;
    private AreaType areaTypeId;
    private Integer area;

    public PropertyArea() {
        super();
    }

    public PropertyArea(Integer propertyAreaId, Property propertyId, AreaType areaTypeId, Integer area) {
        super();
        this.propertyAreaId = propertyAreaId;
        this.propertyId = propertyId;
        this.areaTypeId = areaTypeId;
        this.area = area;
    }

    public void setPropertyAreaId(Integer propertyAreaId) {
        this.propertyAreaId = propertyAreaId;
    }

    public Integer getPropertAreaId() {
        return propertyAreaId;
    }

    public void setPropertyId(Property propertyId) {
        this.propertyId = propertyId;
    }

    public Property getPropertyId() {
        return propertyId;
    }

    public void setAreaTypeId(AreaType areaTypeId) {
        this.areaTypeId = areaTypeId;
    }

    public AreaType getAreaTypeId() {
        return areaTypeId;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    public Integer getArea() {
        return area;
    }
}

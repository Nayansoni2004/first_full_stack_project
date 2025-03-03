package models;

public class PropertyFeature {
    private Integer propertyFeatureId;
    private Property propertyId;
    private Feature featureId;
    private String description;

    public PropertyFeature() {
        super();
    }

    public PropertyFeature(Integer propertyFeatureId, Property propertyId, Feature featureId, String description) {
        this.propertyFeatureId = propertyFeatureId;
        this.propertyId = propertyId;
        this.featureId = featureId;
        this.description = description;
    }

    public void setPropertyFeatureId(Integer propertyFeatureId) {
        this.propertyFeatureId = propertyFeatureId;
    }

    public Integer getPropertyFeatureId() {
        return propertyFeatureId;
    }

    public void setPropertyId(Property propertyId) {
        this.propertyId = propertyId;
    }

    public Property getPropertyId() {
        return propertyId;
    }

    public void setFeatureId(Feature featureId) {
        this.featureId = featureId;
    }

    public Feature getFeatureId() {
        return featureId;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}

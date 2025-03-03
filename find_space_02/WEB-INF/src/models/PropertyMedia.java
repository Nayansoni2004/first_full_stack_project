package models;

public class PropertyMedia {
    private Integer propertyMediaId;
    private Property propertyId;
    private String mediaPath;
    private ViewType viewTypeId;
    private Boolean mediaType;
    
    public PropertyMedia() {
        super();
    }

    public PropertyMedia(Integer propertyMediaId, Property propertyId, String mediaPath, ViewType viewTypeId, Boolean mediaType) {
        this.propertyMediaId = propertyMediaId;
        this.propertyId = propertyId;
        this.mediaPath = mediaPath;
        this.viewTypeId = viewTypeId;
        this.mediaType = mediaType;
    }

    public void setPropertyMediaId(Integer propertyMediaId) {
        this.propertyMediaId = propertyMediaId;
    }

    public Integer getPropertyMediaId() {
        return propertyMediaId;
    }

    public void setPropertyId(Property propertyId) {
        this.propertyId = propertyId;
    }

    public Property getPropertyId() {
        return propertyId;
    }

    public void setMediaPath(String mediaPath) {
        this.mediaPath = mediaPath;
    }

    public String getMediaPath() {
        return mediaPath;
    }

    public void setViewTypeId(ViewType viewTypeId) {
        this.viewTypeId = viewTypeId;
    }

    public ViewType getViewTypeId() {
        return viewTypeId;
    }

    public void setMediaType(Boolean mediaType) {
        this.mediaType = mediaType;
    }

    public Boolean getMediaType() {
        return mediaType;
    }
}

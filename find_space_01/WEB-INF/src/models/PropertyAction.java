package models;

import java.sql.Date;

public class PropertyAction {
    private Integer propertyActionId;
    private Property propertyId;
    private Date actionDate;
    private Boolean actionType;
    private Integer amount;
    private Integer initialPayment;
    private Status statusId;
    private User userId;

    public PropertyAction() {
        super();
    }

    public PropertyAction(Integer propertyActionId, Property propertyId, Date actionDate, Boolean actionType, Integer amount, Integer initialPayment, Status statusId, User userId) {
        this.propertyActionId = propertyActionId;
        this.propertyId = propertyId;
        this.actionDate = actionDate;
        this.actionType = actionType;
        this.amount = amount;
        this.initialPayment = initialPayment;
        this.statusId = statusId;
        this.userId = userId;
    }

    public void setPropertyActionId(Integer propertyActionId) {
        this.propertyActionId = propertyActionId;
    }
    
    public Integer getPropertyActionId() {
        return propertyActionId;
    }

    public void setPropertyId(Property propertyId) {
        this.propertyId = propertyId;
    }

    public Property getPropertyId() {
        return propertyId;
    }

    public void setActionDate(Date actionDate) {
        this.actionDate = actionDate;
    }

    public Date getActionDate() {
        return actionDate;
    }

    public void setActionType(Boolean actionType) {
        this.actionType = actionType;
    }

    public Boolean getActionType() {
        return actionType;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setInitialPayment(Integer initialPayment) {
        this.initialPayment = initialPayment;
    }

    public Integer getInitialPayment() {
        return initialPayment;
    }

    public void setStatusId(Status statusId) {
        this.statusId = statusId;
    }

    public Status getStatusId() {
        return statusId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public User getUserId() {
        return userId;
    }
}

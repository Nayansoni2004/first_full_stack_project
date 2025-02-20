package models;

import java.sql.Date;

public class User {
    private Integer userId;
    private String name;
    private String email;
    private String password;
    private Date dob;
    private Character gender; //'M' or 'F'
    private String address;
    private City cityId;
    private String contact;
    private String logo;
    private Status statusId;
    private String activationCode;

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public Date getDob() {
        return dob;
    }

    public void setGender(Character gender) {
        this.gender = gender;
    }

    public Character getGender() {
        return gender;
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

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getContact() {
        return contact;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getLogo() {
        return logo;
    }

    public void setStatusId(Status statusId) {
        this.statusId = statusId;
    }

    public Status getStatusId() {
        return statusId;
    }

    public void setActivationCode(String activationCode) {
        this.activationCode = activationCode;
    }

    public String getActivationCode() {
        return activationCode;
    }
}
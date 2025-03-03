package models;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import utils.DBConnect;

public class User {
    private Integer userId;
    private String name;
    private String email;
    private String password;
    private Date dob;
    private Character gender; // 'M' or 'F'
    private String address;
    private City city;
    private String contact;
    private String logo;
    private Status status;
    private String activationCode;

    // ---------------constructors--------------------------
    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(String name, String email, String password, City city, String contact) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.city = city;
        this.contact = contact;
    }

    //******************login method start***************************
    public void loginUser() {
        status = new Status(-1); // email not match...

        try {
            Connection con = DBConnect.getConnection();

            String query = "select * from users where email=?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            // ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                if (password.equals(rs.getString("password"))) {
                    userId = rs.getInt("user_id");
                    name = rs.getString("name");
                    dob = rs.getDate("dob");
                    String genderstr = rs.getString("gender");
                    gender = (genderstr != null && !genderstr.isEmpty()) ? genderstr.charAt(0) : null;

                    // gender = rs.getString("gender").charAt(0);
                    address = rs.getString("address");
                    city = new City(rs.getInt("city_id"));
                    contact = rs.getString("contact");
                    logo = rs.getString("logo");
                    status = new Status(rs.getInt("status_id"));
                } else {
                    status = new Status(0); // incorrect password
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //******************login method end***************************

    //******************signup method start***************************
    public boolean signUpUser() {
        boolean flag = false;

        try {
            Connection con = DBConnect.getConnection();

            if (con != null) {
                String query = "insert into users (name,email,password,city_id,contact) value (?,?,?,?,?)";

                PreparedStatement ps = con.prepareStatement(query);

                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, password);
                ps.setInt(4, city.getCityId());
                ps.setString(5, contact);

                int res = ps.executeUpdate();

                if (res == 1) {
                    flag = true;
                }

                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }
    //******************signup method end***************************

    //******************getter & setter methods start***************************
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

    public void setCity(City city) {
        this.city = city;
    }

    public City getCity() {
        return city;
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

    public void setStatus(Status status) {
        this.status = status;
    }

    public Status getStatus() {
        return status;
    }

    public void setActivationCode(String activationCode) {
        this.activationCode = activationCode;
    }

    public String getActivationCode() {
        return activationCode;
    }
    //******************getter & setter methods end***************************
}
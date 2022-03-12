/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author admin
 */
public class Login {
     public static String Login(String name, String pass) {
        String status = null;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/booking", "root", "24120");

            PreparedStatement ps = con.prepareStatement(
                    "select * from customeraccount where username=? and password=?");
            ps.setString(1, name);
            ps.setString(2, pass);

            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                status = rs.getString("customerID");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
     public boolean Register(String name, String pass) {
        boolean status = false;
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/booking", "root", "24120");

            PreparedStatement ps = con.prepareStatement(
                   "INSERT INTO `customeraccount` (`username`, `password`) VALUES ('"+name+"', '"+pass+"');");
             ps.executeUpdate();
            status = true;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }

     public boolean InsertInfor(String fullname, String address, String email, int genden, String phone, int status) {
         status = 1;
         genden =1;
        boolean status1 = false;
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/booking", "root", "24120");

            PreparedStatement ps = con.prepareStatement(
                   "INSERT INTO `customer` (`fullName`, `address`,`email`,`gender`,`phone`,`status`) VALUES ('"+fullname+"', '"+address+"','"+email+"',"+genden+",'"+phone+"',"+status+");");
             ps.executeUpdate();
            status1 = true;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status1;
    }
}

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
     public static boolean Register(String name, String pass) {
        boolean status = false;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/group1asm", "root", "");

            PreparedStatement ps = con.prepareStatement(
                   "INSERT INTO `customeraccount` (`username`, `password`, `customerID`) VALUES ('"+name+"', '"+pass+"', '"+getID()+1+"');");
             ps.executeUpdate();
            status = true;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
     public static int getID(){
         int Id = 0;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/group1asm", "root", "");

            PreparedStatement ps = con.prepareStatement(
                   "SELECT MAX(customerID) FROM customeraccount");
            ResultSet rs = ps.executeQuery();
           Id = rs.getInt("MAX(customerID)");

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return Id+1;
     }
     public static boolean Delete(String ID) {
        boolean status = false;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/group1asm", "root", "");

            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM `admin` WHERE `admin`.`adminId` = '"+ID+"'");
             ps.executeUpdate();
            status = true;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
     public static boolean LoginAdmin(String name, String pass) {
        boolean status = false;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/group1asm", "root", "");

            PreparedStatement ps = con.prepareStatement(
                    "select * from admin where username=? and password=?");
            ps.setString(1, name);
            ps.setString(2, pass);

            ResultSet rs = ps.executeQuery();
            status = rs.next();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
}

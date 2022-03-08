/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Image;
import Model.Room;
import MyUtils.ConnectionLib;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author trant
 */
public class AdminDAO {
    //declare variables
    public static int numberPage = 10;
    private Connection con;
    private PreparedStatement pst;
    private Statement st;
    private Statement st2;
    private ResultSet rs;
    private ResultSet rs2;
    private String query;
    private ArrayList<Room> listRoom;
    private ArrayList<Image> images;
    private String a = "";
    public AdminDAO() throws SQLException {
        con = null;
        pst = null;
        st = null;
        rs = null;
        st2 = null;
        rs2 = null;
        listRoom = new ArrayList<>();
        con = ConnectionLib.getConnection();
        st = con.createStatement();
        st2 = con.createStatement();
    }
    public static boolean Login(String name, String pass) {
        boolean status = false;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/booking", "root", "24120");

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

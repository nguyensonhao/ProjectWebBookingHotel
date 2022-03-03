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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author trant
 */
public class roomDAO {
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

    /**
     * constructor product model no parameter
     *
     * @throws SQLException
     */
    public roomDAO() throws SQLException {
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
    
    public String getImage(int pId) throws SQLException {
        String sqlStr2 = "SELECT * FROM `image` WHERE image.roomId = " + pId + " LIMIT 1 ";
        this.st2 = this.con.createStatement();
        rs2 = st2.executeQuery(sqlStr2);
        while (rs2.next()) {
            a = rs2.getString("imageLink");
        }
        return a;
    }
    public ArrayList<Room> loadProduct() {
        listRoom = new ArrayList<>();//declare variables
        query = "SELECT * FROM `room`";//query sql select data
        try {
            rs = st.executeQuery(query);//execute query
            
                 while (rs.next()) {
                    int roomID = rs.getInt("roomId");//get id product 
                    String name = rs.getString("roomName");//get name product 
                    double price = rs.getInt("price");//get price product
                    int typeId = rs.getInt("typeId");
                    int status = rs.getInt("status");//get status
                    
                    if (status != 0) {
                       listRoom.add(new Room(roomID, name, price, typeId, status));
                    }

                }
            
        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println("Can't load data of list room");//display warning message
        }
        return listRoom;
    }
}

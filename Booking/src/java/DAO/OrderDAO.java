/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Customer;
import Model.Image;
import Model.Order;
import Model.Room;
import MyUtils.ConnectionLib;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author trant
 */
public class OrderDAO {
    //declare variables
    private Connection con;
    private PreparedStatement pst;
    private Statement st;
    private Statement st2;
    private ResultSet rs;
    private ResultSet rs2;
    private String query;
    private ArrayList<Order> listOder;
    public OrderDAO() throws SQLException {
        con = null;
        pst = null;
        st = null;
        rs = null;
        st2 = null;
        rs2 = null;
        listOder = new ArrayList<>();
        con = ConnectionLib.getConnection();
        st = con.createStatement();
        st2 = con.createStatement();
    }
    public ArrayList<Order> loadOder() {
        listOder = new ArrayList<>();//declare variables
        query = "SELECT * FROM `order`";//query sql select data
        try {
            rs = st.executeQuery(query);//execute query
            
                 while (rs.next()) {
                    int orderId = rs.getInt("orderId");
                    int customerId = rs.getInt("customerId");//get id product 
                    String address = rs.getString("address");
                    String dateBuy = rs.getString("dateBuy");//get name product 
                    String dateDone = rs.getString("dateDone");
                    int roomId = rs.getInt("roomId");
                    double price = rs.getDouble("price");
                    int status = rs.getInt("status");//get status
                    
                    listOder.add(new Order(orderId, customerId, address, dateBuy, dateDone, roomId, price, status));

                }
            
        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return listOder;
    }
    public int insertOrder(Order oder) {
        query = "INSERT INTO `order` (`customerId`, `address`, `dateBuy`, `dateDone`, `roomId`, `price`, `status`) VALUES (?,?,?,?,?,?,?)";//query insert
        try {
            pst = con.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);//create prepare statement

            pst.setInt(1, oder.getCustomerID());
            pst.setString(2, oder.getAddress());
            pst.setString(3, oder.getDateArrival());//set name product
            pst.setString(4, oder.getDateDeparture());//set price product
            pst.setInt(5, oder.getRoomID());//set size product
            pst.setDouble(6, oder.getPrice());
            pst.setInt(7, 2);//set color product
            pst.executeUpdate();
            rs = pst.getGeneratedKeys();
            rs.next();//

            return rs.getInt(1);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());//display warning message
            return 0;
        } catch (Exception e) {
            System.out.println("can't insert product to list.");//display warning message
            return 0;

        }
    }
}

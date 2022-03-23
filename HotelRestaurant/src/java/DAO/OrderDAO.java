/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.OrderDetail;
import DTO.Product;
import MyUtils.ConnectionLib;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class OrderDAO {
    ConnectionLib cn = new ConnectionLib();
    Connection con;
    private PreparedStatement pst;
    private Statement st;
    private ResultSet rs;
    private String query;
    private ArrayList<Product> list;
    public OrderDAO() throws SQLException {
        con = null;
        pst = null;
        st = null;
        rs = null;
        list = new ArrayList<>();
        con = cn.getConnectDB();
        st = con.createStatement();
    }
    public boolean InsertOrder(int userId, String adress, int total) {
        boolean status = false;
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
        LocalDateTime now = LocalDateTime.now();  
        try {
            con =  cn.getConnectDB();

            PreparedStatement ps = con.prepareStatement(
                    "INSERT [dbo].[tblOrder] ([orderDate], [total], [userID], [status]) VALUES (N'"+dtf.format(now)+"', "+total+", N'"+userId+"', 1)");
            ps.executeUpdate();
            status = true;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
    public boolean InsertOrderItem(OrderDetail item, int orderId) {
        boolean status = false;
        try {
            con =  cn.getConnectDB();

            PreparedStatement ps = con.prepareStatement(
                    "INSERT [dbo].[tblOrderDetail] ([price], [quantity], [orderID], [productID]) VALUES (CAST("+item.getPrice()+" AS Decimal(18, 0)), "+item.getQuantity()+", "+orderId+", "+item.getProductID()+")");
            ps.executeUpdate();
            status = true;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
    public int getOrderID() {
        int Id = 0;
        try {
            con =  cn.getConnectDB();

            PreparedStatement ps = con.prepareStatement(
                    "SELECT MAX ([orderID]) as maxId  FROM [HotelRestaurant].[dbo].[tblOrder]");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Id = rs.getInt("maxId");
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return Id;
    }
}

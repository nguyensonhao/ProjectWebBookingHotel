/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Customer;
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
public class CustomerDAO {
    //declare variables
    private Connection con;
    private PreparedStatement pst;
    private Statement st;
    private Statement st2;
    private ResultSet rs;
    private ResultSet rs2;
    private String query;
    private ArrayList<Customer> listCustomer;
    public CustomerDAO() throws SQLException {
        con = null;
        pst = null;
        st = null;
        rs = null;
        st2 = null;
        rs2 = null;
        listCustomer = new ArrayList<>();
        con = ConnectionLib.getConnection();
        st = con.createStatement();
        st2 = con.createStatement();
    }
    public ArrayList<Customer> loadProduct() {
        listCustomer = new ArrayList<>();//declare variables
        query = "SELECT * FROM `customer`";//query sql select data
        try {
            rs = st.executeQuery(query);//execute query
            
                 while (rs.next()) {
                    int cusID = rs.getInt("customerId");//get id product 
                    String name = rs.getString("fullName");
                    String email = rs.getString("email");//get name product 
                    String address = rs.getString("address");
                    int gender = rs.getInt("gender");
                    String phone = rs.getString("phone");
                    int status = rs.getInt("status");//get status
                    
                    listCustomer.add(new Customer(cusID, name, address, email, gender, phone, status));

                }
            
        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return listCustomer;
    }
   
    public String getName(int customerId) {
        listCustomer = new ArrayList<>();//declare variables
        query = "SELECT `fullName` FROM `customer` where customerId = '"+customerId+"'";//query sql select data
        try {
            rs = st.executeQuery(query);//execute query
            
                 while (rs.next()) {
                    String name = rs.getString("fullName");
                    return name;

                }
            
        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return "Unknow";
    }
    public Customer getCustomer(int customerId) {
        Customer cus = null;
        query = "SELECT * FROM `customer` where customerId = '"+customerId+"'";//query sql select data
        try {
            rs = st.executeQuery(query);//execute query
            
                 while (rs.next()) {
                    int cusID = rs.getInt("customerId");//get id product 
                    String name = rs.getString("fullName");
                    String email = rs.getString("email");//get name product 
                    String address = rs.getString("address");
                    int gender = rs.getInt("gender");
                    String phone = rs.getString("phone");
                    int status = rs.getInt("status");//get status
                    cus = new Customer(customerId, name, address, email, gender, phone, status);
                }
            
        } catch (SQLException ex) {
            System.out.println("Can't load data of list room");//display warning message
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return cus;
    }
}

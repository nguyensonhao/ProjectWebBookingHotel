/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author trant
 */
public class Order {
    int oerderId;
    int customerID;
    String address;
    String dateArrival;
    String dateDeparture;
    int roomID;
    double price;
    int status;

    public Order() {
    }

    public Order(int oerderId, int customerID, String address, String dateArrival, String dateDeparture, int roomID, double price, int status) {
        this.oerderId = oerderId;
        this.customerID = customerID;
        this.address = address;
        this.dateArrival = dateArrival;
        this.dateDeparture = dateDeparture;
        this.roomID = roomID;
        this.price = price;
        this.status = status;
    }

    public int getOerderId() {
        return oerderId;
    }

    public void setOerderId(int oerderId) {
        this.oerderId = oerderId;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDateArrival() {
        return dateArrival;
    }

    public void setDateArrival(String dateArrival) {
        this.dateArrival = dateArrival;
    }

    public String getDateDeparture() {
        return dateDeparture;
    }

    public void setDateDeparture(String dateDeparture) {
        this.dateDeparture = dateDeparture;
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    
}

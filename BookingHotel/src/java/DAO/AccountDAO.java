
package DAO;

import DTO.Account;
import java.sql.Connection;
import DBUtils.DBConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author admin
 */
public class AccountDAO {
    public static Account getAccount(String email, String password){
        Connection cn = null;
        Account acc = null;
        DBConnection db = new DBConnection();
        try {
            cn = db.getConnection();
            if (cn != null) {
                String sql = "select * from `Accounts` where `status` = 1"
                        + " and `email` = '"+email+"' and `password` = '"+password+"'";
                PreparedStatement pst = cn.prepareStatement(sql);
                //pst.setString(1, email);
                //pst.setString(2, password);
                System.out.println(sql);
                ResultSet rs = pst.executeQuery();
                if (rs !=null && rs.next()) {
                    int AccID = rs.getInt("AccID");
                    String Email = rs.getString("email");
                    String Password = rs.getString("password");
                    String Fullname = rs.getString("fullname");
                    String Phone = rs.getString("phone");
                    int Status = rs.getInt("status");
                    int Role = rs.getInt("role");
                    acc = new Account(AccID, Email, Password, Fullname, Status, Phone, Role);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(cn!=null){
                try {
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return  acc;
    }
    public static ArrayList<Account> getAccounts(){
        Connection cn = null;
        Account acc = null;
        ArrayList<Account> listAcc = new ArrayList<>();
        DBConnection db = new DBConnection();
        try {
            cn = db.getConnection();
            if (cn != null) {
                String sql = "select * from `Accounts` where `status` = 1";
                PreparedStatement pst = cn.prepareStatement(sql);
                System.out.println(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        int AccID = rs.getInt("AccID");
                        String Email = rs.getString("email");
                        String Password = rs.getString("password");
                        String Fullname = rs.getString("fullname");
                        String Phone = rs.getString("phone");
                        int Status = rs.getInt("status");
                        int Role = rs.getInt("role");
                        listAcc.add(new Account(AccID, Email, Password, Fullname, Status, Phone, Role));
                    }
                    
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(cn!=null){
                try {
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return  listAcc;
    }
    
     public static boolean updateAccountStatus(String email, int status){
         Connection cn = null;
         DBConnection db = new DBConnection();
        try {
            cn = db.getConnection();
            String sql = "UPDATE `Accounts` SET `status`='"+status+"' where `email` ='"+email+"'";
            PreparedStatement pst = cn.prepareStatement(sql);
            System.out.println(sql);
            pst.execute();
            return true;
        } catch (Exception e) {
            e.getStackTrace();
        }
        return false;

    }
     public static boolean updateAccount(Account account){
         Connection cn = null;
         DBConnection db = new DBConnection();
        try {
            cn = db.getConnection();
            String sql = "UPDATE `Accounts` SET `email`='"+account.getEmail()+"',`password`='"+account.getPassword()+"',`fullname`='"+account.getFullname()+"',`phone`='"+account.getPhone()+"' where `accID` ='"+account.getAccID()+"'";
            PreparedStatement pst = cn.prepareStatement(sql);
            System.out.println(sql);
            pst.execute();
            return true;
        } catch (Exception e) {
            e.getStackTrace();
        }
        return false;

    }
     public static boolean updatetoken(String token, String email){
         Connection cn = null;
         DBConnection db = new DBConnection();
        try {
            cn = db.getConnection();
            String sql = "UPDATE `Accounts` SET `token`='"+token+"' where `email` ='"+email+"'";
            PreparedStatement pst = cn.prepareStatement(sql);
            System.out.println(sql);
            pst.execute();
            return true;
        } catch (Exception e) {
            e.getStackTrace();
        }
        return false;

    }
     public static boolean insertAccount(Account account){
         Connection cn = null;
         DBConnection db = new DBConnection();
        try {
            cn = db.getConnection();
            String sql = "INSERT INTO `accounts` (`email`, `password`, `fullname`, `phone`, `role`,`status`) VALUES ('"+account.getEmail()+"', '"+account.getPassword()+"', '"+account.getFullname()+"', '"+account.getPhone()+"', '"+account.getRole()+"', '"+account.getStatus()+"');";
            PreparedStatement pst = cn.prepareStatement(sql);
            System.out.println(sql);
            pst.execute();
            return true;
        } catch (Exception e) {
            e.getStackTrace();
        }
        return false;
    }
    public static Account getAccount(String email){
        Connection cn = null;
        Account acc = null;
        DBConnection db = new DBConnection();
        try {
            cn = db.getConnection();
            if (cn != null) {
                String sql = "select * from `Accounts` where `status` = 1"
                        + " and `email` = '"+email+"'";
                PreparedStatement pst = cn.prepareStatement(sql);
                //pst.setString(1, email);
                //pst.setString(2, password);
                System.out.println(sql);
                ResultSet rs = pst.executeQuery();
                if (rs !=null && rs.next()) {
                    int AccID = rs.getInt("AccID");
                    String Email = rs.getString("email");
                    String Password = rs.getString("password");
                    String Fullname = rs.getString("fullname");
                    String Phone = rs.getString("phone");
                    int Status = rs.getInt("status");
                    int Role = rs.getInt("role");
                    acc = new Account(AccID, Email, Password, Fullname, Status, Phone, Role);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(cn!=null){
                try {
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return  acc;
    }
}

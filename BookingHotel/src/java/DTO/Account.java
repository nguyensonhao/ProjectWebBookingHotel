package DTO;

/**
 *
 * @author admin
 */
public class Account {
    private int accID;
    private String email;
    private String password;
    private String fullname;
    private int status;
    private String phone;
    private int role;

    public Account() {
    }

    public Account(int accID, String email, String password, String fullname, int status, String phone, int role) {
        this.accID = accID;
        this.email = email;
        this.password = password;
        this.fullname = fullname;
        this.status = status;
        this.phone = phone;
        this.role = role;
    }

    public int getAccID() {
        return accID;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getFullname() {
        return fullname;
    }

    public int getStatus() {
        return status;
    }

    public String getPhone() {
        return phone;
    }

    public int getRole() {
        return role;
    }

    public void setAccID(int accID) {
        this.accID = accID;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setRole(int role) {
        this.role = role;
    }
    
}

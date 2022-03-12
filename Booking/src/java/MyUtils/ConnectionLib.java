package MyUtils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author admin
 */
public class ConnectionLib {
    
    public static Connection con;
    public static Connection getConnection() throws SQLException{
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/booking", "root", "admin12");
        } catch (SQLException e) {
            e.getMessage();
        }
        return  con;
    }
  
}

package DBUtils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class DBConnection {
     private Connection connection;

    /**
     *
     */
    public DBConnection() {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bookingHotel", "root", "24120");
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     *
     * @return
     */
    public Connection getConnection() {
        return connection;
    }
    
    public void closeConnection() {
        try {
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}


package Controller;

import DAO.roomDAO;
import Model.Room;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
@WebServlet(name = "addRoomServlet", urlPatterns = {"/addRoomServlet"})
public class addRoomServlet extends HttpServlet {


    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpServletRequest reg = (HttpServletRequest) request;
        String roomname = request.getParameter("roomname");
        double price = Double.parseDouble(request.getParameter("price"));
        int typeid = Integer.valueOf(request.getParameter("typeid"));
        Room room = new Room(1, roomname, price, typeid, 1);
         roomDAO roomD = null;
        try {
            roomD = new roomDAO();
        
        int check = roomD.insertRoom(room);
        if (check > 0) {
            response.sendRedirect("roommanage.jsp");
        } else {
            response.sendRedirect("addnewroom.jsp");
        }
        } catch (SQLException ex) {
            Logger.getLogger(addRoomServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
}

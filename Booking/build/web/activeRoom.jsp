<%-- 
  
--%>


<%@page import="DAO.roomDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID = Integer.valueOf(request.getParameter("roomID"));
    System.out.println(ID);
    roomDAO room = new roomDAO();
    int check = room.updateClockRoom(ID, 1);
    response.sendRedirect("roommanage.jsp");
%>

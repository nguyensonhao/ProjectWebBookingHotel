<%-- 
    Document   : checkOutRoom
    Created on : Mar 5, 2022, 1:53:30 AM
    Author     : admin
--%>

<%@page import="DAO.roomDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID = Integer.valueOf(request.getParameter("roomID"));
    System.out.println(ID);
    roomDAO room = new roomDAO();
    int check = room.updateStatusRoom(ID, 2);
    response.sendRedirect("ordermanagement.jsp");
%>

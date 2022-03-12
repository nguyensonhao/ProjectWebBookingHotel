<%-- 
    
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

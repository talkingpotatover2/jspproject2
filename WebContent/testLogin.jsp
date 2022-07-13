<%@page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "pinksung";
	String pwd = "1234";
	String name = "성윤정";
	request.setCharacterEncoding("UTF-8");
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
		response.sendRedirect("main_.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
		//필터링과 상관없이 별도로 인코딩 해줘야됨
	}
	else {
		response.sendRedirect("loginForm.jsp");
	}
%>
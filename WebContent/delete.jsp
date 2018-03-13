<%@page import="com.cafe24.guestbook.vo.GuestBookVo"%>
<%@page import="com.cafe24.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String password = request.getParameter("password");
	int no = Integer.parseInt(request.getParameter("no"));

	GuestBookDao dao = new GuestBookDao();
	GuestBookVo vo = dao.getGusetBook(no);

	if (password.equals(vo.getPassword())) {
		dao.delete(no);

	}

	response.sendRedirect("/guestbook");
%>




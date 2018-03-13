<%@page import="com.cafe24.guestbook.vo.GuestBookVo"%>
<%@page import="com.cafe24.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");
// 	content = content.replace("\r\n","<br>");
	
	GuestBookDao dao = new GuestBookDao();
	
	GuestBookVo vo = new GuestBookVo();
	
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);
	
	dao.insert(vo);
	
	response.sendRedirect("/guestbook");

%>
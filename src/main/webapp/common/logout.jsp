<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--controller--%>
<%
	session.invalidate();
	response.sendRedirect("KoreaMemberLoginForm.do");
%>    

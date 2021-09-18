<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="id" value="${sessionScope.userid}"/>
<a href="Main.do">Main</a>&nbsp;&nbsp;&nbsp;||
<%--<a href="Login.jsp">Login</a>&nbsp;&nbsp;&nbsp;||--%>
<a href="KoreaMemberJoinForm.do">Register</a>&nbsp;&nbsp;&nbsp;||
<a href="#">Intro</a>&nbsp;&nbsp; ||
<a href="#">Intro</a>&nbsp;&nbsp;&nbsp;
<span id="loginlogout"></span>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
	    $.ajax(
		    {
			    url: "LoginLogout",
			    type: "GET",
			    dataType: "html",
                data: "${id}",
			    success: function (responseData) {
				    document.getElementById("loginlogout").innerHTML = responseData;
			    },
			    error: function(xhr){
				    console.log(xhr.status);
			    }
		    }
	    );
    });
    
</script>

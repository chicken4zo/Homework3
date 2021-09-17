<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--view--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style type="text/css">
		table {
			border: solid 2px black;
			border-collapse: collapse;
		}

		tr {
			border: solid 1px blue;
			background-color: white;
			color: black;
		}

		td {
			border: solid 1px red;
		}
    </style>
</head>
<body>
<table
        style="width: 900px; height: 500px; margin-left: auto; margin-right: auto;">
    <tr>
        <td colspan="2">
            <jsp:include page="/common/Top.jsp"/>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <jsp:include page="/common/Left.jsp"/>
        </td>
        <td style="width: 700px">
            <!-- MAIN PAGE CONTENT  -->
            <c:set var="text" value="${requestScope.text}"/>
            <c:set var="link" value="${requestScope.link}"/>
            ${text}<br>
            ${link}
        </td>
    </tr>
    <tr>
        <td colspan="2"><jsp:include page="/common/Bottom.jsp"/></td>
    </tr>
</table>
</body>
</html>



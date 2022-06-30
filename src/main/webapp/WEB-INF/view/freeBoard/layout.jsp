<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/index.css" type="text/css">
    <link rel="stylesheet" href="css/notice.css" type="text/css">
    <title><tiles:getAsString name="title" /></title>
</head>
<body style="margin: 0px; background-color: #FFFACD;">
	<!-- header 부분 -->
		<tiles:insertAttribute name="header" />
    <!-- main 부분 -->
	
	<tiles:insertAttribute name="body" />

    <!--footer 부분-->
	<tiles:insertAttribute name="footer" />

</body>
</html>
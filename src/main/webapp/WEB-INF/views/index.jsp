<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${title}</title>
</head>
<body>
	<h1>我是门户首页</h1>
<hr>
	点击  <a href="${ctx}/manager/login">登入</a>  《卖家版云中心系统》|
	
	点击 <a href="#">登入</a>  《政府监管版云中心系统》|

	点击  <a href="#">登入</a>  《买家云中心系统》|
	
	点击  <a href="#">注册</a> 买家会员
	
</body>
</html>
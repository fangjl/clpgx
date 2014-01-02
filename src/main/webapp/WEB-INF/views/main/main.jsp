<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>main</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link type="image/x-icon" href="${ctx}/static/images/favicon.ico" rel="shortcut icon">
<link href="${ctx}/static/bootstrap/3.0.3/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/jquery-validation/1.11.1/validate.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/styles/css.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>

<script type="text/javascript">
	
</script>


</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<div class="clpg-left-logo">
					<div class="left-header-1-b">
						<img src="${ctx}/static/images/logo.jpg" alt="" />
					</div>
					<div class="left-header-1-a">&nbsp;&nbsp;加气站</div>
				</div>
			</div>
			
			<div class="col-md-2">
			
		<div class="right-header-1">
         <table width=" " align="right" border="0">
  <tr>
    <td width=" "> <a href="#">咨询</a>&nbsp;&nbsp;</td>
    <td width=" "><a href="#">注销</a>&nbsp;&nbsp;</td>
    <td width=" "><a href="#"><img src="${ctx}/static/images/shezhi.png" /></a>&nbsp;&nbsp;</td>
    <td  width=""><a href="#"><img src="${ctx}/static/images/shuzi.png" /></a></td>
  </tr>
</table>
        
			</div>
			
		</div>

		<div class="row">
			<div class="col-md-12">
				<div id="clpg-tabs" class="clpg-Menubox">
					<ul>
						<li class="hover">我的桌面</li>
						<!-- 
							<li url="${ctx}/admin/gastank">钢瓶管理</li>
							<li url="${ctx}/admin/fill">充装管理</li>
							<li url="${ctx}/admin/company">移动配送</li>
							 -->
							<li url="${ctx}/web/gastank/base">钢瓶管理</li>
							 <li url="${ctx}/web/fillrecords/base">充装管理</li>
						<li url="${ctx}/task/index">系统设置</li>
					</ul>
				</div>
			</div>


		</div>


		<!-- body -->
		<div id="gloab-container" class="row"></div>
	</div>

	<script type="text/javascript" src="${ctx}/static/js/Dcore.js"></script>
	<script src="${ctx}/static/bootstrap/3.0.3/js/bootstrap.min.js" type="text/javascript"></script>



</body>
</html>
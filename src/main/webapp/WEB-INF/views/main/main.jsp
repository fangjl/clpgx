<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
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


	function indexOf($tab){
		return $("#clpg-tabs li").index($tab);
	}
	function _indexOfPanels($tab){
		return _getTabPanels.index($tab)
	}
	function _getTabPanels(){
		return $("#gloab-container").children();
	}
	
	
	$(document).ready(function(){
		$.get("${ctx}/admin/index/desk",{},function(data, textStatus, jqXHR){
			var tabpanel = $("<div id='clpg-tabpanel-id-0'>");
			$("#gloab-container").append(tabpanel);
			tabpanel.html(data);
		},"html")
		
		$("#clpg-tabs").find("li").each(function(i){
			$(this).unbind("click").click(function(event){
				$("#clpg-tabs").find("li").removeClass();
				$(this).addClass("hover");
				_getTabPanels().hide();
				var _index= indexOf($(this));
				var tabps = $("#clpg-tabpanel-id-"+_index).attr("id");
				if(tabps){
					$("#clpg-tabpanel-id-"+_index).show();
				}else{
					var tabpanel = $("<div id=clpg-tabpanel-id-"+indexOf($(this))+">");
					$.get($(this).attr("url"),{},function(data, textStatus, jqXHR){
						$("#gloab-container").append(tabpanel);
						tabpanel.html(data).initUI();
						
					},"html")
					
					
				}
			});
			
		});
});


</script>


</head>
<body>

	<div id="clpg-container">
	
		<div id="clpg-header">
			<div class="clpg-left-header">
				<div class="clpg-left-logo">
					<div class="left-header-1-b">
						<img src="${ctx}/static/images/logo.jpg" alt="" />
					</div>
					<div class="left-header-1-a">&nbsp;&nbsp;加气站</div>
				</div>
					<div id="clpg-tabs" class="clpg-Menubox">
						<ul>
							<li class="hover">我的桌面</li>
							<li url="${ctx}/admin/gastank">钢瓶管理</li>
							<li url="${ctx}/admin/fill">充装管理</li>
							<li url="${ctx}/admin/company">移动配送</li>
							<li url="${ctx}/admin/index/sysset">系统设置</li>
						</ul>

				</div>




			</div>

			<div class="right-header">
				<div class="right-header-1">
					<table width=" " align="right" border="0">
						<tr>
							<td width=" "><a href="#">帮助</a>&nbsp;&nbsp;</td>
							<td width=" "><a href="${ctx}/logout">注销</a>&nbsp;&nbsp;</td>
							<td width=" "><a href="#"><img
									src="${ctx}/static/images/shezhi.png" /></a>&nbsp;&nbsp;</td>
							<td width=""><a href="#"><img
									src="${ctx}/static/images/shuzi.png" /></a></td>
						</tr>
					</table>
				</div>
				
				<!-- 
				<div class="right-header-2">

					<div id="Tab2">
						<div class="Menubox">
							<ul>
								<li id="one9" onclick="setTab('one',9,11)">资产</li>
								<li id="one10" onclick="setTab('one',10,11)">报警</li>
								<li id="one11" onclick="setTab('one',11,11)">报表</li>

							</ul>

						</div>
					</div>
				</div>
				 -->

			</div>

		</div>
		<div id="gloab-container" class="clpg-Contentbox">
			
			
			
			
			  
				<div align="left" id="message" class="alert alert-success alert-dismissable" style="width:50%;display:none">

		</div>
	</div>


	<div class="footer">
		<div style="line-height: 35px; width: auto;">
			<a href="#" target="_blank">企业视频</a>&nbsp;|&nbsp;<a href="#"
				target="_blank">合作伙伴</a>&nbsp;|&nbsp;<a href="#" target="_blank">营销网络</a>&nbsp;|&nbsp;<a
				href="#" target="_blank">法律条款</a>&nbsp;|&nbsp;<a href="#"
				target="_blank">联系我们</a>
		</div>
		盈泽世纪科技发展有限公司 版权所有<br /> 京ICP备12033030号<br /> 京公网安备11010502021564
	</div>

<script type="text/javascript"
	src="${ctx}/static/js/Dcore.js"></script>
	


</body>
</html>
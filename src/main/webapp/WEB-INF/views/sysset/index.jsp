<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div  class="hover">
	<div class="left-main">
		<div class="left-main-1">
			<div class="left-main-2">企业信息</div>
			<div class="left-main-3">
				<button href="${ctx}/admin/company" active=true target="ajax" ref="sysset-container-id" type="button" class="btn btn-default btn-xs">企业信息</button>
				<button href="${ctx}/admin/dept" target="ajax" ref="sysset-container-id" type="button" class="btn btn-default  btn-xs">机构信息</button> 
				<button href="${ctx}/admin/role" target="ajax" ref="sysset-container-id" type="button" class="btn btn-default  btn-xs">角色信息</button>
				<button href="${ctx}/admin/module" target="ajax" ref="sysset-container-id" type="button" class="btn btn-default  btn-xs">应用设置</button>
				<button href="${ctx}/admin/module" target="ajax" ref="sysset-container-id" type="button" class="btn btn-default  btn-xs">提示设置</button>
				<button href="${ctx}/task" target="ajax" ref="sysset-container-id" type="button" class="btn btn-default  btn-xs">提示设置</button>
				
			</div>
		</div>
		<div class="left-main-4" >
			<div id="sysset-container-id"  class="container">
			
			
			</div>
		</div>
		<div class="left-main-di"></div>

	</div>
	<div class="right-main">
		<div class="time">
			<div class="time-main">
				<table width="170" border="0">
					<tr>
						<td rowspan="2" style="font-size: 34px;">12:45</td>
						<td width="54">星期三</td>
					</tr>
					<tr>
						<td>2013/10/23</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="right-main-nav">
			<a href="#"><strong>电子地图</strong></a>
		</div>
		<div class="right-main-nav1">
			<a href="#"><strong>UPS列表</strong></a>
		</div>
		<div class="right-main-nav2">
			<a href="#">UPS1号参数</a><br /> <a href="#">UPS2号参数</a><br /> <a
				href="#">UPS3号参数</a><br /> <a href="#">UPS4号参数</a><br /> <a
				href="#">UPS5号参数</a><br />
		</div>
	</div>
</div>

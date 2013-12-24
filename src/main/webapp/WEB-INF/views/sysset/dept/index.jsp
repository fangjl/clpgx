<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div class="container">
	<div class="row">
		
		<div class="col-md-2">
			tree
		</div>
		
		<div class="col-md-8 col-md-offset-1">
			<button href="${ctx}/admin/role" target="ajax" ref="sysset-container-id" type="button" class="btn btn-default  btn-xs">添加部门</button>
			<button href="${ctx}/admin/role" target="ajax" ref="sysset-container-id" type="button" class="btn btn-default  btn-xs">员工部门</button>
			grid
		
		</div>
	</div>
</div>

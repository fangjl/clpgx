<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div class="col-md-12">
	<div class="row">
		<div class="col-md-12">
			<div class="left-main-1">
				<div class="row">
					<div class="col-md-2">
						<div class="left-main-2">UPS监控</div>
					</div>
					<div class="col-md-10">
						<div class="left-main-3">
							<button href="${ctx}/task" active=true target="ajax" ref="sysset-container-id" type="button" class="btn btn-default btn-xs">test</button>
							<button href="${ctx}/admin/company" active=true target="ajax" ref="sysset-container-id" type="button" class="btn btn-default btn-xs">企业信息</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div  class="row">
		<div class="col-md-12">
			<div class="left-main" id="sysset-container-id" >
					
			</div>
		</div>
	</div>


</div>







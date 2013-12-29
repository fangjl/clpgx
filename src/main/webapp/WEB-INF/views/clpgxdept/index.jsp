<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="col-md-12">
	<!-- top -->
	<form  onsubmit="return Dcore.validateGetCallback(this)" action="${ctx}${action}"  ref="sysset-container-id" class="form-horizontal" role="form">
	<div class="row">
		<div class=col-md-10 col-md-offset-1" style="padding-top: 20px">
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">code</label>
							<div class="col-sm-8">
								<input name="code"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">name</label>
							<div class="col-sm-8">
								<input name="name"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">remark</label>
							<div class="col-sm-8">
								<input name="remark"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
			
		</div>
	</div>
	
	<!-- m button-->
	<div class="row">
		<div class="col-md-11 col-md-offset-1">
			<button type="submit" class="btn btn-primary">查询</button>
			<button href="${ctx}/web/clpgxdept/new" target="ajax" ref="sysset-container-id" type="button" class="btn btn-primary">添加</button>
			<button type="button" class="btn btn-primary">删除</button>|
			<div class="btn-group">
				  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
				   	排序|<span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" role="menu">
				  
				   	<c:forEach items="${fields}" var="field">
				   		<li><a target="ajax" ref="sysset-container-id" href="${ctx}${action}?sortFiled=${field.name}&${searchParams}">${field.name}</a></li>
					</c:forEach>
				    
				  </ul>
			</div>
		</div>
	</div>
	</form>
	
	
	<!-- grid -->
	<div class="row">
		<div class="col-md-10 col-md-offset-1 " style="padding-top: 5px">
			<table class="table table-responsive table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<th>序号</th>
						<th>code</th>
						<th>name</th>
						<th>remark</th>
					</tr>
				</thead>
 				<tbody>
 				
 				
 				
 					<c:forEach items="${pages.content}" var="content"  varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
									<td>${content.code}</td>
									<td>${content.name}</td>
									<td>${content.remark}</td>
							<td>
								<a target="ajax" ref="sysset-container-id" href="${ctx}${action}/delete/${content.id}">删除</a>
								<a target="ajax" ref="sysset-container-id" href="${ctx}${action}/${content.id}/edit">修改</a>
							</td>
						</tr>
					</c:forEach>
 				</tbody>
			</table>
		</div>
	</div>
	<!-- pagebar -->
	<div class="row">
		<div class="col-md-10 col-md-offset-1 " >
			<tags:pagination page="${pages}" paginationSize="5"/>
		</div>
	</div>
	<!-- end -->
</div>
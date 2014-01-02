<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="col-md-12">
	<!-- top -->
	<form  onsubmit="return Dcore.validateGetCallback(this)" action="${ctx}${action}"  ref="fillrecord-container-id" class="form-horizontal" role="form">
	<div class="row">
		<div class=col-md-10 col-md-offset-1" style="padding-top: 20px">
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">cindex</label>
							<div class="col-sm-8">
								<input name="cindex"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">starttime</label>
							<div class="col-sm-8">
								<input name="starttime"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">duration</label>
							<div class="col-sm-8">
								<input name="duration"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">normalfill</label>
							<div class="col-sm-8">
								<input name="normalfill"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">chipcode</label>
							<div class="col-sm-8">
								<input name="chipcode"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">gascylindercode</label>
							<div class="col-sm-8">
								<input name="gascylindercode"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">departcode</label>
							<div class="col-sm-8">
								<input name="departcode"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">producdate</label>
							<div class="col-sm-8">
								<input name="producdate"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">clientcode</label>
							<div class="col-sm-8">
								<input name="clientcode"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">filltype</label>
							<div class="col-sm-8">
								<input name="filltype"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">worker</label>
							<div class="col-sm-8">
								<input name="worker"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">initweight</label>
							<div class="col-sm-8">
								<input name="initweight"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">fillweight</label>
							<div class="col-sm-8">
								<input name="fillweight"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">desweight</label>
							<div class="col-sm-8">
								<input name="desweight"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">revdata</label>
							<div class="col-sm-8">
								<input name="revdata"  class="form-control">
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
			<button href="${ctx}/web/fillrecords/new" target="ajax" ref="fillrecord-container-id" type="button" class="btn btn-primary">添加</button>
			<button type="button" class="btn btn-primary">删除</button>|
			<div class="btn-group">
				  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
				   	排序|<span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" role="menu">
				  
				   	<c:forEach items="${fields}" var="field">
				   		<li><a target="ajax" ref="fillrecord-container-id" href="${ctx}${action}?sortFiled=${field.name}&${searchParams}">${field.name}</a></li>
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
						<th>cindex</th>
						<th>starttime</th>
						<th>duration</th>
						<th>normalfill</th>
						<th>chipcode</th>
						<th>gascylindercode</th>
						<th>departcode</th>
						<th>producdate</th>
						<th>clientcode</th>
						<th>filltype</th>
						<th>worker</th>
						<th>initweight</th>
						<th>fillweight</th>
						<th>desweight</th>
						<th>revdata</th>
					</tr>
				</thead>
 				<tbody>
 				
 				
 				
 					<c:forEach items="${pages.content}" var="content"  varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
									<td>${content.cindex}</td>
									<td>${content.starttime}</td>
									<td>${content.duration}</td>
									<td>${content.normalfill}</td>
									<td>${content.chipcode}</td>
									<td>${content.gascylindercode}</td>
									<td>${content.departcode}</td>
									<td>${content.producdate}</td>
									<td>${content.clientcode}</td>
									<td>${content.filltype}</td>
									<td>${content.worker}</td>
									<td>${content.initweight}</td>
									<td>${content.fillweight}</td>
									<td>${content.desweight}</td>
									<td>${content.revdata}</td>
							<td>
								<a target="ajax" ref="fillrecord-container-id" href="${ctx}${action}/delete/${content.id}">删除</a>
								<a target="ajax" ref="fillrecord-container-id" href="${ctx}${action}/${content.id}/edit">修改</a>
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
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="col-md-12">
	<!-- top -->
	<form  onsubmit="return Dcore.validateGetCallback(this)" action="${ctx}${action}"  ref="gastank-container-id" class="form-horizontal" role="form">
	<div class="row">
		<div class=col-md-10 col-md-offset-1" style="padding-top: 20px">
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">abarcode</label>
							<div class="col-sm-8">
								<input name="abarcode"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">barcode</label>
							<div class="col-sm-8">
								<input name="barcode"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">czsj</label>
							<div class="col-sm-8">
								<input name="czsj"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">fpr</label>
							<div class="col-sm-8">
								<input name="fpr"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">fpsj</label>
							<div class="col-sm-8">
								<input name="fpsj"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">ggxh</label>
							<div class="col-sm-8">
								<input name="ggxh"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">gpbm</label>
							<div class="col-sm-8">
								<input name="gpbm"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">gpid</label>
							<div class="col-sm-8">
								<input name="gpid"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">gplx</label>
							<div class="col-sm-8">
								<input name="gplx"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">jdfs</label>
							<div class="col-sm-8">
								<input name="jdfs"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">jdr</label>
							<div class="col-sm-8">
								<input name="jdr"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">jdsj</label>
							<div class="col-sm-8">
								<input name="jdsj"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">khbm</label>
							<div class="col-sm-8">
								<input name="khbm"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">lastCheckTime</label>
							<div class="col-sm-8">
								<input name="lastCheckTime"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">medium</label>
							<div class="col-sm-8">
								<input name="medium"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">nextCheckTime</label>
							<div class="col-sm-8">
								<input name="nextCheckTime"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">pz</label>
							<div class="col-sm-8">
								<input name="pz"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">qjzq</label>
							<div class="col-sm-8">
								<input name="qjzq"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">qybm</label>
							<div class="col-sm-8">
								<input name="qybm"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">sccj</label>
							<div class="col-sm-8">
								<input name="sccj"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">scrq</label>
							<div class="col-sm-8">
								<input name="scrq"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">sscs</label>
							<div class="col-sm-8">
								<input name="sscs"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">ssqy</label>
							<div class="col-sm-8">
								<input name="ssqy"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">sssf</label>
							<div class="col-sm-8">
								<input name="sssf"  class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">synx</label>
							<div class="col-sm-8">
								<input name="synx"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">xpbm</label>
							<div class="col-sm-8">
								<input name="xpbm"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">ywzt</label>
							<div class="col-sm-8">
								<input name="ywzt"  class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">zdbm</label>
							<div class="col-sm-8">
								<input name="zdbm"  class="form-control">
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
			<button href="${ctx}/web/gastank/new" target="ajax" ref="gastank-container-id" type="button" class="btn btn-primary">添加</button>
			<button type="button" class="btn btn-primary">删除</button>|
			<div class="btn-group">
				  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
				   	排序|<span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" role="menu">
				  
				   	<c:forEach items="${fields}" var="field">
				   		<li><a target="ajax" ref="gastank-container-id" href="${ctx}${action}?sortFiled=${field.name}&${searchParams}">${field.name}</a></li>
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
						<th>abarcode</th>
						<th>barcode</th>
						<th>czsj</th>
						<th>fpr</th>
						<th>fpsj</th>
						<th>ggxh</th>
						<th>gpbm</th>
						<th>gpid</th>
						<th>gplx</th>
						<th>jdfs</th>
						<th>jdr</th>
						<th>jdsj</th>
						<th>khbm</th>
						<th>lastCheckTime</th>
						<th>medium</th>
						<th>nextCheckTime</th>
						<th>pz</th>
						<th>qjzq</th>
						<th>qybm</th>
						<th>sccj</th>
						<th>scrq</th>
						<th>sscs</th>
						<th>ssqy</th>
						<th>sssf</th>
						<th>synx</th>
						<th>xpbm</th>
						<th>ywzt</th>
						<th>zdbm</th>
					</tr>
				</thead>
 				<tbody>
 				
 				
 				
 					<c:forEach items="${pages.content}" var="content"  varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
									<td>${content.abarcode}</td>
									<td>${content.barcode}</td>
									<td>${content.czsj}</td>
									<td>${content.fpr}</td>
									<td>${content.fpsj}</td>
									<td>${content.ggxh}</td>
									<td>${content.gpbm}</td>
									<td>${content.gpid}</td>
									<td>${content.gplx}</td>
									<td>${content.jdfs}</td>
									<td>${content.jdr}</td>
									<td>${content.jdsj}</td>
									<td>${content.khbm}</td>
									<td>${content.lastCheckTime}</td>
									<td>${content.medium}</td>
									<td>${content.nextCheckTime}</td>
									<td>${content.pz}</td>
									<td>${content.qjzq}</td>
									<td>${content.qybm}</td>
									<td>${content.sccj}</td>
									<td>${content.scrq}</td>
									<td>${content.sscs}</td>
									<td>${content.ssqy}</td>
									<td>${content.sssf}</td>
									<td>${content.synx}</td>
									<td>${content.xpbm}</td>
									<td>${content.ywzt}</td>
									<td>${content.zdbm}</td>
							<td>
								<a target="ajax" ref="gastank-container-id" href="${ctx}${action}/delete/${content.id}">删除</a>
								<a target="ajax" ref="gastank-container-id" href="${ctx}${action}/${content.id}/edit">修改</a>
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
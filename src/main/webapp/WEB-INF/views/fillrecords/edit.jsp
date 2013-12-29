<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="col-md-12">
	<div class="row">
		<div class="col-md-10 col-md-offset-1" style="padding-top: 20px">
			<form  onsubmit="return Dcore.validateGetCallback(this)" action="${ctx}${action}"  ref="fillrecord-container-id" method="POST" class="form-horizontal">
				
				<input name="id"  type="hidden" value="${fillrecords.id}"/>
				<div class="row">
		<div class=col-md-10 col-md-offset-1" style="padding-top: 20px">
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">cindex</label>
							<div class="col-sm-8">
								<input name="cindex" value="${fillrecords.cindex}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">starttime</label>
							<div class="col-sm-8">
								<input name="starttime" value="${fillrecords.starttime}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">duration</label>
							<div class="col-sm-8">
								<input name="duration" value="${fillrecords.duration}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">normalfill</label>
							<div class="col-sm-8">
								<input name="normalfill" value="${fillrecords.normalfill}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">chipcode</label>
							<div class="col-sm-8">
								<input name="chipcode" value="${fillrecords.chipcode}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">gascylindercode</label>
							<div class="col-sm-8">
								<input name="gascylindercode" value="${fillrecords.gascylindercode}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">departcode</label>
							<div class="col-sm-8">
								<input name="departcode" value="${fillrecords.departcode}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">producdate</label>
							<div class="col-sm-8">
								<input name="producdate" value="${fillrecords.producdate}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">clientcode</label>
							<div class="col-sm-8">
								<input name="clientcode" value="${fillrecords.clientcode}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">filltype</label>
							<div class="col-sm-8">
								<input name="filltype" value="${fillrecords.filltype}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">worker</label>
							<div class="col-sm-8">
								<input name="worker" value="${fillrecords.worker}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">initweight</label>
							<div class="col-sm-8">
								<input name="initweight" value="${fillrecords.initweight}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">fillweight</label>
							<div class="col-sm-8">
								<input name="fillweight" value="${fillrecords.fillweight}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">desweight</label>
							<div class="col-sm-8">
								<input name="desweight" value="${fillrecords.desweight}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">revdata</label>
							<div class="col-sm-8">
								<input name="revdata" value="${fillrecords.revdata}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
			
		</div>
	</div>
	
			<div class="row">
				<div class="col-md-11 col-md-offset-1">
					<button type="submit" class="btn btn-primary">提交</button>
					<button href="${ctx}/web/fillrecords" target="ajax" ref="fillrecord-container-id" type="button" class="btn btn-primary">取消</button>
				</div>
			</div>
			</form>
		</div>
	</div>
	
</div>	
	

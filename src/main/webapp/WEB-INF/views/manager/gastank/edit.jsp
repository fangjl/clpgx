<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="col-md-12">
	<div class="row">
		<div class="col-md-10 col-md-offset-1" style="padding-top: 20px">
			<form  onsubmit="return Dcore.validateGetCallback(this)" action="${ctx}${action}"  ref="gastank-container-id" method="POST" class="form-horizontal">
				
				<input name="id"  type="hidden" value="${gastank.id}"/>
				<div class="row">
		<div class=col-md-10 col-md-offset-1" style="padding-top: 20px">
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">abarcode</label>
							<div class="col-sm-8">
								<input name="abarcode" value="${gastank.abarcode}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">barcode</label>
							<div class="col-sm-8">
								<input name="barcode" value="${gastank.barcode}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">czsj</label>
							<div class="col-sm-8">
								<input name="czsj" value="${gastank.czsj}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">fpr</label>
							<div class="col-sm-8">
								<input name="fpr" value="${gastank.fpr}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">fpsj</label>
							<div class="col-sm-8">
								<input name="fpsj" value="${gastank.fpsj}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">ggxh</label>
							<div class="col-sm-8">
								<input name="ggxh" value="${gastank.ggxh}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">gpbm</label>
							<div class="col-sm-8">
								<input name="gpbm" value="${gastank.gpbm}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">gpid</label>
							<div class="col-sm-8">
								<input name="gpid" value="${gastank.gpid}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">gplx</label>
							<div class="col-sm-8">
								<input name="gplx" value="${gastank.gplx}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">jdfs</label>
							<div class="col-sm-8">
								<input name="jdfs" value="${gastank.jdfs}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">jdr</label>
							<div class="col-sm-8">
								<input name="jdr" value="${gastank.jdr}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">jdsj</label>
							<div class="col-sm-8">
								<input name="jdsj" value="${gastank.jdsj}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">khbm</label>
							<div class="col-sm-8">
								<input name="khbm" value="${gastank.khbm}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">lastCheckTime</label>
							<div class="col-sm-8">
								<input name="lastCheckTime" value="${gastank.lastCheckTime}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">medium</label>
							<div class="col-sm-8">
								<input name="medium" value="${gastank.medium}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">nextCheckTime</label>
							<div class="col-sm-8">
								<input name="nextCheckTime" value="${gastank.nextCheckTime}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">pz</label>
							<div class="col-sm-8">
								<input name="pz" value="${gastank.pz}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">qjzq</label>
							<div class="col-sm-8">
								<input name="qjzq" value="${gastank.qjzq}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">qybm</label>
							<div class="col-sm-8">
								<input name="qybm" value="${gastank.qybm}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">sccj</label>
							<div class="col-sm-8">
								<input name="sccj" value="${gastank.sccj}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">scrq</label>
							<div class="col-sm-8">
								<input name="scrq" value="${gastank.scrq}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">sscs</label>
							<div class="col-sm-8">
								<input name="sscs" value="${gastank.sscs}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">ssqy</label>
							<div class="col-sm-8">
								<input name="ssqy" value="${gastank.ssqy}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">sssf</label>
							<div class="col-sm-8">
								<input name="sssf" value="${gastank.sssf}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">synx</label>
							<div class="col-sm-8">
								<input name="synx" value="${gastank.synx}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">xpbm</label>
							<div class="col-sm-8">
								<input name="xpbm" value="${gastank.xpbm}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">ywzt</label>
							<div class="col-sm-8">
								<input name="ywzt" value="${gastank.ywzt}" class="form-control">
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="form-group">
							<label  class="col-sm-4 control-label">zdbm</label>
							<div class="col-sm-8">
								<input name="zdbm" value="${gastank.zdbm}" class="form-control">
							</div>
						</div>
					</div>
				</div>	
			
		</div>
	</div>
	
			<div class="row">
				<div class="col-md-11 col-md-offset-1">
					<button type="submit" class="btn btn-primary">提交</button>
					<button href="${ctx}/web/gastank" target="ajax" ref="gastank-container-id" type="button" class="btn btn-primary">取消</button>
				</div>
			</div>
			</form>
		</div>
	</div>
	
</div>	
	

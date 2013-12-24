<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<script type="text/javascript">
function _company_onsubmit(){
	var params =$("#company_form").serialize();;
	
	
	$.post("${ctx}/admin/company",params,function(data, textStatus, jqXHR){
		$("#message").text(jsonEval(data).message);
		$("#message").fadeIn("3000",function(){
			$("#message").fadeOut("3000");
		});
		
	});
}

<!--

//-->
</script>
<div class="container">
		<form id="company_form" class="form-horizontal row">
				<input type="hidden" id="id" name="id" value="${company.id}"/>
					<!-- Text input-->
					<label class="control-label" for="input01">企业名称</label>
					<div class="controls">
						<input class="span3" type="text" name="fullName" value="${company.fullName}" placeholder="" class="input-xlarge"/>
					</div>
					<!-- Text input-->
					<label class="control-label" for="input01">企业简称</label>
					<div class="controls">
						<input type="text" name="shortName" value="${company.shortName}" placeholder="" class="input-xlarge">
					</div>
				

					<!-- Text input-->
					<label class="control-label" for="input01">企业LOGO</label>
					<div class="controls">
						<input type="text" placeholder="" class="input-xlarge">
					</div>
			
					<!-- Text input-->
					<label class="control-label" for="input01">联系人</label>
					<div class="controls">
						<input type="text" name="lxr" value="${company.lxr}" placeholder="" class="input-xlarge">
					</div>
				

					<!-- Text input-->
					<label class="control-label" for="input01">职务</label>
					<div class="controls">
						<input type="text" placeholder="" class="input-xlarge">
					</div>
				

					<!-- Text input-->
					<label class="control-label" for="input01">联系电话</label>
					<div class="controls">
						<input type="text" name="lxdh" value="${company.lxr }" placeholder="" class="input-xlarge">
					</div>
				

					<!-- Text input-->
					<label class="control-label" for="input01">移动电话</label>
					<div class="controls">
						<input type="text" placeholder="" class="input-xlarge">
					</div>
			

					<!-- Text input-->
					<label class="control-label" for="input01">电子邮箱</label>
					<div class="controls">
						<input type="text" placeholder="" class="input-xlarge">
					</div>
					<!-- Text input-->
					<label class="control-label" for="input01">企业传真</label>
					<div class="controls">
						<input type="text" placeholder="" class="input-xlarge">
					</div>

					<!-- Select Basic -->
					<label class="control-label">企业类型</label>
					<div class="controls">
						<select class="input-xlarge">
							<option>私营企业</option>
							<option>国营企业</option>
							<option>合作企业</option>
							<option>合伙企业</option>
						</select>
					</div>


					<div class="control-inline">
						<!-- Select Basic -->
						<label class="control-label">成立时间</label>
						<div class="controls">
							<select class="input-xlarge">
								<option>私营企业</option>
								<option>国营企业</option>
								<option>合作企业</option>
								<option>合伙企业</option>
							</select> <select class="input-xlarge">
								<option>私营企业</option>
								<option>国营企业</option>
								<option>合作企业</option>
								<option>合伙企业</option>
							</select>
						</div>
					</div>

					<div class="control-inline">
						<!-- Select Basic -->
						<label class="control-label">所属城市</label>
						<div class="controls">
							<select class="input-xlarge">
								<option>私营企业</option>
								<option>国营企业</option>
								<option>合作企业</option>
								<option>合伙企业</option>
							</select> <select class="input-xlarge">
								<option>私营企业</option>
								<option>国营企业</option>
								<option>合作企业</option>
								<option>合伙企业</option>
							</select>
						</div>
					</div>
					
					<!-- Text input-->
					<label class="control-label" for="input01">通讯地址</label>
					<div class="controls">
						<input type="text" name="address" value="${company.address }" placeholder="" class="input-xlarge">
					</div>
					<!-- Text input-->
					<label class="control-label" for="input01">邮政编码</label>
					<div class="controls">
						<input type="text" placeholder="" class="input-xlarge">
					</div>
					<!-- Text input-->
					<label class="control-label" for="input01">网站地址</label>
					<div class="controls">
						<input type="text" name="netAdress" value="${company.netAdress }" placeholder="" class="input-xlarge">
					</div>
					
					

				          <!-- Button -->
				           

	</form>
	 <button onclick="_company_onsubmit()" class="btn btn-success">提交</button>
	</div>
	

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function _role_sumbit(){
	//	serializeArray()
		var params = $("#_role_form_id").serialize();
		
		$.post("${ctx}/admin/role",params,function(data, textStatus, jqXHR){
			
			$("#message").text(jsonEval(data).message);
			$("#message").fadeIn("3000",function(){
				$("#message").fadeOut("3000");
			});
			
		});
		
		
	}
	
	
	
	
	
	
	
	function _role_clear(){
		
		
		$("#_rold_field_id").val("");
		$("#_rold_field_name").val("");
		$("#_rold_field_remark").val("");
	};
	function _role_select(_box){
		
		$this =$(_box);
		
		$("#_rold_field_id").val($this.attr("id"));
		$("#_rold_field_name").val($this.text());
		$("#_rold_field_remark").val($this.attr("remark"));
		
	}
	function jsonEval(data) {
		try{
			if ($.type(data) == 'string')
				return eval('(' + data + ')');
			else return data;
		} catch (e){
			return {};
		}
	}
	function _role_delete(){
		var id= $("#_rold_field_id").val();
		if(id){
			$.ajax({
				type:"POST",
				url:"${ctx}/admin/role/delete/"+id,
				//dataType:"json",
				cache: false,
				success:function(data, textStatus, jqXHR){
				//	alert(jsonEval(data).message);
				//	alert(eval(data));
					$("#message").text(jsonEval(data).message);
					$("#message").fadeIn("3000",function(){
						
						$("#message").fadeOut("3000");
					});
					
					
				}
			});
		}
		
		
	}
	
</script>


<div class="row">
</div>
	<div class="col-md-2" >
		
			<ul class="nav nav-pills nav-stacked">
				<c:forEach var="role" items="${roles}">
					<li  class="active"><a  href="#" id=${role.id} remark=${role.remark} onclick="_role_select(this)">${role.name}</a></li>
				</c:forEach>
			</ul>
		
	</div>
	<div class="col-md-8 col-md-offset-1">
	
		<div class="row">
			<div class="col-md-offset-1" style="margin-bottom: 10px">
				<button  onclick="_role_clear()" type="button" class="btn btn-default  btn-xs ">添加角色</button>
				<button  type="button" class="btn btn-default  btn-xs">编辑</button>
				<button  onclick="_role_delete()" type="button" class="btn btn-default  btn-xs">删除</button>
				<button  onclick="_role_sumbit()" type="button" class="btn btn-default  btn-xs">保存</button>
				
				
				
				
				
			</div>
			<div class="form-group">
			
			
			<form id="_role_form_id" action="#" method="POST" >
				<input id="_rold_field_id" type="hidden" name="id"></input>
				职务名称：
				<input id="_rold_field_name" type="text" name="name"></input><br/>
				职务描述：
				<textarea id="_rold_field_remark" type="text" height=200px name="remark"></textarea>
			</form>
				
			</div>
			
		</div>
		
		<div class="row">
		
		</div>
	</div>
	



</div>
	
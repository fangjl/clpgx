<#include "/macro.include"/> 
<#include "/custom.include"/> 
<#assign className = table.className>   
<#assign classNameLowerCase = className?lower_case>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="<@jspEl 'pageContext.request.contextPath'/>"/>
<div class="col-md-12">
	<div class="row">
		<div class="col-md-10 col-md-offset-1" style="padding-top: 20px">
			<form  onsubmit="return Dcore.validateGetCallback(this)" action="<@jspEl 'ctx'/><@jspEl 'action'/>"  ref="sysset-container-id" method="POST" class="form-horizontal">
				<div class="row">
			<div class=col-md-10 col-md-offset-1" style="padding-top: 20px">
			<#list table.notPkColumns?chunk(3) as row>
				<div class="row">
					<#list row as column>
					
					<div class="col-md-4">
						<div class="form-group">
							<#if !column.htmlHidden>
							<label  class="col-sm-4 control-label">${column.columnNameLower}</label>
							<div class="col-sm-8">
								<input name="${column.columnNameLower}"  class="form-control">
							</div>
							</#if>
						</div>
					</div>
					</#list>
				</div>	
				</#list>
			
		</div>
	</div>
	
			<div class="row">
				<div class="col-md-11 col-md-offset-1">
					<button type="submit" class="btn btn-primary">提交</button>
					<button href="<@jspEl 'ctx'/>/web/${classNameLowerCase}" target="ajax" ref="sysset-container-id" type="button" class="btn btn-primary">取消</button>
				</div>
			</div>
			</form>
		</div>
	</div>
	
</div>	
	

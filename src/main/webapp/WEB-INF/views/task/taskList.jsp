<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="col-md-12">
	<div class="row">
			<div class="col-md-12">
				<form method="GET" onsubmit="return Dcore.validateGetCallback(this)" action="${ctx}/task" ref="sysset-container-id" class="form-search" >
				<label>名称：</label> <input type="text" name="search_LIKE_title" class="input-medium" value="${param.search_LIKE_title}"> 
				<button type="submit" class="btn" id="search_btn">Search</button>
		    </form>
			</div>
	  </div>
	
	  	
	  
	    <tags:sort/>
	 
		 
	
	
		<table class="table table-striped table-bordered table-condensed">
		<thead><tr><th>任务</th><th>管理</th></tr></thead>
		<tbody>
		<c:forEach items="${tasks.content}" var="task">
			<tr>
				<td><a target="ajax" ref="sysset-container-id" href="${ctx}/task/update/${task.id}">${task.title}</a></td>
				<td><a target="ajax" ref="sysset-container-id" href="${ctx}/task/delete/${task.id}">删除</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
<tags:pagination page="${tasks}" paginationSize="5"/>
	 <button class="btn" href="${ctx}/task/create" target="ajax" ref="sysset-container-id">创建任务</button>

</div>	
	

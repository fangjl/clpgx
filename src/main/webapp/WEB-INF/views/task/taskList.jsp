<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
	</c:if>
	
	
	<div class="row">
		<div class="span4 offset7">
			<form class="form-search" action="#">
				<label>名称：</label> <input type="text" name="search_LIKE_title" class="input-medium" value="${param.search_LIKE_title}"> 
				<button type="submit" class="btn" id="search_btn">Search</button>
		    </form>
	    </div>
	   
	   
	  </div>
	  <div class="row">
	  	<div class="span4 offset7">
	     <tags:sort/>
	    </div>
	  </div>
		 
	 <button class="btn" href="${ctx}/task/create" target="ajax" ref="sysset-container-id">创建任务</button>
	
	
		<table class="table table-striped table-bordered table-condensed" style="width:70%">
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

	
	

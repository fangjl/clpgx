<%@tag pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div >
    <a  href="#">
    	排序: ${sortTypes[param.sortType]} 
    </a>
	<ul  >
	   	<c:forEach items="${sortTypes}" var="entry">
	   		<li><a target="ajax" ref="sysset-container-id" href="${ctx}/task?sortType=${entry.key}&${searchParams}">${entry.value}</a></li>
		</c:forEach>
	</ul>
</div>

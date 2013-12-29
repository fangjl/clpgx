<%@tag pageEncoding="UTF-8"%>
<%@ attribute name="page" type="org.springframework.data.domain.Page" required="true"%>
<%@ attribute name="paginationSize" type="java.lang.Integer" required="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
int current =  page.getNumber() + 1;
int begin = Math.max(1, current - paginationSize/2);
int end = Math.min(begin + (paginationSize - 1), page.getTotalPages());
request.setAttribute("current", current);
request.setAttribute("begin", begin);
request.setAttribute("end", end);
%>


	<ul class="pagination">
		 <% if (page.hasPreviousPage()){%>
               	<li><a target="ajax" ref="sysset-container-id" href="${ctx}${action}?pageNumber=1&sortType=${sortType}&${searchParams}">&lt;&lt;</a></li>
                <li><a target="ajax" ref="sysset-container-id" href="${ctx}${action}?pageNumber=${current-1}&sortType=${sortType}&${searchParams}">&lt;</a></li>
         <%}else{%>
                <li class="disabled"><a href="#">&lt;&lt;</a></li>
                <li class="disabled"><a href="#">&lt;</a></li>
         <%} %>
 
		<c:forEach var="i" begin="${begin}" end="${end}">
            <c:choose>
                <c:when test="${i == current}">
                    <li class="active"><a target="ajax" ref="sysset-container-id" href="${ctx}${action}?pageNumber=${i}&sortType=${sortType}&${searchParams}">${i}</a></li>
                </c:when>
                <c:otherwise>
                    <li><a target="ajax" ref="sysset-container-id" href="${ctx}${action}?pageNumber=${i}&sortType=${sortType}&${searchParams}">${i}</a></li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
	  
	  	 <% if (page.hasNextPage()){%>
               	<li><a target="ajax" ref="sysset-container-id" href="${ctx}${action}?pageNumber=${current+1}&sortType=${sortType}&${searchParams}">&gt;</a></li>
                <li><a target="ajax" ref="sysset-container-id" href="${ctx}${action}?pageNumber=${page.totalPages}&sortType=${sortType}&${searchParams}">&gt;&gt;</a></li>
         <%}else{%>
                <li class="disabled"><a href="#">&gt;</a></li>
                <li class="disabled"><a href="#">&gt;&gt;</a></li>
         <%} %>

	</ul>


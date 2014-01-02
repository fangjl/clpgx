<%@page import="com.dlh.clpgx.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Sysmodule.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="sysmodule"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/sysmodule'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${sysmodule.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Sysmodule.ALIAS_CODE%></td>	
				<td><c:out value='${sysmodule.code}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sysmodule.ALIAS_NAME%></td>	
				<td><c:out value='${sysmodule.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sysmodule.ALIAS_URL%></td>	
				<td><c:out value='${sysmodule.url}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Sysmodule.ALIAS_PARENT%></td>	
				<td><c:out value='${sysmodule.parent}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>
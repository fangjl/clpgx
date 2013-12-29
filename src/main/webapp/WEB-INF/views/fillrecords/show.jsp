<%@page import="com.dlh.clpgx.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=FillRecords.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="fillrecords"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/fillrecords'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${fillRecords.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_CINDEX%></td>	
				<td><c:out value='${fillRecords.cindex}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_STARTTIME%></td>	
				<td><c:out value='${fillRecords.starttime}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_DURATION%></td>	
				<td><c:out value='${fillRecords.duration}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_NORMALFILL%></td>	
				<td><c:out value='${fillRecords.normalfill}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_CHIPCODE%></td>	
				<td><c:out value='${fillRecords.chipcode}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_GASCYLINDERCODE%></td>	
				<td><c:out value='${fillRecords.gascylindercode}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_DEPARTCODE%></td>	
				<td><c:out value='${fillRecords.departcode}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_PRODUCDATE%></td>	
				<td><c:out value='${fillRecords.producdate}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_CLIENTCODE%></td>	
				<td><c:out value='${fillRecords.clientcode}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_FILLTYPE%></td>	
				<td><c:out value='${fillRecords.filltype}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_WORKER%></td>	
				<td><c:out value='${fillRecords.worker}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_INITWEIGHT%></td>	
				<td><c:out value='${fillRecords.initweight}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_FILLWEIGHT%></td>	
				<td><c:out value='${fillRecords.fillweight}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_DESWEIGHT%></td>	
				<td><c:out value='${fillRecords.desweight}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=FillRecords.ALIAS_REVDATA%></td>	
				<td><c:out value='${fillRecords.revdata}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>
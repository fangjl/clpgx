<%@page import="com.dlh.clpgx.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=GasTank.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="gastank"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/gastank'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${gasTank.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_ABARCODE%></td>	
				<td><c:out value='${gasTank.abarcode}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_BARCODE%></td>	
				<td><c:out value='${gasTank.barcode}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_CZSJ%></td>	
				<td><c:out value='${gasTank.czsjString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_FPR%></td>	
				<td><c:out value='${gasTank.fpr}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_FPSJ%></td>	
				<td><c:out value='${gasTank.fpsjString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_GGXH%></td>	
				<td><c:out value='${gasTank.ggxh}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_GPBM%></td>	
				<td><c:out value='${gasTank.gpbm}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_GPID%></td>	
				<td><c:out value='${gasTank.gpid}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_GPLX%></td>	
				<td><c:out value='${gasTank.gplx}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_JDFS%></td>	
				<td><c:out value='${gasTank.jdfs}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_JDR%></td>	
				<td><c:out value='${gasTank.jdr}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_JDSJ%></td>	
				<td><c:out value='${gasTank.jdsjString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_KHBM%></td>	
				<td><c:out value='${gasTank.khbm}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_LAST_CHECK_TIME%></td>	
				<td><c:out value='${gasTank.lastCheckTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_MEDIUM%></td>	
				<td><c:out value='${gasTank.medium}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_NEXT_CHECK_TIME%></td>	
				<td><c:out value='${gasTank.nextCheckTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_PZ%></td>	
				<td><c:out value='${gasTank.pz}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_QJZQ%></td>	
				<td><c:out value='${gasTank.qjzq}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_QYBM%></td>	
				<td><c:out value='${gasTank.qybm}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_SCCJ%></td>	
				<td><c:out value='${gasTank.sccj}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_SCRQ%></td>	
				<td><c:out value='${gasTank.scrqString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_SSCS%></td>	
				<td><c:out value='${gasTank.sscs}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_SSQY%></td>	
				<td><c:out value='${gasTank.ssqy}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_SSSF%></td>	
				<td><c:out value='${gasTank.sssf}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_SYNX%></td>	
				<td><c:out value='${gasTank.synx}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_XPBM%></td>	
				<td><c:out value='${gasTank.xpbm}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_YWZT%></td>	
				<td><c:out value='${gasTank.ywzt}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=GasTank.ALIAS_ZDBM%></td>	
				<td><c:out value='${gasTank.zdbm}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>
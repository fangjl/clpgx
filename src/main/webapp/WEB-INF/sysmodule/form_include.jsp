<%@page import="com.dlh.clpgx.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${sysmodule.id}"/>

	<tr>	
		<td class="tdLabel">
			<%=Sysmodule.ALIAS_CODE%>:
		</td>		
		<td>
		<form:input path="code" id="code" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="code"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Sysmodule.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Sysmodule.ALIAS_URL%>:
		</td>		
		<td>
		<form:input path="url" id="url" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="url"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Sysmodule.ALIAS_PARENT%>:
		</td>		
		<td>
		<form:input path="parent" id="parent" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="parent"/></font>
		</td>
	</tr>	
	
		
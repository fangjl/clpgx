<%@page import="com.dlh.clpgx.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${fillRecords.id}"/>

	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_CINDEX%>:
		</td>		
		<td>
		<form:input path="cindex" id="cindex" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="cindex"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_STARTTIME%>:
		</td>		
		<td>
		<form:input path="starttime" id="starttime" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="starttime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_DURATION%>:
		</td>		
		<td>
		<form:input path="duration" id="duration" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="duration"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_NORMALFILL%>:
		</td>		
		<td>
		<form:input path="normalfill" id="normalfill" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="normalfill"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_CHIPCODE%>:
		</td>		
		<td>
		<form:input path="chipcode" id="chipcode" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="chipcode"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_GASCYLINDERCODE%>:
		</td>		
		<td>
		<form:input path="gascylindercode" id="gascylindercode" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="gascylindercode"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_DEPARTCODE%>:
		</td>		
		<td>
		<form:input path="departcode" id="departcode" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="departcode"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_PRODUCDATE%>:
		</td>		
		<td>
		<form:input path="producdate" id="producdate" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="producdate"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_CLIENTCODE%>:
		</td>		
		<td>
		<form:input path="clientcode" id="clientcode" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="clientcode"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_FILLTYPE%>:
		</td>		
		<td>
		<form:input path="filltype" id="filltype" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="filltype"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_WORKER%>:
		</td>		
		<td>
		<form:input path="worker" id="worker" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="worker"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_INITWEIGHT%>:
		</td>		
		<td>
		<form:input path="initweight" id="initweight" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="initweight"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_FILLWEIGHT%>:
		</td>		
		<td>
		<form:input path="fillweight" id="fillweight" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="fillweight"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_DESWEIGHT%>:
		</td>		
		<td>
		<form:input path="desweight" id="desweight" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="desweight"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=FillRecords.ALIAS_REVDATA%>:
		</td>		
		<td>
		<form:input path="revdata" id="revdata" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="revdata"/></font>
		</td>
	</tr>	
	
		
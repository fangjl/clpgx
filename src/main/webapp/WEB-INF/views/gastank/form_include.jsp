<%@page import="com.dlh.clpgx.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${gasTank.id}"/>

	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_ABARCODE%>:
		</td>		
		<td>
		<form:input path="abarcode" id="abarcode" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="abarcode"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_BARCODE%>:
		</td>		
		<td>
		<form:input path="barcode" id="barcode" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="barcode"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_CZSJ%>:
		</td>		
		<td>
		<input value="${gasTank.czsjString}" onclick="WdatePicker({dateFmt:'<%=GasTank.FORMAT_CZSJ%>'})" id="czsjString" name="czsjString"  maxlength="0" class="" />
		<font color='red'><form:errors path="czsj"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_FPR%>:
		</td>		
		<td>
		<form:input path="fpr" id="fpr" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="fpr"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_FPSJ%>:
		</td>		
		<td>
		<input value="${gasTank.fpsjString}" onclick="WdatePicker({dateFmt:'<%=GasTank.FORMAT_FPSJ%>'})" id="fpsjString" name="fpsjString"  maxlength="0" class="" />
		<font color='red'><form:errors path="fpsj"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_GGXH%>:
		</td>		
		<td>
		<form:input path="ggxh" id="ggxh" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="ggxh"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_GPBM%>:
		</td>		
		<td>
		<form:input path="gpbm" id="gpbm" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="gpbm"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_GPID%>:
		</td>		
		<td>
		<form:input path="gpid" id="gpid" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="gpid"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_GPLX%>:
		</td>		
		<td>
		<form:input path="gplx" id="gplx" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="gplx"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_JDFS%>:
		</td>		
		<td>
		<form:input path="jdfs" id="jdfs" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="jdfs"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_JDR%>:
		</td>		
		<td>
		<form:input path="jdr" id="jdr" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="jdr"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_JDSJ%>:
		</td>		
		<td>
		<input value="${gasTank.jdsjString}" onclick="WdatePicker({dateFmt:'<%=GasTank.FORMAT_JDSJ%>'})" id="jdsjString" name="jdsjString"  maxlength="0" class="" />
		<font color='red'><form:errors path="jdsj"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_KHBM%>:
		</td>		
		<td>
		<form:input path="khbm" id="khbm" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="khbm"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_LAST_CHECK_TIME%>:
		</td>		
		<td>
		<input value="${gasTank.lastCheckTimeString}" onclick="WdatePicker({dateFmt:'<%=GasTank.FORMAT_LAST_CHECK_TIME%>'})" id="lastCheckTimeString" name="lastCheckTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="lastCheckTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_MEDIUM%>:
		</td>		
		<td>
		<form:input path="medium" id="medium" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="medium"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_NEXT_CHECK_TIME%>:
		</td>		
		<td>
		<input value="${gasTank.nextCheckTimeString}" onclick="WdatePicker({dateFmt:'<%=GasTank.FORMAT_NEXT_CHECK_TIME%>'})" id="nextCheckTimeString" name="nextCheckTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="nextCheckTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_PZ%>:
		</td>		
		<td>
		<form:input path="pz" id="pz" cssClass="validate-number " maxlength="22" />
		<font color='red'><form:errors path="pz"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_QJZQ%>:
		</td>		
		<td>
		<form:input path="qjzq" id="qjzq" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="qjzq"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_QYBM%>:
		</td>		
		<td>
		<form:input path="qybm" id="qybm" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="qybm"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_SCCJ%>:
		</td>		
		<td>
		<form:input path="sccj" id="sccj" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="sccj"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_SCRQ%>:
		</td>		
		<td>
		<input value="${gasTank.scrqString}" onclick="WdatePicker({dateFmt:'<%=GasTank.FORMAT_SCRQ%>'})" id="scrqString" name="scrqString"  maxlength="0" class="" />
		<font color='red'><form:errors path="scrq"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_SSCS%>:
		</td>		
		<td>
		<form:input path="sscs" id="sscs" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="sscs"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_SSQY%>:
		</td>		
		<td>
		<form:input path="ssqy" id="ssqy" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="ssqy"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_SSSF%>:
		</td>		
		<td>
		<form:input path="sssf" id="sssf" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="sssf"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_SYNX%>:
		</td>		
		<td>
		<form:input path="synx" id="synx" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="synx"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_XPBM%>:
		</td>		
		<td>
		<form:input path="xpbm" id="xpbm" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="xpbm"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_YWZT%>:
		</td>		
		<td>
		<form:input path="ywzt" id="ywzt" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="ywzt"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=GasTank.ALIAS_ZDBM%>:
		</td>		
		<td>
		<form:input path="zdbm" id="zdbm" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="zdbm"/></font>
		</td>
	</tr>	
	
		
<#include "/macro.include"/>
<#include "/custom.include"/>
<#assign className = table.className> 
<#assign classNameLower =className?uncap_first> 
<#assign classNameLowerCase =className?lower_case> 
<#assign pkJavaType = table.idColumn.javaType>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="<@jspEl 'pageContext.request.contextPath'/>" />


<!-- BEGIN EXAMPLE TABLE PORTLET-->
				
               <div class="portlet box blue">
                  <div class="portlet-title">
                     <i class="icon-globe"></i>${className}</div>
                     <div class="actions">
                        <div class="btn-group">
                           <a class="btn default" href="#" data-toggle="dropdown">
                           		显示列
                           <i class="icon-angle-down"></i>
                           </a>
                           <div id="id="${basepackage}.entity.${className}_list_dom_id_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
                              <label><input type="checkbox" checked data-column="0">Rendering engine</label>
                              <label><input type="checkbox" checked data-column="1">Browser</label>
                              <label><input type="checkbox" checked data-column="2">Platform(s)</label>
                              <label><input type="checkbox" checked data-column="3">Engine version</label>
                              <label><input type="checkbox" checked data-column="4">CSS grade</label>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="portlet-body">
                  
                     <table class="table table-striped table-bordered table-hover table-full-width" id="${basepackage}.entity.${className}_list_dom_id">
                        <thead>
                           <tr>
                          	  <th>序号</th> 
								<#list table.columns as column> 
								<#if !column.htmlHidden>
								<th class="hidden-xs">${column.columnNameLower}</th>
								</#if>
								</#list>
                           </tr>
                        </thead>
                        <tbody>
                        </tbody>
                     </table>
                  </div>
               </div>
               <!-- END EXAMPLE TABLE PORTLET-->
      

<script type="text/javascript">
<!-- new Grid -->
<script type="text/javascript">
$('#${basepackage}.entity.${className}_list_dom_id').dataTable( {
	"bProcessing": true,
    "bServerSide": true,
    "sAjaxSource": "<@jspEl 'ctx'/><@jspEl 'action'/>/list",
    "oLanguage": {
	     "sInfo": "第 _START_ 到 _END_条  共 _TOTAL_ 条记录"
	 },
	 "iDisplayLength": 10,
     "aLengthMenu": [
        [10, 15, 20,25],
        [10, 15, 20,25] // change per page values here
    ],
	//"id":1,"cindex":"1","starttime":"","duration":"","normalfill":"111111111111111","chipcode":"1111111111","gascylindercode":"","departcode":"","producdate":"11111111111","clientcode":"11111111111","filltype":"","worker":"","initweight":"1111111111111","fillweight":"1111111111","desweight":"","revdata":
    "aoColumns": [
		<#list table.columns as column> 
		<#if !column.htmlHidden>
		{ "mData": "${column.columnNameLower}" },
		</#if>
		</#list>
		
    ]
} );


</script>
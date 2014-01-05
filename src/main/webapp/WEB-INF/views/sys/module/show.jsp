<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="icon-globe"></i>Module</div>
		<div class="tools">
			<a class="collapse" href="javascript:;"></a> <a class="config"
				data-toggle="modal" href="#portlet-config"></a> <a class="reload"
				href="javascript:;"></a> <a class="remove" href="javascript:;"></a>
		</div>
	</div>
	<div class="portlet-body">
		<table
			class="table table-striped table-bordered table-hover table-full-width"
			id="com.dlh.clpgx.modules.sys.entity.Module_list_dom_id">
			<thead>
				<tr>
					<th>序号</th> 
					<th class="hidden-xs">code</th>
					<th class="hidden-xs">css</th>
					<th class="hidden-xs">icon</th>
					<th class="hidden-xs">name</th>
					<th class="hidden-xs">remark</th>
					<th class="hidden-xs">url</th>
					<th class="hidden-xs">parent</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
</div>


<!-- new Grid -->
<script type="text/javascript">
$('#com.dlh.clpgx.modules.sys.entity.Module_list_dom_id').dataTable( {
	"bProcessing": true,
    "bServerSide": true,
    "sAjaxSource": "/clpgx/manager/sys/module/list",
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
		{ "mData": "code" },
		{ "mData": "css" },
		{ "mData": "icon" },
		{ "mData": "name" },
		{ "mData": "remark" },
		{ "mData": "url" },
		{ "mData": "parent" },
		
    ]
} );

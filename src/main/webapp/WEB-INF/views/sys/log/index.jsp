
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!-- BEGIN PAGE HEADER-->

<div>
	<div class="col-md-12">


		<!--page-->


<!-- BEGIN EXAMPLE TABLE PORTLET-->
				
               <div class="portlet box blue">
                  <div class="portlet-title">
                     <i class="icon-globe"></i>Log</div>
                     <div class="actions">
                        <div class="btn-group">
                           <a class="btn default" href="#" data-toggle="dropdown">
                           		显示列
                           <i class="icon-angle-down"></i>
                           </a>
                           <div id="Log_list_dom_id_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
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
                  
                     <table class="table table-striped table-bordered table-hover table-full-width" id="Log_list_dom_id">
                        <thead>
                           <tr>
                          	  <th>序号</th> 
								<th class="hidden-xs">createDate</th>
								<th class="hidden-xs">exception</th>
								<th class="hidden-xs">method</th>
								<th class="hidden-xs">params</th>
								<th class="hidden-xs">remoteAddr</th>
								<th class="hidden-xs">requestUri</th>
								<th class="hidden-xs">type</th>
								<th class="hidden-xs">userAgent</th>
								<th class="hidden-xs">createBy</th>
                           </tr>
                        </thead>
                        <tbody>
                        </tbody>
                     </table>
                  </div>
               </div>
               <!-- END EXAMPLE TABLE PORTLET-->
      

		
		<!--end-->




	</div>
</div>
<!-- END PAGE CONTENT-->

<!-- new Grid -->
<script type="text/javascript">
$('#Log_list_dom_id').dataTable( {
	"bProcessing": true,
    "bServerSide": true,
    "sAjaxSource": "${ctx}${action}/list",
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
		{ "mData": "createDate" },
		{ "mData": "exception" },
		{ "mData": "method" },
		{ "mData": "params" },
		{ "mData": "remoteAddr" },
		{ "mData": "requestUri" },
		{ "mData": "type" },
		{ "mData": "userAgent" },
		{ "mData": "createBy" },
		
    ]
} );


</script>

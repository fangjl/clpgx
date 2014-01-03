<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />


<!-- BEGIN EXAMPLE TABLE PORTLET-->
				
               <div class="portlet box blue">
                  <div class="portlet-title">
                     <i class="icon-globe"></i>Role</div>
                     <div class="actions">
                        <div class="btn-group">
                           <a class="btn default" href="#" data-toggle="dropdown">
                           		显示列
                           <i class="icon-angle-down"></i>
                           </a>
                           <div id="id="com.dlh.clpgx.modules.sys.entity.Role_list_dom_id_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
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
                  
                     <table class="table table-striped table-bordered table-hover table-full-width" id="com.dlh.clpgx.modules.sys.entity.Role_list_dom_id">
                        <thead>
                           <tr>
                          	  <th>序号</th> 
								<th class="hidden-xs">code</th>
								<th class="hidden-xs">name</th>
								<th class="hidden-xs">remark</th>
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
$('#com.dlh.clpgx.modules.sys.entity.Role_list_dom_id').dataTable( {
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
		{ "mData": "code" },
		{ "mData": "name" },
		{ "mData": "remark" },
		
    ]
} );


</script>
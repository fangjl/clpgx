
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>


<div >
	<div class="col-md-12">


		<!--page-->


<!-- BEGIN EXAMPLE TABLE PORTLET-->
				
               <div class="portlet box blue">
                  <div class="portlet-title">
                     <i class="icon-globe"></i>Dict</div>
                    
                  </div>
                  <div class="portlet-body">
                  
                     <table class="table table-striped table-bordered table-hover table-full-width" id="Dict_list_dom_id">
                        <thead>
                           <tr>
                          	  <th>序号</th> 
								<th class="hidden-xs">createDate</th>
								<th class="hidden-xs">delFlag</th>
								<th class="hidden-xs">remarks</th>
								<th class="hidden-xs">updateDate</th>
								<th class="hidden-xs">description</th>
								<th class="hidden-xs">label</th>
								<th class="hidden-xs">sort</th>
								<th class="hidden-xs">type</th>
								<th class="hidden-xs">value</th>
								<th class="hidden-xs">companyId</th>
								<th class="hidden-xs">createBy</th>
								<th class="hidden-xs">updateBy</th>
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
<!-- END PAGE CONTENT-->

<!-- new Grid -->
<script type="text/javascript">
$('#Dict_list_dom_id').dataTable( {
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
		{ "mData": "delFlag" },
		{ "mData": "remarks" },
		{ "mData": "updateDate" },
		{ "mData": "description" },
		{ "mData": "label" },
		{ "mData": "sort" },
		{ "mData": "type" },
		{ "mData": "value" },
		{ "mData": "companyId" },
		{ "mData": "createBy" },
		{ "mData": "updateBy" },
		
    ]
} );


</script>

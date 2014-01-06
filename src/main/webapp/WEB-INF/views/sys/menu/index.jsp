<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!-- BEGIN PAGE HEADER-->

<div>
	<div class="col-md-12">
               <div class="portlet box blue">
                  <div class="portlet-title">
                     <i class="icon-globe"></i>系统菜单</div>
                  </div>
                  <div class="portlet-body">
                  
                     <table class="table table-striped table-bordered table-hover table-full-width" id="Menu_list_dom_id">
                        <thead>
                           <tr>
                          	  <th>序号</th> 
								<th class="hidden-xs">样式</th>
								<th class="hidden-xs">是否显示</th>
								<th class="hidden-xs">菜单名字</th>
								<th class="hidden-xs">URL</th>
								<th class="hidden-xs">说明</th>
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
$('#Menu_list_dom_id').dataTable( {
	"bProcessing": true,
    "bServerSide": true,
    "sAjaxSource": "${ctx}/sys/menu/list",
    "oLanguage": {
	     "sInfo": "第 _START_ 到 _END_条  共 _TOTAL_ 条记录"
	 },
	 "iDisplayLength": 10,
     "aLengthMenu": [
        [10, 15, 20,25],
        [10, 15, 20,25] 
      ],
   		 "aoColumns": [
		{ "mData": "icon" },
		{ "mData": "isShow" },
		{ "mData": "name" },
		{ "mData": "href" },
		{ "mData": "remarks" }
    ]
} );


</script>

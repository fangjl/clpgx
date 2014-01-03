<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!-- BEGIN PAGE HEADER-->
<div class="row">
<div class="col-md-12">
<!-- BEGIN PAGE TITLE & BREADCRUMB-->
<h3 class="page-title">
充装管理    <small>充装检索</small>
</h3>
<ul class="page-breadcrumb breadcrumb">
<li class="btn-group">
                    <button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
                        <span>Actions</span> <i class="icon-angle-down"></i>
                    </button>
                    <ul class="dropdown-menu pull-right" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>    
 
<li>
<i class="icon-home"></i>
<a  href="${ctx}/manager/desk">首页</a> 

<i class="icon-angle-right"></i>
</li>
<li><a href="#">充装检索</a></li>

                
</ul>
<!-- END PAGE TITLE & BREADCRUMB-->
</div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->          
<div class="row">
<div class="col-md-12">
				
<!-- BEGIN EXAMPLE TABLE PORTLET-->
				
				
				
               <div class="portlet box blue">
                  <div class="portlet-title">
                     <div class="caption"><i class="icon-globe"></i>充值记录</div>
                     <div class="actions">
                        <div class="btn-group">
                           <a class="btn default" href="#" data-toggle="dropdown">
                           		显示列
                           <i class="icon-angle-down"></i>
                           </a>
                           <div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
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
                     <table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
                        <thead>
                           <tr>
                          	  <th>序号</th>
                              <th>normalfill</th>
                              <th>chipcode</th>
                              <th class="hidden-xs">gascylindercode</th>
                              <th class="hidden-xs">departcode</th>
                              <th class="hidden-xs">producdate</th>
                              <th class="hidden-xs">clientcode</th>
                           </tr>
                        </thead>
                        <tbody>
                        </tbody>
                     </table>
                  </div>
               </div>
               <!-- END EXAMPLE TABLE PORTLET-->
            </div>
         </div>
<!-- END PAGE CONTENT-->
<script type="text/javascript">
$('#sample_2').dataTable( {
	"bProcessing": true,
    "bServerSide": true,
    "sAjaxSource": "/clpgx/manager/fillrecords/list",
    "oLanguage": {
	     "sInfo": "第 _START_ 到 _END_条  共 _TOTAL_ 条记录"
	 },
	 "iDisplayLength": 10,  //每页10；
     "aLengthMenu": [
        [10, 15, 20,25],
        [10, 15, 20,25] // change per page values here
    ],
	//"id":1,"cindex":"1","starttime":"","duration":"","normalfill":"111111111111111","chipcode":"1111111111","gascylindercode":"","departcode":"","producdate":"11111111111","clientcode":"11111111111","filltype":"","worker":"","initweight":"1111111111111","fillweight":"1111111111","desweight":"","revdata":
    "aoColumns": [
		{ "mData": "id" },
		{ "mData": "normalfill" },
        { "mData": "chipcode" },
        { "mData": "gascylindercode" },
        { "mData": "departcode" },
        { "mData": "producdate" },
        { "mData": "clientcode" }
    ]
} );

//TableAdvanced.init();

</script>
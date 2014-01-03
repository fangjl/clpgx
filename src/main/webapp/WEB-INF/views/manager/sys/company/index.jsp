<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!-- BEGIN PAGE HEADER-->
<div class="row">
<div class="col-md-12">
<!-- BEGIN PAGE TITLE & BREADCRUMB-->
<h3 class="page-title">
<small>公司信息</small>
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
	<a  href="#">首页</a> 
	<i class="icon-angle-right"></i>
</li>
<li>
	<a  href="#">系统设置</a> 
	<i class="icon-angle-right"></i>
</li>
<li>
	<li><a href="#">公司信息</a></li>
</ul>
<!-- END PAGE TITLE & BREADCRUMB-->
</div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->          
<div class="row">
<div class="col-md-12">
	
	
	<div class="portlet box purple">
                           <div class="portlet-title">
                              <div class="caption"><i class="icon-reorder"></i>公司信息</div>
                              <div class="tools">
                                 <a class="config" data-toggle="modal" href="#portlet-config"></a>
                                 <a class="reload" href="javascript:;"></a>
                              </div>
                           </div>
                           <div class="portlet-body form">
                              <!-- BEGIN FORM-->
                              <form class="form-horizontal" action="#">
                                 <div class="form-body">
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">公司全称</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                     <div class="form-group">
                                       <label class="col-md-3 control-label">公司简称</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">企业LOGO</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">联系人</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">职务</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">联系电话</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">移动电话</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                     <div class="form-group">
                                       <label class="col-md-3 control-label">电子邮箱</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">传真</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                     <div class="form-group">
                                       <label class="col-md-3 control-label">企业类型</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">成立时间</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">所属区域</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">通信地址</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">邮政编码</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-3 control-label">网站</label>
                                       <div class="col-md-4">
                                          <input type="text" placeholder="Enter text" class="form-control">
                                       </div>
                                    </div>
                                 <div class="form-actions nobg fluid">
                                    <div class="col-md-offset-6 col-md-3">
                                       <button class="btn green" type="submit">提交</button>
                                    </div>
                                 </div>
                              </form>
                              <!-- END FORM--> 
                           </div>
                        </div>
	<!--bord-->

</div>
</div>
<!-- END PAGE CONTENT-->
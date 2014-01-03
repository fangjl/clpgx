<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!-- BEGIN PAGE HEADER-->
<div class="row">
<div class="col-md-12">
<!-- BEGIN PAGE TITLE & BREADCRUMB-->
<h3 class="page-title">
<small>我的桌面</small>
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
<li><a href="#"></a></li>

                
</ul>
<!-- END PAGE TITLE & BREADCRUMB-->
</div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->          
<div class="row">
<div class="col-md-12">
<blockquote>
This page demostrates the page content loading via ajax.
To try it please click on the sidebar menu items.<br>
<hr>
<span class="label label-danger">
NOTE:   
</span>&nbsp;This sample does not work if you opened the page directly from the browser since ajax calls require to receive the response from a web server.
</blockquote>
</div>
</div>
<!-- END PAGE CONTENT-->
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="page-content" style="min-height:1111px !important">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->               
            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="portlet-config" class="modal fade">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button"></button>
                        <h4 class="modal-title">Modal title</h4>
                     </div>
                     <div class="modal-body">
                        Widget settings form goes here
                     </div>
                     <div class="modal-footer">
                        <button class="btn blue" type="button">Save changes</button>
                        <button data-dismiss="modal" class="btn default" type="button">Close</button>
                     </div>
                  </div>
                  <!-- /.modal-content -->
               </div>
               <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <!-- BEGIN STYLE CUSTOMIZER -->
            <div class="theme-panel hidden-xs hidden-sm">
               <div class="toggler"></div>
               <div class="toggler-close"></div>
               <div class="theme-options">
                  <div class="theme-option theme-colors clearfix">
                     <span>THEME COLOR</span>
                     <ul>
                        <li data-style="default" class="color-black current color-default"></li>
                        <li data-style="blue" class="color-blue"></li>
                        <li data-style="brown" class="color-brown"></li>
                        <li data-style="purple" class="color-purple"></li>
                        <li data-style="grey" class="color-grey"></li>
                        <li data-style="light" class="color-white color-light"></li>
                     </ul>
                  </div>
                  <div class="theme-option">
                     <span>Layout</span>
                     <select disabled="" class="layout-option form-control small">
                        <option value="fluid">Fluid</option>
                        <option selected="selected" value="boxed">Boxed</option>
                     </select>
                  </div>
                  <div class="theme-option">
                     <span>Header</span>
                     <select class="header-option form-control input-small">
                        <option selected="selected" value="fixed">Fixed</option>
                        <option value="default">Default</option>
                     </select>
                  </div>
                  <div class="theme-option">
                     <span>Sidebar</span>
                     <select class="sidebar-option form-control input-small">
                        <option value="fixed">Fixed</option>
                        <option selected="selected" value="default">Default</option>
                     </select>
                  </div>
                  <div class="theme-option">
                     <span>Footer</span>
                     <select class="footer-option form-control input-small">
                        <option value="fixed">Fixed</option>
                        <option selected="selected" value="default">Default</option>
                     </select>
                  </div>
               </div>
            </div>
            <!-- END STYLE CUSTOMIZER -->   
            <!-- BEGIN PAGE HEADER-->
            <div class="row">
               <div class="col-md-12">
                  <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                  <h3 class="page-title">
                     Boxed Page <small>responsive boxed layout</small>
                  </h3>
                  <ul class="page-breadcrumb breadcrumb">
                     <li class="btn-group">
                        <button data-close-others="true" data-delay="1000" data-hover="dropdown" data-toggle="dropdown" class="btn blue dropdown-toggle" type="button">
                        <span>Actions</span> <i class="icon-angle-down"></i>
                        </button>
                        <ul role="menu" class="dropdown-menu pull-right">
                           <li><a href="#">Action</a></li>
                           <li><a href="#">Another action</a></li>
                           <li><a href="#">Something else here</a></li>
                           <li class="divider"></li>
                           <li><a href="#">Separated link</a></li>
                        </ul>
                     </li>
                     <li>
                        <i class="icon-home"></i>
                        <a href="index.html">Home</a> 
                        <i class="icon-angle-right"></i>
                     </li>
                     <li>
                        <a href="#">Layouts</a>
                        <i class="icon-angle-right"></i>
                     </li>
                     <li><a href="#">Boxed Page</a></li>
                  </ul>
                  <!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row">
               <div class="col-md-12">
                  Page content goes here
               </div>
            </div>
            <!-- END PAGE CONTENT-->
         </div>


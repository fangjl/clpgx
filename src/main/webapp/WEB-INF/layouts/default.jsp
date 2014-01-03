<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.0
Version: 1.5.2
Author: KeenThemes
Website: http://www.keenthemes.com/
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
   <meta charset="utf-8" />
   <title>佳气站-<sitemesh:title/></title>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />

	<!-- 不缓存页面 -->
	<meta http-equiv="Cache-Control" content="no-store" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Expires" content="0" />
	
	   
   
   <meta name="MobileOptimized" content="320">
   <!-- BEGIN GLOBAL MANDATORY STYLES -->          
   <link href="${ctx}/static/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
   <!-- END GLOBAL MANDATORY STYLES -->
   <!-- BEGIN PAGE LEVEL STYLES -->
   <link rel="stylesheet" type="text/css" href="${ctx}/static/assets/plugins/select2/select2_metro.css" />
   <link rel="stylesheet" href="${ctx}/static/assets/plugins/data-tables/DT_bootstrap.css" />
   <!-- END PAGE LEVEL STYLES -->
   
   
   <!-- BEGIN THEME STYLES --> 
   <link href="${ctx}/static/assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/css/style.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/css/plugins.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/css/themes/light.css" rel="stylesheet" type="text/css" id="style_color"/>
   <link href="${ctx}/static/assets/css/custom.css" rel="stylesheet" type="text/css"/>
   <!-- END THEME STYLES -->
   <link rel="shortcut icon" href="${ctx}/static/images/favicon.ico" />
	<sitemesh:head/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
   <!-- BEGIN HEADER -->   
   <div class="header navbar navbar-inverse navbar-fixed-top">
      <!-- BEGIN TOP NAVIGATION BAR -->
      <%@ include file="/WEB-INF/layouts/header.jsp"%>
      <!-- END TOP NAVIGATION BAR -->
   </div>
   <!-- END HEADER -->
   
   
   	<div class="clearfix"></div>
 
 
 	 <!-- BEGIN CONTAINER -->
 	<div class="page-container">
 			
 			 <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->               
      <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                  <h4 class="modal-title">Modal title</h4>
               </div>
               <div class="modal-body">
                  Widget settings form goes here
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn blue">Save changes</button>
                  <button type="button" class="btn default" data-dismiss="modal">Close</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
      
      <!-- BEGIN SIDEBAR1 -->
      <%@ include file="/WEB-INF/layouts/sidebar.jsp"%>
 	  <!-- END SIDEBAR1 -->	
 	  
 	  
 	    <!-- BEGIN PAGE -->
      <div class="page-content">
         <!-- BEGIN STYLE CUSTOMIZER -->
         <div class="theme-panel hidden-xs hidden-sm">
            <div class="toggler"></div>
            <div class="toggler-close"></div>
            <div class="theme-options">
               <div class="theme-option theme-colors clearfix">
                  <span>背景颜色</span>
                  <ul>
                     <li class="color-black current color-default" data-style="default"></li>
                     <li class="color-blue" data-style="blue"></li>
                     <li class="color-brown" data-style="brown"></li>
                     <li class="color-purple" data-style="purple"></li>
                     <li class="color-grey" data-style="grey"></li>
                     <li class="color-white color-light" data-style="light"></li>
                  </ul>
               </div>
               <div class="theme-option">
                  <span>页面</span>
                  <select class="layout-option form-control input-small">
                     <option value="fluid" selected="selected">窄屏</option>
                     <option value="boxed">宽屏</option>
                  </select>
               </div>
               <div class="theme-option">
                  <span>头部</span>
                  <select class="header-option form-control input-small">
                     <option value="fixed" selected="selected">固定</option>
                     <option value="default">默认</option>
                  </select>
               </div>
               <div class="theme-option">
                  <span>菜单</span>
                  <select class="sidebar-option form-control input-small">
                     <option value="fixed">固定</option>
                     <option value="default" selected="selected">默认</option>
                  </select>
               </div>
               <div class="theme-option">
                  <span>页脚</span>
                  <select class="footer-option form-control input-small">
                     <option value="fixed">固定</option>
                     <option value="default" selected="selected">默认</option>
                  </select>
               </div>
            </div>
         </div>
         <!-- END BEGIN STYLE CUSTOMIZER --> 
         <div class="page-content-body">
         	<sitemesh:body/>
            <!-- HERE WILL BE LOADED AN AJAX CONTENT -->
         </div>
      </div>
      <!-- BEGIN PAGE -->   
 	</div>
 	
 	<!-- footer -->
	<%@ include file="/WEB-INF/layouts/footer.jsp"%>
	<!-- footer -->
	
	
	
	
   <!-- END FOOTER -->
   <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
   <!-- BEGIN CORE PLUGINS -->   
   <!--[if lt IE 9]>
   <script src="${ctx}/static/assets/plugins/respond.min.js"></script>
   <script src="${ctx}/static/assets/plugins/excanvas.min.js"></script> 
   <![endif]-->   
   <script src="${ctx}/static/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>      
   
   
   <script src="${ctx}/static/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
   <script src="${ctx}/static/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
   <script src="${ctx}/static/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
   <!-- 插件-->
   <script type="text/javascript" src="${ctx}/static/assets/plugins/select2/select2.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/assets/plugins/data-tables/jquery.dataTables.min.js"></script>
   <script type="text/javascript" src="${ctx}/static/assets/plugins/data-tables/DT_bootstrap.js"></script>
   
      <script src="${ctx}/static/assets/scripts/app.js"></script>     
      <script src="${ctx}/static/assets/scripts/table-advanced.js"></script>
        
   <script>
      jQuery(document).ready(function() {  
         App.init();
       //  $('.page-sidebar .ajaxify.start').click() // load the content for the dashboard page.
      });
   </script>
   <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
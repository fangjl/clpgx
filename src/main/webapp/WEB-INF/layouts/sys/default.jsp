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
<body class="page-header-fixed page-boxed">
   <!-- BEGIN HEADER -->   
   <div class="header navbar navbar-inverse navbar-fixed-top">
      <!-- BEGIN TOP NAVIGATION BAR -->
      <div class="container">
      <%@ include file="/WEB-INF/layouts/manager/header.jsp"%>
      </div>
      <!-- END TOP NAVIGATION BAR -->
   </div>
   <!-- END HEADER -->
   
   
   	<div class="clearfix"></div>
 
 
 	 <!-- BEGIN CONTAINER -->
 	 <div class="container">
 	 
 	
 	<div class="page-container">
 			
 	    <!-- BEGIN PAGE -->
      
         <div class="page-content" style="margin-left:0px">
         
         <!-- END BEGIN STYLE CUSTOMIZER --> 
         	<sitemesh:body/>
         	</div>
            <!-- HERE WILL BE LOADED AN AJAX CONTENT -->
     
      <!-- BEGIN PAGE -->   
 	</div>
 	 </div>
 	<!-- footer -->
	<%@ include file="/WEB-INF/layouts/manager/footer.jsp"%>

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
   
   <script type="text/javascript" src="${ctx}/static/assets/plugins/fuelux/js/tree.min.js"></script>  
   
    <script src="${ctx}/static/assets/scripts/app.js"></script>  
    <script src="${ctx}/static/js/Sys.js"></script>     
    <script src="${ctx}/static/js/Tree.js"></script>     
       
   <script>
      jQuery(document).ready(function() {  
         App.init();
         Sys.init();
      });
   </script>
   <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
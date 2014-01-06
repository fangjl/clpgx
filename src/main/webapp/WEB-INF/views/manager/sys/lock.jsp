<%@ page contentType="text/html;charset=UTF-8"%>
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
  <title>Metronic | Extra - Lock Screen</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta content="" name="description" />
  <meta content="" name="author" />
  <meta name="MobileOptimized" content="320">
  <!-- BEGIN GLOBAL MANDATORY STYLES -->          
  <link href="${ctx}/static/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
  <link href="${ctx}/static/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  <link href="${ctx}/static/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
  <!-- END GLOBAL MANDATORY STYLES -->
  <!-- BEGIN THEME STYLES --> 
  <link href="${ctx}/static/assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
  <link href="${ctx}/static/assets/css/style.css" rel="stylesheet" type="text/css"/>
  <link href="${ctx}/static/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
  <link href="${ctx}/static/assets/css/plugins.css" rel="stylesheet" type="text/css"/>
  <link href="${ctx}/static/assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
  <link href="${ctx}/static/assets/css/pages/lock.css" rel="stylesheet" type="text/css" />
  <link href="${ctx}/static/assets/css/custom.css" rel="stylesheet" type="text/css"/>
  <!-- END THEME STYLES -->
  <link rel="shortcut icon" href="${ctx}/static/images/favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
  <div class="page-lock">
    <div class="page-logo">
      <a class="brand" href="index.html">
      <img src="${ctx}/static/assets/img/logo-big.png" alt="logo" />
      </a>
    </div>
    <div class="page-body">
      <img class="page-lock-img" src="${ctx}/static/assets/img/profile/profile.jpg" alt="">
      <div class="page-lock-info">
        <h1>方金林</h1>
        <span class="email">fangjinl@163.com</span>
        <span class="locked">已锁住</span>
        <form class="form-inline" action="index.html">
          <div class="input-group input-medium">
            <input type="text" class="form-control" placeholder="密码">
            <span class="input-group-btn">        
            <button type="submit" class="btn blue icn-only"><i class="m-icon-swapright m-icon-white"></i></button>
            </span>
          </div>
          <!-- /input-group -->
          <div class="relogin">
            <a href="login.html">我不是方金林 ?</a>
          </div>
        </form>
      </div>
    </div>
    <div class="page-footer">
      2013 &copy; Metronic. Admin Dashboard Template.
    </div>
  </div>
  <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
  <!-- BEGIN CORE PLUGINS -->   
  <!--[if lt IE 9]>
  <script src="${ctx}/static/assets/plugins/respond.min.js"></script>
  <script src="${ctx}/static/assets/plugins/excanvas.min.js"></script> 
  <![endif]-->   
  <script src="${ctx}/static/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
  <!-- END CORE PLUGINS -->
  <!-- BEGIN PAGE LEVEL PLUGINS -->
  <script src="${ctx}/static/assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
  <!-- END PAGE LEVEL PLUGINS -->   
  <script src="${ctx}/static/assets/scripts/lock.js"></script>      
  <script>
    jQuery(document).ready(function() {    
      
       Lock.init();
    });
  </script>
  <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
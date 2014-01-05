<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
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
   <title>Metronic | Login Options - Login Form 2</title>
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
   <!-- BEGIN PAGE LEVEL STYLES --> 
   <link rel="stylesheet" type="text/css" href="${ctx}/static/assets/plugins/select2/select2_metro.css" />
   <!-- END PAGE LEVEL SCRIPTS -->
   <!-- BEGIN THEME STYLES --> 
   <link href="${ctx}/static/assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/css/style.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/css/plugins.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
   <link href="${ctx}/static/assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}/static/assets/css/custom.css" rel="stylesheet" type="text/css"/>
   <!-- END THEME STYLES -->
   	<link rel="shortcut icon" href="${ctx}/static/images/favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
   <!-- BEGIN LOGO -->
   <div class="logo">
      <img src="${ctx}/static/assets/img/logo-big.png" alt="" /> 
   </div>
   <!-- END LOGO -->
   <!-- BEGIN LOGIN -->
   <div class="content" style="width: 410px">
      <!-- BEGIN LOGIN FORM -->
      <form class="login-form" action="${ctx}/sys/login" method="post">
         <h3 class="form-title">为了您的数据安全,请输入密码！</h3>
         <div class="alert alert-error hide">
            <button class="close" data-dismiss="alert"></button>
            <span>Enter any username and password.</span>
         </div>
         
         <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">密码</label>
            <div class="input-icon">
               <i class="icon-lock"></i>
               <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password"/>
            </div>
         </div>
         <div class="form-actions">
           
            <button type="submit" class="btn blue pull-left">
            	登入 <i class="m-icon-swapright m-icon-white"></i>
            </button>            
         </div>
         
      </form>
      <!-- END LOGIN FORM -->        
      <!-- BEGIN FORGOT PASSWORD FORM -->
   </div>
    
   <!--[if lt IE 9]>
   <script src="${ctx}/static/assets/plugins/respond.min.js"></script>
   <script src="${ctx}/static/assets/plugins/excanvas.min.js"></script> 
   <![endif]-->   
   <script src="${ctx}/static/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
   <script src="${ctx}/static/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
   <script src="${ctx}/static/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
   <!-- END CORE PLUGINS -->
   <!-- BEGIN PAGE LEVEL PLUGINS -->
   <script src="${ctx}/static/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
   <script type="text/javascript" src="${ctx}/static/assets/plugins/select2/select2.min.js"></script>
   <!-- END PAGE LEVEL PLUGINS -->
   <!-- BEGIN PAGE LEVEL SCRIPTS -->
   <script src="${ctx}/static/assets/scripts/app.js" type="text/javascript"></script>
   <script src="${ctx}/static/assets/scripts/login-soft.js" type="text/javascript"></script>      
   <!-- END PAGE LEVEL SCRIPTS --> 
   <script>
      jQuery(document).ready(function() {     
        App.init();
        Login.init();
      });
   </script>
   <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
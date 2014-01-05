<%@ page contentType="text/html;charset=UTF-8"%>
 <!-- BEGIN SIDEBAR1 -->
      <div class="page-sidebar navbar-collapse collapse">
         <!-- BEGIN SIDEBAR MENU1 -->         
         <ul class="page-sidebar-menu">
            <li>
               <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
               <div class="sidebar-toggler hidden-xs"></div>
               <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
            </li>
            <li>
               <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->                     
               <form class="sidebar-search" action="#" method="POST">
                  <div class="form-container">
                     <div class="input-box">
                        <a href="javascript:;" class="remove"></a>
                        <input type="text" placeholder="搜索..."/>
                        <input type="button" class="submit" value=" "/>
                     </div>
                  </div>
               </form>
               <!-- END RESPONSIVE QUICK SEARCH FORM -->
            </li>
            <li class="start">
               <a class="ajaxify start" href="${ctx}/manager/home">
               <i class="icon-home"></i> 
               <span class="title">工作台</span>
               <span class="selected"></span>
               </a>
            </li>
            <li >
               <a href="javascript:;">
               <i class="icon-cogs"></i> 
               <span class="title">钢瓶管理</span>
               <span class="selected"></span>
               <span class="arrow open"></span>
               </a>
               <ul class="sub-menu">
                  <li>
                     <a class="ajaxify" href="${ctx}/manager/fillrecords">
                     钢瓶检索                  
                     </a>
                  </li>
                  <li>
                     <a class="ajaxify" href="#">
                     查询统计                   
                     </a>
                  </li>
                  <li>
                     <a class="ajaxify" href="#">
                     钢瓶分析                    
                     </a>
                  </li>
                  <li>
                     <a class="ajaxify" href="#">
	查询报表                     </a>
                  </li>
               </ul>
            </li>
            <li >
               <a href="javascript:;">
               <i class="icon-cogs"></i> 
               <span class="title">充装管理</span>
               <span class="selected"></span>
               <span class="arrow"></span>
               </a>
               <ul class="sub-menu">
                  <li>
                     <a class="ajaxify" href="#">
                   充装记录           
                     </a>
                  </li>
                  <li>
                     <a class="ajaxify" href="#">
                     钢瓶回流              
                     </a>
                  </li>
                  <li>
                     <a class="ajaxify" href="#">
                    充装历史                   
                     </a>
                  </li>
                  <li>
                     <a class="ajaxify" href="#">
                   充装分析                    
                     </a>
                  </li>
               </ul>
            </li>
            <li class="last">
               <a href="javascript:;">
               <i class="icon-cogs"></i> 
               <span class="title">系统设置</span>
               <span class="selected"></span>
               <span class="arrow"></span>
               </a>
               <ul class="sub-menu">
                  <li>
                     <a class="ajaxify" href="${ctx}/manager/sys/company">
                    企业设置                    
                     </a>
                  </li>
                  <li>
                     <a class="ajaxify" href="${ctx}/manager/sys/org">
                    机构设置                   
                     </a>
                  </li>
                  <li>
                     <a class="ajaxify" href="${ctx}/manager/sys/role">
                     角色设置                    
                     </a>
                  </li>
                  <li>
                     <a class="ajaxify" href="${ctx}/manager/sys/module">
                    应用设置                   
                     </a>
                  </li>
               </ul>
            </li>
         </ul>
         <!-- END SIDEBAR MENU1 -->
      </div>
      <!-- END SIDEBAR1 -->
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%String path = request.getContextPath();%>

<script type="text/javascript">
<!--
    $(document).ready(function(){
    	var divs = $("div");
    	for(var i=0; i<divs.length; i++){
    		if(divs.eq(i).attr("href")){
    		  $(divs.eq(i)).load(path + divs.eq(i).attr("href"))
    		}
    	}
        $('#zdbm_portlet_tab_chart_tab_div_id').tab('show')
    });
    
    /* 网店注册量统计图形tab监听 */
    $('#zdbm_portlet_tab_chart_tab_div_id').on('shown.bs.tab', function (e) {
	    $('#zdbm_portlet_tab_chart_body_div_id').load(path + '/web/gastank/reg_zdbm_chart');
	})
	 
	/* 网店注册量统计表格tab监听 */
	$('#zdbm_portlet_tab_tab_tab_div_id').on('shown.bs.tab', function (e) {
	    $('#zdbm_portlet_tab_tab_body_div_id').load(path + '/web/gastank/reg_zdbm_tab');
	})
    
    
    
//-->
</script>
<!-- BEGIN PAGE HEADER-->

<div class="row">
	<div class="col-md-12">
		<!-- BEGIN PAGE TITLE & BREADCRUMB-->
		<h3 class="page-title">
			钢瓶注册情况分析
		</h3>
		<ul class="page-breadcrumb breadcrumb">
			<li class="btn-group">
				<button type="button" class="btn blue dropdown-toggle"
					data-toggle="dropdown" data-hover="dropdown" data-delay="1000"
					data-close-others="true">
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
			<li><i class="icon-home"></i> <a href="<%=path %>/index">首页</a> <i
				class="icon-angle-right"></i></li>
			<li><a href="#"></a></li>
		</ul>
		<!-- END PAGE TITLE & BREADCRUMB-->
	</div>
</div>
<!-- 标题结束 -->

<!-- 站点名称统计图表 -->
<div class="row">
    
   <div class="col-md-12" id="gas_reg_zdbm_div_id">
      
       <div class="portlet box blue tabbable">
       
          <div class="portlet-title">
             <div class="caption"><i class="icon-reorder"></i>各网点注册量统计</div>
          </div>
          
          <div class="portlet-body">  
          
             <div class="tabbable portlet-tabs">
             
                <ul class="nav nav-tabs">
                
                   <li>
                     <a href="#zdbm_portlet_tab_chart_body_div_id" data-toggle="tab" id="zdbm_portlet_tab_chart_tab_div_id">图形</a>
                   </li>
                  
                   <li class="active">
                     <a href="#zdbm_portlet_tab_tab_body_div_id" data-toggle="tab" id="zdbm_portlet_tab_tab_tab_div_id">表格</a>
                   </li>
                
                </ul>
                
                <div class="tab-content">
                
                   <div class="tab-pane fade active" id="zdbm_portlet_tab_tab_body_div_id">  
                   </div>
                  
                   <div class="tab-pane fade" id="zdbm_portlet_tab_chart_body_div_id">  
                   </div>
                   
                </div>
             
             </div>
             
          </div>
          
       </div> 
       
   </div>
   
</div>

<!-- 规格型号统计图表 -->
<div class="row">

   <div class="col-md-6" href="/web/gastank/reg_ggxh_tab"></div>
   
   <div class="col-md-6" href="/web/gastank/reg_ggxh_chart"></div>
  
</div>

<!-- 使用年龄统计图表 -->
<div class="row">
    
   <div class="col-md-12" >
     
     <!-- BEGIN INLINE NOTIFICATIONS PORTLET-->
		<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-cogs"></i>使用年龄统计分析
				</div>
				<div class="tools">
					<a href="javascript:;" class="collapse"></a> 
					<a href="javascript:;" class="reload"></a>
				</div>
			</div>
			<div class="portlet-body">
				<div class="row">
					<div class="col-md-6">
						<div class="pricing-table" href="/web/gastank/reg_synl_tab">
						</div>
					</div>
					<div class="col-md-6">
						<div class="pricing-table selected" href="/web/gastank/reg_synl_chart">

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END INLINE NOTIFICATIONS PORTLET-->
   </div>
  
</div>


<!-- 生产厂家统计图表 -->
<div class="row">
	<div class="col-md-12">
		<!-- BEGIN INLINE NOTIFICATIONS PORTLET-->
		<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-cogs"></i>生产厂家统计分析
				</div>
				<div class="tools">
					<a href="javascript:;" class="collapse"></a> 
					<a href="javascript:;" class="reload"></a>
				</div>
			</div>
			<div class="portlet-body">
				<div class="row">
					<div class="col-md-6">
						<div class="pricing-table" href="/web/gastank/reg_sccj_tab">
						</div>
					</div>
					<div class="col-md-6">
						<div class="pricing-table selected" href="/web/gastank/reg_sccj_chart">

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END INLINE NOTIFICATIONS PORTLET-->
	</div>
</div>
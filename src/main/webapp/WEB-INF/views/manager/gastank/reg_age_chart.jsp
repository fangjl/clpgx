<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%String path = request.getContextPath();%>

<script type="text/javascript">
<!--
    $(document).ready(function(){
    	createChart('reg_synl_chart_body_div_id');
    });
    
    function createChart(id){
    	 var data = [];
         var series = Math.floor(Math.random() * 10) + 1;
         series = series < 5 ? 5 : series;
         
         for (var i = 0; i < series; i++) {
             data[i] = {
                 label: "钢瓶" + (i + 1),
                 data: Math.floor(Math.random() * 100) + 1
             }
         }
         
    	 $.plot($("#"+id), data, {
             series: {
                 pie: {
                     show: true,
                     radius: 1,
                     label: {
                         show: true,
                         radius: 3 / 4,
                         formatter: function (label, series) {
                             return '<div style="font-size:8pt;text-align:center;padding:2px;color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                         },
                         background: {
                             opacity: 0.5
                         }
                     }
                 }
             },
             legend: {
                 show: false
             }, grid: {
                  hoverable: true
              }
         });
      
      
      $("#"+id).bind("plothover", pieHover);

      function pieHover(event, pos, obj) {
      	if (!obj)return;
          percent = parseFloat(obj.series.percent).toFixed(2);
          $("#hover").html('<span style="font-weight: bold; color: ' + obj.series.color + '">' + obj.series.label + ' (' + percent + '%)</span>');
      }
      
    } 
    /* createChart end */
    
//-->
</script>
<!-- BEGIN PAGE HEADER-->

<div id="reg_synl_chart_body_div_id" class="chart"></div> 

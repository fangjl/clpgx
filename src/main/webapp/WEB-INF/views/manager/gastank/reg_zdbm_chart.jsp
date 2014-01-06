<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%String path = request.getContextPath();%>

<script type="text/javascript">
<!--
	$(document).ready(function(){
		
		var sin = [],
		    cos = [];
		for (var i = 0; i < 14; i += 0.1) {
		     sin.push([i, Math.sin(i)]);
		     cos.push([i, Math.cos(i)]);
		}
	
	 var plot = $.plot($("#reg_zdbm_char_div_body_id"), [{
	             data: sin,
	             label: "sin(x) = -0.00"
	         }, {
	             data: cos,
	             label: "cos(x) = -0.00"
	         }
	     ], {
	         series: {
	             lines: {
	                 show: true
	             }
	         },
	         crosshair: {
	             mode: "x"
	         },
	         grid: {
	             hoverable: true,
	             autoHighlight: false
	         },
	         yaxis: {
	             min: -1.2,
	             max: 1.2
	         }
	     });
	
	 var legends = $("#reg_zdbm_char_div_body_id .legendLabel");
	 legends.each(function () {
	     $(this).css('width', $(this).width());
	 });
	
	 var updateLegendTimeout = null;
	 var latestPosition = null;
	
	 function updateLegend() {
	     updateLegendTimeout = null;
	
	     var pos = latestPosition;
	
	     var axes = plot.getAxes();
	     if (pos.x < axes.xaxis.min || pos.x > axes.xaxis.max || pos.y < axes.yaxis.min || pos.y > axes.yaxis.max) return;
	
	     var i, j, dataset = plot.getData();
	     for (i = 0; i < dataset.length; ++i) {
	         var series = dataset[i];
	
	         for (j = 0; j < series.data.length; ++j)
	             if (series.data[j][0] > pos.x) break;
	
	         var y, p1 = series.data[j - 1],
	             p2 = series.data[j];
	         if (p1 == null) y = p2[1];
	         else if (p2 == null) y = p1[1];
	         else y = p1[1] + (p2[1] - p1[1]) * (pos.x - p1[0]) / (p2[0] - p1[0]);
	
	         legends.eq(i).text(series.label.replace(/=.*/, "= " + y.toFixed(2)));
	     }
	 }
	
		 $("#reg_zdbm_char_div_body_id").bind("plothover", function (event, pos, item) {
		     latestPosition = pos;
		     if (!updateLegendTimeout) updateLegendTimeout = setTimeout(updateLegend, 50);
		 });
	});   
//-->
</script>
<!-- BEGIN PAGE HEADER-->

  <div id="reg_zdbm_char_div_body_id" class="chart"></div> 
       
       <!-- <div id="chart_3" style="width:100%;height:230px;"></div> -->
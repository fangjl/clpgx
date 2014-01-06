/*定义一些常用js函数*/


/**
 * @author HwaSun.byf
 * @version 1.0
 * 获取根路径(contextPath)
 * return string
 */
function getContextPath(){
	var url = window.location.pathname.substr(1);
	var path = '/'+url.substr(0,url.indexOf('/'));
	return path;
}
var path = getContextPath(); //系统根路径

//根据元素id获取对象，
function getObjectForIdOrName(id) {
	var obj = document.getElementById(id);
	if (!obj) {
		obj = document.getElementsByName(id);
		if (obj && obj.length > 0)
			obj = obj[0];
	}
	return obj;
}

//获取页面宽度
function getWidth(){
  return $(document.body).width();
}

//获取页面高度
function getHeight(){
 return $(document.body).height();
}

//判断某个DOM元素是否隐藏,根据元素的id来判断 
function isDivHidden(id){
  return $(id).is(":hidden");
}

//判断某个DOM元素是否可见,根据元素的id来判断 
function isDivVisible(id){
  return $(id).is(":visible");
}

//判断DOM元素中是否空
function isDivEmpty(id){
	return document.getElementById(id).innerHTML=='';
}


//清空div中的内容
function clearDiv(id){
  document.getElementById(id).innerHTML = "";
}


/**
 * 利用jquer动态创建div
 * @param {} parentDiv 父div存在的
 * @param {} child 被创建div
 */
function createDiv(parentDiv,child){
	
	if($("#"+child).length > 0){
		
	    clearDiv(child);
	    
	}else{
		
        $("#"+parentDiv).append('<div id="'+child+'"></div>');
        
	} 
	
 // $("#"+child).remove();
//  var childdiv = $('<div></div');
//  $('#'+parentDiv).append(childdiv);
}


/**
 * 提取Form表单中的参数值，封装成数组。
 * @param {} fmID
 * @return {}
 */
function filterFormParam(fmId){
	
	var params = {};
	
	//取form表单的Type为text的值
	var textArr = $('#'+fmId+' :text'); 
	builderParams(textArr,params);
	
	//取form表单的Type为select的值
    var selArr = $('select',"#"+fmId);
    builderParams(selArr,params);
	
    //取form表单的Type为hidden的值
	var hiddens = $('#'+fmId+' :hidden'); 
	builderParams(hiddens,params);
	
	return params;
	
}

/**
 * 构造参数函数,又其它函数调用。
 * 
 * 如有多个数组时，没有必要写多个for循环，可调用此函数
 * 
 * @param {} arr
 * @param {} params
 */
function builderParams(arr,params){
	
   for(var i = 0; i< arr.length; i++){
   	
		if(arr[i].name && arr[i].value){
	      
	      params[arr[i].name] = arr[i].value;
	      
		}
		
	}
	
}

/**
 * 将From序列化后的参数，构造成参数数组
 * @param {} fmId
 * $("#tableForm :input").serialize();
 * $("#form1").serialize();
 * 两种都可以，但后一种会多取__ViewState这个系统hidden  
 */
function formSerializeParams(fmId){
	
	var params = {};
	
    var fmv = $("#"+fmId).serialize();
    
    var oneArr = fmv.split('&');
    
    for(i = 0; i < oneArr.length; i++){
    	
    	var twoArr = oneArr[i].split('=');
    	
    	if(twoArr[1]){
    		
    		params[twoArr[0]] = twoArr[1];
    		
    	}
    	
    }
    
    return params;
    
}


/**
 * 获取form表单中的元素值，并拼装成之定义格式url参数
 * @param {} fmId
 * @return {}
 */
function filterFormUrlParams(fmId){
    var par = ''; 	
    
    var fmv = $("#"+fmId).serialize();
   
    var oneArr = fmv.split('&');
    
    for(i = 0;i < oneArr.length; i++){
    	
    	var twoArr = oneArr[i].split('=');
    	
    	if(twoArr[1]){
    		
    		if(i >= oneArr.length-1){
    			
    		   par += twoArr[0]+'='+twoArr[1];
    		   
    		}else{
    			
               par += twoArr[0]+'='+twoArr[1]+'&';
               
    		}
    		
    	}
    	
    }
    
    return par;
}


//利用jQuery，ajax异步请求数据
//$.post(url, params, function(res) {});页面也可直接使用jQuery的post请求
function ajaxOperate(url,params,callBack){
  var result;
  jQuery.ajax({
      type: "post",
      url: url,
      data: params,
      async : false, 
      timeout : 300000,
      success: function (json) {
	      try {
	      	  callBack(json); 
			 //callBack(str2json(json));
		  } catch (err) {
			 alert('页面数据解析失败！');
		  }
      },
      failure: function(action){
	   alert('服务端操作错误！');
	  }
  });
  return result;
}


//function asyncPageContentBody(url){
//  var pageContentBody = $('.page-content .page-content-body');
//	$.ajax({
//	    type: "GET",
//	    cache: false,
//	    url: url,
//	    dataType: "html",
//	    success: function (res) {
//	        App.unblockUI(pageContent);
//	        pageContentBody.html(res);
//	        App.fixContentHeight(); // fix content height
//	        App.initAjax(); // initialize core stuff
//	    },
//	    error: function (xhr, ajaxOptions, thrownError) {
//	        pageContentBody.html('<h4>Could not load the requested content.</h4>');
//	        App.unblockUI(pageContent);
//	    },
//	    async: false
//	});
//}
function asyncPageContentBody(url,data){
	
	var pageContent = $('.page-content');
    var pageContentBody = $('.page-content .page-content-body');
    
	$.ajax({
		type : "post",
		url : url,
		data :data,
		beforeSend : function() {
		},
		success : function(res) { 
			App.unblockUI(pageContent);
	        pageContentBody.html(res);
	        App.fixContentHeight(); 
	        App.initAjax(); 
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			pageContentBody.html('<h4>无法加载请求的内容.</h4>');
	        App.unblockUI(pageContent);
		},
		async: false
	});

}


/**
 * 创建flash图形表
 * @param {} swfUrl 使用哪种图形播放器的路径
 * @param {} xmlData 图形数据
 * @param {} chartdivID 将生成的图形渲染到某个div的id上
 * @param {} w 图形的宽度
 * @param {} h 图形的高度
 */
function createFChart(swfUrl,xmlData,chartdivID,w,h){
	var chart = new FusionCharts(swfUrl,"ChartId", w, h, "0", "0");
    chart.setDataXML(xmlData);     
    chart.render(chartdivID);
}

/**
 * 利用jQuery动态创建Table
 * @param {} url
 * @param {} params
 * @param {} markId
 */
function createTable(url,params,markId){
	
	ajaxOperate(url,params,function(json){
		
		if (json.success){
//			var array = json.msg;
			var array = jsonStr2Array(json.msg);
		  
			var tabid = 'tab_'+markId;
			
			//style=\"width: 100%; margin: auto;\"
			var table = $("<table id=\""+tabid+"\" class=\"table table-hover\" width=\"100%\"\" >");
			
			table.appendTo($('#'+markId));
			
			for (var i = 0; i < array.length; i++) {
				
				 var tem = array[i];
				 
				 var tr = $("<tr class=\"warning\"\"></tr>");
				 
				 tr.appendTo(table);
				 
				 for(var j = 0; j < tem.length; j++){
				 	
				 	 var td = $("<td>"+tem[j]+"</td>");
				 	 
				 	 td.appendTo(tr);
				 }
				 
			}
			
			$(markId).append("</table>");
			
		} else {
			alert('后台数据出现错误！');
		}
	});
	
}


/**
 * 利用jQuery动态创建分页Table
 * @param {} tbc     标题信息
 * @param {} result  数据结果集
 * @param {} markId  渲染对象
 */
function createPageTable(tbc,result,markId){
	
	
	clearDiv(markId);  //清空上一次的数据信息
	
	var tabid = 'tab_'+markId;
	
//    var table = $("<table class=\"table table-striped\" style=\"width: 99%; margin: auto;\">");
    var table = $("<table id=\""+tabid+"\" class=\"table table-condensed table-hover\" style=\"width: 99%; margin: auto;\">");
   
    table.appendTo($('#'+markId));
    
    //-------------------------创建标题
    
    var thead = $("<thead></thead>");  
    
        thead.appendTo(table);
	        
  
	var hd_tr = $("<tr algin=\"center\" class=\"warning\"></tr>");
	
	    hd_tr.appendTo(thead);

	for(var h = 0; h < tbc.length; h++ ){
		
		var th = $("<th> <font size=\"3\">" + tbc[h].label + "</font> </th>");
		
		//默认增加列
		if(h == 0){
		   th = $("<th> <font size=\"3\">序号</font> </th>");
		}
		
		
		th.appendTo(hd_tr);
		
	}
	
	//-------------------------内容
	
	var tbody = $("<tbody></tbody>");
	
	    tbody.appendTo(table);
	
	for(var i = 0; i < result.length; i++){
		
		var tr = $("<tr class=\"success\"></tr>");
		
		if(i % 2 == 0){
			
			tr = $("<tr class=\"info\"></tr>");
			
		}
		
		tr.appendTo(tbody);
		
		for(var j = 0; j < tbc.length; j++){
			
			var n = tbc[j].name;
		
			var td = $("<td>" + result[i][n] + "</td>");
			
			//默认列序号
			if(j == 0){
				td = $("<td>" + (parseInt(i)+1) + "</td>");
			}
			
			td.appendTo(tr);
			
		}
		
	}
	
	$(markId).append("</table>");
	
}


/**
 * 前台数据分页，在数据量较少的情况下，一次性将数据查到前台。
 * @param {} currentPage  当前页数
 * @param {} countPerpage 每页行数
 * @param {} tid table表格
 * @param {} pid  渲染到某个div上
 */
function localGoPage(currentPage,countPerpage,tid,pid){
	
	var itable = document.getElementById(tid);
	
	var num = itable.rows.length;//表格行数
	//var num = $("#"+tabId).find("tr").length;
	
	var totalPage = 0;//总页数
	
	var pageSize = countPerpage;//每页显示行数
	
	if((num-1)/pageSize > parseInt((num-1)/pageSize)){  
		
   		 totalPage=parseInt((num-1)/pageSize)+1;   
   		 
   	}else{   
   		
   		totalPage=parseInt((num-1)/pageSize);   
   		
   	}   
	var currentPage = currentPage;//当前页数
	
	var startRow = (currentPage - 1) * pageSize+1;//开始显示的行   
	
   	var endRow = currentPage * pageSize+1;//结束显示的行   
   	
   	endRow = (endRow > num)? num : endRow;
   	
//	for(i=0;i<1;i++){
//		
//		var irow = itable.rows[0];
		
//		irow.style.display = "block";
//	}
	
	for(var i=1;i<num;i++){
		
		var irow = itable.rows[i];
		
		if(i>=startRow&&i<endRow){
			
			irow.style.display = "block";
			
			irow.setAttribute("style", "width: 100%; margin: auto;");
			
		}else{
			
			irow.style.display = "none";
			
		}
	}
	
	var tempStr = "<div class=\"alert alert-info\" style=\"text-align:right;\">";
    
    tempStr += "<strong>";
    
    tempStr += "共"+(num-1)+"条记录&nbsp; 分"+totalPage+"页&nbsp; 当前第"+currentPage+"页";
    
    tempStr += "</strong>&nbsp;&nbsp;";
  
    if(currentPage>1){                                                                          
  
        tempStr += "<button type=\"button\" class=\"btn btn-primary btn-xs\" onClick=\"localGoPage("+(currentPage-1)+","+pageSize+",'"+tid+"','"+pid+"')\">上一页</button>&nbsp;&nbsp;";
        
    }else{
 
        tempStr += "<button type=\"button\" class=\"btn-default btn-xs\" disabled=\"disabled\">上一页</button>&nbsp;&nbsp;";  
 
    }
 
    if(currentPage<totalPage){
 
        tempStr += "<button type=\"button\" class=\"btn btn-primary btn-xs\" onClick=\"localGoPage("+(currentPage+1)+","+pageSize+",'"+tid+"','"+pid+"')\">下一页</button>&nbsp;&nbsp;";
 
    }else{
 
        tempStr += "<button type=\"button\" class=\"btn-default btn-xs\" disabled=\"disabled\">下一页</button>&nbsp;&nbsp;";  
 
    }
 
    if(currentPage>1){
 
    	tempStr += "<button type=\"button\" class=\"btn btn-primary btn-xs\" onClick=\"localGoPage("+(1)+","+pageSize+",'"+tid+"','"+pid+"')\">首页</button>&nbsp;&nbsp;";
 
    }else{
 
        tempStr += "<button type=\"button\" class=\"btn-default btn-xs\" disabled=\"disabled\">首页</button>&nbsp;&nbsp;";  
 
    }
 
    if(currentPage<totalPage){
 
    	tempStr += "<button type=\"button\" class=\"btn btn-primary btn-xs\" onClick=\"localGoPage("+(totalPage)+","+pageSize+",'"+tid+"','"+pid+"')\">尾页</button>&nbsp;&nbsp;";
 
    }else{
 
        tempStr += "<button type=\"button\" class=\"btn-default btn-xs\" disabled=\"disabled\">尾页</button>&nbsp;&nbsp;";  
 
    }
    tempStr += "</div>";
	
    document.getElementById(pid).innerHTML = tempStr;
}


/**
 * 创建分页栏
 * @param {} page 分页信息
 * @param {} pageTopBar  上边框分页信息栏
 * @param {} pageBottBar 下边框分页信息栏
 */
function pageHtml(page,pageTopBar,pageBottBar){
	
//	currentPage（当前页）、countPerPage（每页的条数）、pageCount（页数）、count（总数）
	
	//清空上一次的分页信息
	if(pageTopBar) clearDiv(pageTopBar);  
	
	//清空上一次的分页信息
	if(pageBottBar) clearDiv(pageBottBar);  
	
	//如果没有数据,将不创建分页栏
	if(page.count <= 0) return;
	
	var totalPage = 0;//总页数
	
	var num = page.count;//共计多少条数据
	
	var pno = page.currentPage;  //当前页
	
	var pageSize = page.countPerPage;//每页显示行数
	
	if((num-1)/pageSize > parseInt((num-1)/pageSize)){  
		
         totalPage = parseInt((num-1)/pageSize)+1;  
         
    }else{  
    	
        totalPage = parseInt((num-1)/pageSize);  
        
    }  
    
    var currentPage = pno;//当前页数
 
    var startRow = (currentPage - 1) * pageSize+1;//开始显示的行  
 
    var endRow = currentPage * pageSize+1;//结束显示的行  
 
    endRow = (endRow > num)? num : endRow;
    
    
    var tempStr = "<div class=\"alert alert-info\">";
    
    tempStr += "<strong>";
    
    tempStr += "共"+(num-1)+"条记录&nbsp; 分"+totalPage+"页&nbsp; 当前第<strong id=\"mycurrentPageId\">"+currentPage+"</strong>页";
    
    tempStr += "</strong>&nbsp;&nbsp;";
 
    if(currentPage>1){
  
        tempStr += "<button type=\"button\" class=\"btn btn-primary btn-xs\" onClick=\"goPage("+(currentPage-1)+","+pageSize+")\">上一页</button>&nbsp;&nbsp;";
        
    }else{
 
        tempStr += "<button type=\"button\" class=\"btn-default btn-xs\" disabled=\"disabled\">上一页</button>&nbsp;&nbsp;";  
 
    }
 
    if(currentPage<totalPage){
 
        tempStr += "<button type=\"button\" class=\"btn btn-primary btn-xs\" onClick=\"goPage("+(currentPage+1)+","+pageSize+")\">下一页</button>&nbsp;&nbsp;";
 
    }else{
 
        tempStr += "<button type=\"button\" class=\"btn-default btn-xs\" disabled=\"disabled\">下一页</button>&nbsp;&nbsp;";  
 
    }
 
    if(currentPage>1){
 
    	tempStr += "<button type=\"button\" class=\"btn btn-primary btn-xs\" onClick=\"goPage("+(1)+","+pageSize+")\">首页</button>&nbsp;&nbsp;";
 
    }else{
 
        tempStr += "<button type=\"button\" class=\"btn-default btn-xs\" disabled=\"disabled\">首页</button>&nbsp;&nbsp;";  
 
    }
 
    if(currentPage<totalPage){
 
    	tempStr += "<button type=\"button\" class=\"btn btn-primary btn-xs\" onClick=\"goPage("+(totalPage)+","+pageSize+")\">尾页</button>&nbsp;&nbsp;";
 
    }else{
 
        tempStr += "<button type=\"button\" class=\"btn-default btn-xs\" disabled=\"disabled\">尾页</button>&nbsp;&nbsp;";  
 
    }
    tempStr += "</div>";
    
    
    if(pageTopBar){
    	
       document.getElementById(pageTopBar).innerHTML = tempStr;
       
    }
       
    if(pageBottBar){
    	
       document.getElementById(pageBottBar).innerHTML = tempStr;
       
    }
	
}

//将特定格式的json字符串转换成数组
function jsonStr2Array(jsonData) {
    var jsonsString = jsonData.slice(1, jsonData.length - 1);
    var jsonStrings = jsonsString.split("],");
    var length = jsonStrings.length;
    var source = new Array(); 
    for (var i = 0; i < length; i++) {
    	 var arr = jsonStrings[i].replace('[','').replace(']','');
    	 var aa = arr.toString().split(",");
    	 source[i]=aa;
    }
    return source;
}


//去除左边空格
function LTrim(str) {
	var i;
	for (i = 0; i < str.length; i++) {
		if (str.charAt(i) != " " && str.charAt(i) != " ")
			break;
	}
	str = str.substring(i, str.length);
	return str;
}
//去除右边空格
function RTrim(str) {
	var i;
	for (i = str.length - 1; i >= 0; i--) {
		if (str.charAt(i) != " " && str.charAt(i) != " ")
			break;
	}
	str = str.substring(0, i + 1);
	return str;
}

//去除两端空格
function Trim(str) {
	return LTrim(RTrim(str));
}


/**
 * json转化成string
 * @param {} jsonObject 需要转化的json对象
 * @param {} prefix 属性名类前缀(用于后台持久化)
 * @return {}
 */
function json2str(jsonObject,prefix,suffix){
    var arr=[];   
    var fmt=function(s){
        if(typeof s=='object' && s!=null) return json2str(s);   
        return /^(string|number)$/.test(typeof s)?"'"+s+"'":s;   
    }   
    for(var i in jsonObject){
    	var key = "'";
    	if(prefix)
    		key += prefix+"."+i;
    	else if(suffix)
    		key += i+'_'+suffix;
    	key += "'";
    	arr.push(key+':'+fmt(jsonObject[i]));
    }
    return '{'+arr.join(',')+'}';
}


/**
 * 将字符串转换成json对象
 * @param {} str
 * @return {}
 */
function str2json(str){
	return eval('('+str+')');
}

function id2Property(jsonObject,prefix,suffix){
	return str2json(json2str(jsonObject,prefix,suffix));
}


//日期格式化
function formatDate(_v) {
	return _v.replace(/T/g, ' ');
}

function fetchDate(days,fmt) {
	var d = new Date();
	d.setDate(d.getDate() + days);
	return d.format(fmt||'Y-m-d');
}

function fetchStartDate(days,fmt) {
	var d = new Date();
	d.setDate(d.getDate() + days);
	if(fmt){
		d.setHours(0);
		d.setMinutes(0);
		d.setSeconds(0);
		return d.format(fmt);
	}
	return d.format('Y-m-d');
}

function fetchEndDate(days,fmt) {
	var d = new Date();
	d.setDate(d.getDate() + days);
	if(fmt){
		d.setHours(23);
		d.setMinutes(59);
		d.setSeconds(59);
		return d.format(fmt);
	}
	return d.format('Y-m-d');
}

function fetchDate18(days,fmt) {
	var d = new Date();
	d.setDate(d.getDate() + days);
	d.setHours(18);
	d.setMinutes(0);
	d.setSeconds(0);
	return d.format(fmt||'Y-m-d H:i:s');
}

function fetchBeginDayOfMonth(hour,fmt) {
	var d = new Date();
	d.setDate(hour==18?0:1);
	d.setHours(hour||0);
	d.setMinutes(0);
	d.setSeconds(0);
	return d.format(fmt||'Y-m-d H:i:s');
}

function fetchEndDayOfMonth(hour,fmt) {
	var d = new Date();
	d = d.getLastDateOfMonth();
	d.setHours(hour||23);
	d.setMinutes(hour==18?0:59);
	d.setSeconds(hour==18?0:59);
	return d.format(fmt||'Y-m-d H:i:s');
}

function fetchBeginDayOfYear(hour,fmt) {
	var d = new Date();
	d.setMonth(hour==18?-0:0);
	d.setDate(hour==18?0:1);
	d.setHours(hour||0);
	d.setMinutes(0);
	d.setSeconds(0);
	return d.format(fmt||'Y-m-d H:i:s');
}

function fetchEndDayOfYear(hour,fmt) {
	var d = new Date();
	d.setMonth(11);
	d.setDate(31);
	d.setHours(hour==18?hour:23);
	d.setMinutes(hour==18?0:59);
	d.setSeconds(hour==18?0:59);
	return d.format(fmt||'Y-m-d H:i:s');
}


function toFixed(str,how){
	if(how){
	}else if(how == 0){
	}else{
		how = 2;
	}
	str += '';
	if(!str||str=='undefined')
		str = '0';
	var r  = /^([0-9]+\.[0-9]{1}[0|2|4|6|8])5$/g;
	var r1 = /^([0-9]+\.[0-9]{1}[1|3|5|7|9])5$/g;
	var r2 = /^([0-9]+\.[0-9]{2})5[0]?[1-9]*/g;
	if(r.test(str)){
	str = str.replace(r,"$1");
	}else if(r1.test(str)){
	str = str.replace(r1,"$16");
	}else if(r2.test(str)){
	str = str.replace(r2,"$16");
	}
	str = parseFloat(str).toFixed(how);
	return str;
}

/**
 * 根据参数日期获取,周一到周日的日期。
 * 暂时只支持周一和周日的日期
 * @param {} dtStr 字符串日期'2012-12-21'
 */
function getWeekDate(dtStr){
   var theDay = null; 
   if(null != dtStr){
      var dtArr = dtStr.split("-");
   	  theDay = new Date(dtArr[0], dtArr[1]-1, dtArr[2]);
   } else {
   	  theDay = new Date();
   }
   var monday = new Date(theDay.getTime());
   var sunday = new Date(theDay.getTime());
       monday.setDate(monday.getDate()+1-monday.getDay());
	   sunday.setDate(sunday.getDate()+7-sunday.getDay());
   return {monday:monday, sunday:sunday};
}
//function json2Array(jsonData) {
//    var jsonsString = jsonData.slice(1, jsonData.length - 1);
//    var jsonStrings = jsonsString.split("},");
//    var length = jsonStrings.length;
//    var jsons = [];
//    for (var i = 0; i != length-1; ++i) {
//        jsonStrings[i] += '}';
//    }
//    var source = [[]];
//    for (var i = 0; i != length; ++i) {
//        jsons[i] = eval('(' + jsonStrings[i] + ')');
//        var data = [];
//        for(var key in jsons[i]) {
//            if(i == 0) {
//                source[0].push(key);                    
//            }
//            data.push(jsons[i][key]);
//        }
//        source.push(data);
//    }
//    return source;
//}

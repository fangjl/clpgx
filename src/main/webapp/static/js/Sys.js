/**
 * 系统模块专用
 */


var Sys=function(){
	
	var loadTabPanel=function(url,pageContentBody){
		 $.ajax({
                type: "GET",
                cache: false,
                url: url,
                dataType: "html",
                success: function (res) {
             
                    pageContentBody.html(res);
      
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    pageContentBody.html('<h4>请求失败</h4>');
                   
                },
                async: false
            });
	}
	
	
	/**
	 * 
	 */
	var initTab=function(){
		
		jQuery("li > a","#sys_top_nav").each(function(){
		
			$(this).click(function(e){
				
				var thiz = $(this);
				var tabpane = $(thiz.attr("href"));
				if(tabpane.attr("href")){
					loadTabPanel(tabpane.attr("href"),tabpane);
				}
				
				e.preventDefault();
			});
			
		})
		
	
	}
	
	
	
	
	return {
			init:function(){
				initTab();
			
			}
		}
}()
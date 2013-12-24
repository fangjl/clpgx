






Dcore={
	version:"1.0",
	initUI:function(_box){
		$p = $(_box||document);
		
		
		
		
		
		/**
		 * 
		 */
		$("a[target=ajax]",$p).each(function(index){
			
			$(this).click(function(event){
			var $this = $(this);
			var ref = $this.attr("ref");
			if (ref) {
				var $rel = $("#"+ref);
				
				$rel.loadUrl($this.attr("href"), {}, function(){
					
					//alert(1);
					//$rel.find("[layoutH]").layoutH();
				});
			}
			event.preventDefault();
			});
			
		});
		
		$("button[target=ajax]",$p).each(function(index){
			
			$(this).click(function(event){
				var $this = $(this);
				var ref = $this.attr("ref");
				if (ref) {
					var $rel = $("#"+ref);
					$rel.loadUrl($this.attr("href"), {}, function(){
						//alert(1);
						//$rel.find("[layoutH]").layoutH();
					});
				}
				event.preventDefault();
			});
			
			
			var $this  = $(this);
			
			var active = $this.attr("active");
			var ref    = $this.attr("ref");
			if(active && ref){
				
				var $ref= $("#"+ref);
				$ref.loadUrl($this.attr("href"), {}, function(){});
			}
			
		});
		
		/**
		 * 
		 
		$("a[target=tabs]",$p).each(function(index){
			var $this = $(this);
			var ref = $this.attr("ref");
			if (ref) {
				var $rel = $("#"+ref);
			//	Dcore.tabPanel.openTab($this,$("#"+$rel));
				
			}
			event.preventDefault();
		});
		*/
		
		//end
	}
	
};





/**
 * extend jQuery
 */
(function($){
	
	$.fn.extend({
		ajaxUrl: function(op){
			var $this = $(this);
			$.ajax({
				type: op.type || 'GET',
				url: op.url,
				data: op.data,
				cache: true,
				success: function(response){
					$this.html(response).initUI();
					if ($.isFunction(op.callback)) op.callback(response);
					
				},
				error: function(){
				
				},
				statusCode: {
					503: function(xhr, ajaxOptions, thrownError) {
						alert("error_503" || thrownError);
					}
				}
			});
		},
		
		
		loadUrl: function(url,data,callback){
			$(this).ajaxUrl({url:url, data:data, callback:callback});
		},
		initUI: function(){
			
			return this.each(function(){
					Dcore.initUI(this);
			});
		},
		
		/**
		 * adjust component inner reference box height
		 * @param {Object} refBox: reference box jQuery Obj
		 */
		layoutH: function($refBox){
			return this.each(function(){
				var $this = $(this);
				if (! $refBox) $refBox = $this.parents("div.layoutBox:first");
				var iRefH = $refBox.height();
				var iLayoutH = parseInt($this.attr("layoutH"));
				var iH = iRefH - iLayoutH > 50 ? iRefH - iLayoutH : 50;
				
				if ($this.isTag("table")) {
					$this.removeAttr("layoutH").wrap('<div layoutH="'+iLayoutH+'" style="overflow:auto;height:'+iH+'px"></div>');
				} else {
					$this.height(iH).css("overflow","auto");
				}
			});
		}
		
		
		
		
		
		
		
		
		
	});
		
		
})(jQuery);
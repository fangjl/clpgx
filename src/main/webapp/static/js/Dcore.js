






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
	},
	
	
	/**
	 * 普通ajax表单提交
	 * @param {Object} form
	 * @param {Object} callback
	 * @param {String} confirmMsg 提示确认信息
 	 */
	validateCallback:function(form, callback, confirmMsg) {
		var $form = $(form);
		if (!$form.valid()) {
			return false;
		}
		
		
		
		var params =  $form.serializeArray();
		params.push({
			name:"ref",
			value:$form.attr("ref")
		},{
			name:"forward",
			value:$form.attr("forward")
		});
					
		
		
		var _submitFn = function(){
			$.ajax({
				type: form.method || 'POST',
				url:$form.attr("action"),
				data:params,
				dataType:"json",
				cache: false,
				success: callback || Dcore.ajaxRefDone,
				error: Dcore.ajaxError
			});
		}
		
		if (confirmMsg) {
			alert(confirmMsg);
			//alertMsg.confirm(confirmMsg, {okCall: _submitFn});
		} else {
			_submitFn();
		}
		return false;
	},
	/**
	 * 提交后灰掉
	 */
	ajaxError:function(){
		alert("Ajax错误");
	},
	ajaxDone:function(){
		alert("form 回掉");
	},
	ajaxRefDone:function(json){
		
		alert(json.message);
		var forward = json.forward;
		var ref = json.ref;
		var $rel = $("#"+ref);
		$rel.loadUrl(forward, {}, function(){});
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
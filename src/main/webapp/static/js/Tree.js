var SysTree=function(){

	
            var DataSourceTree = function (options) {
                this._data  =   options.data;
                this.url    =   options.url;
            };
 					

            DataSourceTree.prototype = {
 
                data: function (options, callback) {
                    var self = this;

                   alert(options.id);
                    if(options.id){
                    	alert(options.id);
                  
                    
                   $.ajax({
						type:'GET',
						url: options.url,
						data:{}||options.data,
						dataType: "json",
						cache: true,
						success: function(  data,  textStatus,  jqXHR ){
								callback({ data: data });
						},
						error: function(){
						},
						statusCode: {
							503: function(xhr, ajaxOptions, thrownError) {
								alert("error_503" || thrownError);
							}
						}
					});
                }
            }
	   };
	return {
		init:function(treeobj,url){
			
			
			
			 treeobj.tree({
		                dataSource: new DataSourceTree({
		                data: [
		                    { name: '跟节点', type: 'folder',  id: 'root'  },
		                    { name: 'Reports', type: 'item',  id: 's'}

		                ],
		                url: url
		            }),
                loadingHTML: '<img src="assets/img/input-spinner.gif"/>'
            });

		}
	}
	
	
	
}()
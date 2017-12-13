    function firm() {  
        if (confirm("你确定删除吗？")) {  
            return true;  
        }  
        return false;  
       
  
    } 
    
 /*   
    $(document).ready(function() {
		alert("jquery页面加载");
	});
*/
    
    
    
  
	$(document).ready(function(){
		$(".but").click(function(){
			var id = $(this).attr("goodsid");
			layer.confirm("是否删掉此条数据？",{
				btn:['确定','取消']
			},function(){
				//layer.msg(id);
				window.location.href="delgoods/"+id;
			});
		});
	});

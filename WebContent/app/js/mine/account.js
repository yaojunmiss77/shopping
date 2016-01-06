define(function(){

	function account()
	{
		$("button[name='accountDetail']").click(function(){

			var that = $(this);

			$.post("DetailAction.action",
				  {
				    accountNumber:$(this).parent().prev().prev().prev().text()  /*该函数用于把goods的json对象转化成json形式的字符串数组*/
				  },function(data,status){


				  	var datas = JSON.parse(data);
				  	$("tbody[name='accountTable']").children().remove();
				  	$("tbody[name='accountTable']").append("<tr><th>商品编号</th><th>商品名称</th><th>销售数量</th><th>销售时间</th></tr>");
				  	$.each(datas,function(key,value){
				  	$("tbody[name='accountTable']").append("<tr><td>"+value.number+"</td><td>"+value.name+"</td><td><span class='label label-success' style='vertical-align: cneter;'>"+value.sellNum+"</span></td><td>"+that.parent().prev().prev().text()+"</td></tr>");

				  	})

				  });
		})
	}


	return{
		account:account()
	}
})
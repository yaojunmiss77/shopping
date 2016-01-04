define(["jquery"],function(jquery){

	function warehouse()
	{
		$('#warehouseTable').bind('click',function(e){

			if(e.target.innerHTML == "编辑")
			{
				window.alert("我已经点击了编辑");
			}
			else if(e.target.innerHTML == "删除")
			{
				window.alert("我已经点击了删除");
			}

		
		})
	}

	return{
		warehouse:warehouse()
	}
})
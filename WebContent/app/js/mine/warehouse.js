define([],function(){

	function warehouse()
	{
		/*$('#warehouseTable').bind('click',function(e){

			if(e.target.innerHTML == "编辑")
			{
				window.alert("我已经点击了编辑");
			}
			else if(e.target.innerHTML == "删除")
			{
				window.alert("我已经点击了删除");
			}
		
		})*/

		$("button[name='editor']").click(function(){

			

			var number = $(this).parent().prev().prev().prev().prev().prev().prev().prev().prev().prev().text();
			var name = $(this).parent().prev().prev().prev().prev().prev().prev().prev().prev().text();
			var type = $(this).parent().prev().prev().prev().prev().prev().prev().prev().text();
			var reserveNum = $(this).parent().prev().prev().prev().prev().prev().prev().text();
			var sellNum = $(this).parent().prev().prev().prev().prev().prev().text();
			var offerings = $(this).parent().prev().prev().prev().prev().text();
			var purchasePrice =/\d+/gi.exec($(this).parent().prev().prev().prev().text());
			var sellPrice = /\d+/gi.exec($(this).parent().prev().prev().text());
			var discount = $(this).parent().prev().text();


			/*商品名称*/
			$('.editorInputs').children('div.goodsName').children('div').children().val(name);
			/*商品类型*/
			var typeDom = $(this).next().find("select[name='type']").children();
			
			for(var i=0;i<typeDom.length;i++)
			{

				if(typeDom.parent().children(':eq('+i+')').text() == "熟食");
				{
					typeDom.parent().children(':eq('+i+')').attr("selected","selected");
				}
			}
			/*库存数量*/
			$('.editorInputs').children('div.goodsName').next().next().children('div').children().val(reserveNum);
			/*销量*/
			$('.editorInputs').children('div.goodsName').next().next().next().children('div').children().val(sellNum);
			/*供货商*/
			$('.editorInputs').children('div.goodsName').next().next().next().next().children('div').children().val(offerings);
			/*商品进价*/
			$('.editorInputs').children('div.goodsName').next().next().next().next().next().children('div').children().val(purchasePrice);
			/*商品售价*/
			$('.editorInputs').children('div.goodsName').next().next().next().next().next().next().children('div').children().val(sellPrice);
			/*商品折扣*/
			$('.editorInputs').children('div.goodsName').next().next().next().next().next().next().next().children('div').children().val(discount);
		})
	}

	return{
		warehouse:warehouse()
	}
})
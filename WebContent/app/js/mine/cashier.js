define(["jquery"],function(){

	var goods = [];

	function cashier(){

		/*首先检测库粗库存量，如果库存量为零，则使得该dom编程灰色*/
		$.each($('.caption p .btn-danger'),function(){

			var gitNum = parseFloat(/\d+/gi.exec($(this).next().text()));
			if(gitNum <=0)
			{
				$(this).parent().parent().parent().parent().css("opacity",0.4);
				$(this).prev().addClass('disabled');
			}
		})

		/*首先定义总价*/
		var allMoney=0;

		/*循环计算总价的函数*/

		function countAllMoney()
		{
			allMoney=0;
			$.each($('.food'),function(){

			var num = $(this).children('span').text();
			var price = parseFloat(/\d+\.\d+/gi.exec($(this).children('div').children('h5').text()));
			allMoney+=num*price;

		})

		$('#allMoney').text("￥"+allMoney);
		}

		/*计算总金额*/
		countAllMoney();

		/*点击加号进行加计算*/

		$('.caption p .btn-success').click(function(){

			var hFive = $(this).parent().prev();

			var numSpan = hFive.parent().prev();
			var numSpanText = (parseInt(numSpan.text()));
			if(numSpanText == 0)
			{
				numSpan.addClass('label-success');
				$(this).next().removeClass('disabled');
			}
			/*改动右上角的商品点击个数*/
			numSpan.text(++numSpanText);

			/*改动相应的库存数量的标志位*/
			var reserve = $(this).next().next();
			/*首先得到该库存的数量*/
			var reserveNum = parseFloat(/\d+/gi.exec(reserve.text()));
			
			if(reserveNum > 0)
			{
				reserveNum--;
				reserve.text("库存："+reserveNum);
			}
			if(reserveNum == 0)
			{
				$(this).addClass('disabled');
			}
			/*计算总金额*/
			countAllMoney();

			/*计算找零*/
			change();

			changeGoods();

		})

		/*点击减号进行相应的减计算并进行相应的处理*/

		$('.caption p .btn-danger').click(function(){
			var hFive = $(this).parent().prev();
			var numSpan = hFive.parent().prev();
			var numSpanText = (parseInt(numSpan.text()));
			if(numSpanText > 0)
			numSpan.text(--numSpanText);
			if(numSpanText == 0)
			{
				numSpan.removeClass('label-success');
				$(this).addClass('disabled')
			}

			/*改动相应的库存数量的标志位*/
			var reserve = $(this).next();
			/*首先得到该库存的数量*/
			var reserveNum = parseFloat(/\d+/gi.exec(reserve.text()));
				reserveNum++;
				reserve.text("库存："+reserveNum);
			$(this).prev().removeClass('disabled')
			
			/*计算总金额*/
			countAllMoney();

			/*计算找零*/
			change();

			changeGoods();

		})

	}



	/*当支付金额文本框得到焦点的时候开始给docuemnt放入点击事件*/
	$(':input:text').focus(function(){

		$(document).keyup(function(){

			change();
		
	})

	})

/*当支付金额失去焦点的时候给document移除点击事件*/
	$(':input:text').blur(function(){

		$(document).unbind('keyup');
	})


	/*计算余额的函数*/
	function change()
	{
		var remainder = 0;
		remainder = parseFloat($(':input:text').val()) - parseFloat(/\d+/gi.exec($('#allMoney').text()));
		if(remainder > 0)
			$('#remainder').text("￥"+remainder.toFixed(1));
		else
			$('#remainder').text("余额不足");
	}

	/*现在开始进行相应的表单的提交事件*/
	function enterDown()
	{
			/*当按键键入enter的时候进行提交*/
		$(document).keydown(function(){
			
			if(event.keyCode == 13)
			{
				if(confirm("你确定提交吗？"))
				{
				 $.post("CashierSubmitAction.action",
				  {
				    goodsData:JSON.stringify(goods),  /*该函数用于把goods的json对象转化成json形式的字符串数组*/
				    async: false
				  },function(data,status){

				  	location.reload();

				  });
				}
			}
				
	
		})
	}

	/*当键入enter的时候进行相应的提交*/
	enterDown();



		/*现在开始收集所有的已经卖出的东西的编号和数量*/
		function changeGoods()
		{
			 $.each($('.food'),function(index,sport){
			 goods[index]={number:$(this).next().text(),sellNum:$(this).children('img').next().text()};
			});
		}
		

	return{

		Cashier:cashier()
	}
})
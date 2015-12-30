define(["jquery"],function(){

	function cashier(){

		/*首先定义总价*/
		var allMoney=0;

		/*循环计算总价的函数*/

		function countAllMoney()
		{
			allMoney=0;
			$.each($('.food'),function(){

			var num = $(this).children('span').text();
			var price = parseFloat(/\d+/gi.exec($(this).children('div').children('h5').text()));
			allMoney+=num*price;

		})

		$('#allMoney').text("￥"+allMoney);
		}

		countAllMoney();

		

		

		/*点击加号进行加计算*/

		$('.btn-success').click(function(){

			var hFive = $(this).parent().prev();

			var numSpan = hFive.parent().prev();
			var numSpanText = (parseInt(numSpan.text()));
			if(numSpanText == 0)
			{
				numSpan.addClass('label-success');
				$(this).next().removeClass('disabled');
			}
			numSpan.text(++numSpanText);

			/*var price=parseFloat((/\d+/gi).exec(hFive.text()));
			allMoney=price*numSpanText;
			$('#allMoney').text("￥"+allMoney);*/
			countAllMoney();

		})

		/*点击减号进行相应的减计算并进行相应的处理*/

		$('.btn-danger').click(function(){
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
			
			countAllMoney();

		})

	}

	/*当按键键入enter的时候进行提交*/
	$(document).keydown(function(){
		if(event.keyCode == 13)
			if(confirm("你确定提交吗？"))
			{
				window.alert("我键入了Enter建");
			}
			else
			{
				window.alert("我已经放弃了");
			}
	})


	/*当支付金额文本框得到焦点的时候开始给docuemnt放入点击事件*/
	$(':input:text').focus(function(){

		$(document).keyup(function(){
		var remainder = 0;
		remainder = parseFloat($(':input:text').val()) - parseFloat(/\d+/gi.exec($('#allMoney').text()));
		if(remainder > 0)
			$('#remainder').text("￥"+remainder);
		else
			$('#remainder').text("余额不足");
	})

	})

/*当支付金额失去焦点的时候给document移除点击事件*/
	$(':input:text').blur(function(){

		$(document).unbind('keyup');
	})


	return{

		Cashier:cashier()
	}
})
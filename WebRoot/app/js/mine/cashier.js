define(["jquery"],function(){

	function cashier(){

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

	

	return{

		Cashier:cashier()
	}
})
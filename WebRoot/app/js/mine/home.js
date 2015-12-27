define(["jquery"],function(jquery){
	
	/*首先得到conterner需要多高的要求*/
	var conternerHeight=document.body.clientHeight
	-$('header').outerHeight()-$('footer').outerHeight();

	/*控制conterner内容的高度*/
	$('#conterner').css('height',conternerHeight);


	/*window.alert($('#conterner').html());
	window.alert($('#conterner').val());
	window.alert($('#conterner').text());*/

/*当鼠标悬浮在图标上面的时候进行相应的高亮*/
	$('aside section ul li a').hover(function(){
		$(this).children('img').addClass('bigImage');
	},function(){
		$(this).children('img').removeClass('bigImage');
	})
	
               
	
});



	





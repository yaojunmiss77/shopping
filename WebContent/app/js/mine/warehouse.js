define(["jquery"],function(jquery){

	function warehouse()
	{
		$('#warehouseTable tbody tr td span').bind('click',function(){
			/*e.target.innerHTML="fdsafds";
			e.target.innerHTML = "fdsafsad";*/
			window.alert($(this).val());
		})
	}

	return{
		warehouse:warehouse()
	}
})
/**
 * Created by Administrator on 2015/8/7.
 */
/**
 * @author yaojun
 * @explain 配置相应的功能
 * @date 2015-08-08
 */
require.config({
    //定义基础路径，其他的path等路径是基于基础路径进行引入的。如果不配置，默认为引入requireJS页面所在的位置
    //baseUrl:"scripts/",
    //requirejs默认对文件进行js扩展名处理，如果加上js或者以http、https开头，则不处理
    paths:{
        //定义组件名称，以及组件js所在的路径
        "jquery":"../bootstrap/jQuery-2.1.4.min",
        "bootstrap":"../bootstrap/bootstrap.min.js"
        
    },
    shim:{

        "jquery":{
            exports: "jquery"
        },
	    "bootstrap":{
	    	exports: "bootstrap"
	    }
        
    }
});
require(["home"],
    function(home){
    //requirejs 启动
   

});
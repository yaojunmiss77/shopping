<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>shopping</title>
    
    <!-- Bootstrap 3.3.4 -->
<link href="app/style/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- Font Awesome Icons -->
<link href="app/style/bootstrap/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="app/style/bootstrap/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="app/style/bootstrap/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins
     folder instead of downloading all of them to reduce the load. -->
<link href="app/style/bootstrap/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
<link href="app/style/mine/cashier.css" rel="stylesheet" type="text/css" />


  </head>

 <body>
<div class="jumbotron">
  <h2>总价：</h2><h3 id="allMoney">￥24</h3>
  <h2 style="margin-left: 10%;">支付：<input type="text" style="width:20%;" placeholder="输入付款金额" />
  <h2 style="margin-left: 3%;">折扣：<h3>0.85</h3>
  <h2 style="margin-left: 8%;">找零：<h3 id="remainder">￥10</h3>
</div>
<div id="shop-list" style="overflow-y:auto; overflow-x:hidden; height:86%;">
<div class="row">
  <div class="col-sm-4 col-md-2" style="opacity:0.4;">
    <div class="food">
      <img src="app/img/foods/coca.png" class="img-circle" title="可口可乐" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>可口可乐</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-4 col-md-2">
    <div class="food">
      <img src="app/img/foods/cans.png" alt="..."  style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>可奶</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>

    </div>
  </div>
  <div class="col-sm-4 col-md-2">
    <div class="food">
      <img src="app/img/foods/cans1.png" class="img-circle" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>百事可乐</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-4 col-md-2">
    <div class="food">
      <img src="app/img/foods/coffee.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>咖啡</h4><h5>￥10/瓶</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-4 col-md-2">
    <div class="food">
      <img src="app/img/foods/melon_water.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>西瓜</h4><h5>￥10/个</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-4 col-md-2">
    <div>
      <img src="app/img/foods/apple.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>苹果</h4><h5>￥10/个</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  
</div>
<div class="row">
  <div class="col-sm-6 col-md-2">
    <div id="food">
      <img src="app/img/foods/cans.png" alt="..."  style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>可奶</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>

    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/cans1.png" class="img-circle" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>百事可乐</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/coffee.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>咖啡</h4><h5>￥10/瓶</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/melon_water.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>西瓜</h4><h5>￥10/个</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/apple.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>苹果</h4><h5>￥10/个</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/burger.png" alt="..." title="汉堡包" style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>汉堡包</h4><h5>￥10/个</h5>
        <p><button class="btn btn-success" role="button">+</button> <button href="#" class="btn btn-danger" role="button">-</button></p>
      </div>
    </div>
  </div>

</div>
<div class="row">
  <div class="col-sm-6 col-md-2">
    <div id="food">
      <img src="app/img/foods/cans.png" alt="..."  style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>可奶</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>

    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/cans1.png" class="img-circle" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>百事可乐</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/coffee.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>咖啡</h4><h5>￥10/瓶</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/melon_water.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>西瓜</h4><h5>￥10/个</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/apple.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>苹果</h4><h5>￥10/个</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/burger.png" alt="..." title="汉堡包" style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>汉堡包</h4><h5>￥10/个</h5>
        <p><button class="btn btn-success" role="button">+</button> <button href="#" class="btn btn-danger" role="button">-</button></p>
      </div>
    </div>
  </div>

</div>
<div class="row">
  <div class="col-sm-6 col-md-2">
    <div id="food">
      <img src="app/img/foods/cans.png" alt="..."  style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>可奶</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>

    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/cans1.png" class="img-circle" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>百事可乐</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/coffee.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>咖啡</h4><h5>￥10/瓶</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/melon_water.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>西瓜</h4><h5>￥10/个</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/apple.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>苹果</h4><h5>￥10/个</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/burger.png" alt="..." title="汉堡包" style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>汉堡包</h4><h5>￥10/个</h5>
        <p><button class="btn btn-success" role="button">+</button> <button href="#" class="btn btn-danger" role="button">-</button></p>
      </div>
    </div>
  </div>

</div>
<div class="row">
  <div class="col-sm-6 col-md-2">
    <div id="food">
      <img src="app/img/foods/cans.png" alt="..."  style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>可奶</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>

    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/cans1.png" class="img-circle" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>百事可乐</h4><h5>￥10/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/coffee.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>咖啡</h4><h5>￥10/瓶</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/melon_water.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>西瓜</h4><h5>￥10/个</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/apple.png" alt="..." style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>苹果</h4><h5>￥10/个</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger" role="button">-</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-2">
    <div>
      <img src="app/img/foods/burger.png" alt="..." title="汉堡包" style="vertical-align:top;"><span class="label label-success">4</span>
      <div class="caption">
      <h4>汉堡包</h4><h5>￥10/个</h5>
        <p><button class="btn btn-success" role="button">+</button> <button href="#" class="btn btn-danger" role="button">-</button></p>
      </div>
    </div>
  </div>

</div>
</div>

<!--下面是requirejs框架-->
    <script data-main="app/js/mine/main.js" src="app/js/requirejs/require.js"></script>
    
    </script>
</body>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
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

 



             

<s:iterator value="goods" status="minGoods"> 

<s:if test="(#minGoods.count)%6 == 0">
   <div class="row" style="border-bottom: 1px solid #ddd;">
</s:if>

  <div class="col-sm-4 col-md-2" >
    <div class="food">
      <img src=<s:property value="imagePath"/> class="img-circle" title=<s:property value="name"/> alt="..." style="vertical-align:top;"><span class="label">0</span>
      <div class="caption">
      <h4><s:property value="name"/></h4><h5>￥<s:property value="sellPrice"/>/罐</h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger disabled" role="button" >-</a><span style="margin-left: 10%; color:#fff; background-color:#FF3300; ">库存：<s:property value="reserveNum"/></span></p>
      </div>
    </div>
  </div>

<s:if test="(#minGoods.count)%6 == 0">
   </div>
</s:if>

</s:iterator>


</div>
             



<!--下面是requirejs框架-->
    <script data-main="app/js/mine/main.js" src="app/js/requirejs/require.js"></script>
    
    </script>
</body>
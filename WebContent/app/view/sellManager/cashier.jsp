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
  <h2 style="margin-left: 8%;">找零：<h3 id="remainder">￥0</h3>
</div>
<div id="shop-list">
       

<s:iterator value="map" status="minMap"> 

<div class="page-header">
  <h1><s:property value="lists[#minMap.count-1].name"/> <small><s:property value="lists[#minMap.count-1].content"/></small></h1>
</div>

   <div class="row">
   <s:iterator value="value">
  <div class="col-sm-4 col-md-2" >
    <div class="food" name="food">
     
      <img src=<s:property value="imagePath"/> title=<s:property value="name"/> alt="..." style="vertical-align:top;"><span class="label">0</span>
      <div class="caption">
      <h4><s:property value="name"/></h4><h5>￥<s:property value="sellPrice"/>/<span><s:property value="unit"/></span></h5>
        <p><a href="#" class="btn btn-success" role="button">+</a> <a href="#" class="btn btn-danger disabled" role="button" >-</a><span style="margin-left: 10%; color:#fff; background-color:#FF3300; ">库存：<s:property value="reserveNum"/></span></p>
      </div>
    </div>
    <!-- 元素编号的控制-->
     <span style="display:none;"><s:property value="number"/> </span>
  </div>
</s:iterator>
 </div>

</s:iterator>

</div>
<script  src="app/js/bootstrap/jQuery-2.1.4.min.js"></script>
<script  src="app/js/bootstrap/bootstrap.min.js"></script>
           

<!--下面是requirejs框架-->
    <script data-main="app/js/mine/main.js" src="app/js/requirejs/require.js"></script>
    
    </script>
</body>
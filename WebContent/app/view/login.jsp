<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
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
<link href="app/style/mine/login.css" rel="stylesheet" type="text/css" />

  </head>
  
 <body class="skin-blue  sidebar-mini">



 <div class="container-fluid">
 <div class="row" style="padding-left:35%;">
 <div class="col-md-12" style="padding-top: 5%;">
   <img src="app/img/dong.gif" style="width: 80px; margin-right:1%; vertical-align: bottom;" alt="..." class="img-circle"><h1 style=" display: inline;">超市管理登录系统</h1>
 </div>
 </div>

 <div class="row" style="padding-left: 40%;">
    <div class="col-md-5" style="padding-top: 12%;">

        <form action="loginAction.action" method="post">

        <div class="form-group form-inline">
            <label for="exampleInputEmail1">角色:</label>
              <select class="form-control">
                <option>管理员</option>
                <option>销售员</option>
                <option>仓库管理员</option>
              </select>
         </div>
          <div class="form-group form-inline">

            <label for="exampleInputEmail1">工号:</label>
            <div class="input-group">
            <span class="input-group-addon" id="basic-addon1"> <span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
            <input type="text" name="user.number"  required="required" class="form-control" id="exampleInputEmail1" placeholder="工号" aria-describedby="basic-addon1">
            </div>
          </div>
          <div class="form-group form-inline">
            <label for="exampleInputPassword1">密码:</label>
            <div class="input-group">
              <span class="input-group-addon" id="basic-addon1"> <span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
              <input type="password" name="user.password" required="required" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
          </div>
          <button type="submit" class="btn btn-default" style="margin-left: 12.5%;">登录</button>
        </form>

    </div>

</div>
</div>

  </body>

</html>

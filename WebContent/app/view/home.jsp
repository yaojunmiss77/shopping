<%@ page language="java" import="java.util.*,pojo.User" pageEncoding="utf-8"%>
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
<link href="app/style/mine/home.css" rel="stylesheet" type="text/css" />
  </head>
  <!-- ADD THE CLASS layout-boxed TO GET A BOXED LAYOUT -->
  <body  class=" sidebar-mini skin-blue-light" >
    <!-- Site wrapper -->
    <div class="wrapper">
  <!--头部开始-->
       <!--  <div ng-include="'/MES/view/app/home/header.html'"></div> -->
        <header class="main-header">
        <span class="logo" style="background-color:#63BC3C">
            <span class="logo-mini"><b>MES</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>超市系统管理</b></span>
        </span>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation" style="background-color:#63BC3C">
            <!-- Sidebar toggle button-->

            <div class="add btn-primary-focus">
                <span class="addRoom "><a href="#" ><i class="glyphicon glyphicon-home"></i>菜单1</a></span>
            </div>
            <div class="add btn-primary-focus"  ng-controller="mouseMoveController"  style="z-index:1000;">
                <div  ng-mouseenter="hover()" ng-mouseleave="leaver()">
                    <span class="addRoom"><a href="#/error"><i id="caidan" class="glyphicon glyphicon-exclamation-sign">3213</i></a></span>
                </div>
            </div>
            <div class="add btn-primary-focus">
                <span class="addRoom"><a href="#/listPerson"><i class="fa fa-users"></i>菜单3</a></span>
            </div>
            <div class="add"  ng-controller="mouseMoveController"  style="z-index:1000;">
            </div>
            <div class="add0">
                <span class="addRoom"><a href="/MES/login/ExitAction.action?name=yaojun"><i class="fa  fa-remove"></i>退出系统</a></span>
            </div>
            <div class="add0">
                <span class="addRoom"><i class="fa fa-user"></i>
                    欢迎您：<span><%=((User)session.getAttribute("user")).getName() %></span>
               </span>
            </div>
        </nav>
    </header>
    <!--头部结束-->
    <!--主体开始-->
    <!--左侧栏开始-->

        <aside class="main-sidebar sui-nav nav-list sui ui-sortable" id="showLeftMember"> 
        <section class="sidebar" id="side-gaoliang">
          <ul class="sidebar-menu">

            <li><a class="frame-menu" href="CashierAction.action">
            <img src="app/img/sell.png"/> <span>收银管理</span></a></li>

            <li><a class="frame-menu" href="app/view/sellManager/sell.jsp">
           <img src="app/img/people.png"/><span>人事管理</span></a></li>

          <li><a class="frame-menu" class="frame-menu" href="#/addPerson/">
          <img src="app/img/accounts.png"/> <span>账单管理</span></a></li>

           <li><a class="frame-menu" href="WarehouseAction.action">
           <img src="app/img/money.png"/><span>仓库管理</span></a></li>

           
        </ul>

        </section>
        <!-- /.sidebar -->
    <script> 
function  gaoliang(){ 
        //获取鼠标滑过或是点击的标签和要切换内容的元素
        var lis=document.getElementById("side-gaoliang").getElementsByTagName('li');
            //遍历titles下的所有li
            for (var i = 0; i < lis.length; i++) {
                lis[i].id=i;
                lis[i].onclick=function(){
                    
                    //清除所有li上的class
                    for (var j = 0; j < lis.length; j++) {
                        lis[j].className='';
                    };
                    //只有当前高亮
                    this.className='select';    
                }
            }
    }
     gaoliang();
</script>
      </aside>
    <!--左侧栏结束-->
    <!--右侧栏开始-->
     <div id="conterner">

         <div class="content-wrapper">
          <!-- 主体开始 -->
  
        <iframe id="if" src="CashierAction.action" style="width:100%; height:100%; "></iframe>

    <!-- 主体结束 -->
         </div>
     
      </div>
      <!--右侧栏结束-->
    <!--主体结束-->
    <!--尾部开始-->
      <!-- <div ng-include="'/MES/view/app/home/footer.html'"></div>  -->
    <footer class="main-footer">
        <strong>浙江工业大学 | 俊俊食品有限公司 &copy; 2015-2018.</strong> 所有版权保留.
    </footer>
    <!--尾部结束-->

    <!--下面是requirejs框架-->
<script data-main="app/js/mine/main.js" src="app/js/requirejs/require.js"></script>
  



  </body>
</html>
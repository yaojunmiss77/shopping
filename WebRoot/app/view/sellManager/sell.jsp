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

  </head>
<body>
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">商品详细清单列表</h3>
            <div class="box-tools">
                <div class="input-group" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Search">
                    <div class="input-group-btn">
                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                    </div>
                </div>
            </div>
        </div><!-- /.box-header -->
        <div class="box-body table-responsive no-padding">
             <table class="table table-hover table-striped">
                <tbody><tr>
                    <th>编号</th>
                    <th>名称</th>
                    <th>类型</th>
                    <th>库存数量</th>
                    <th>供货商</th>
                    <th>售价</th>
                </tr>
                <tr>
                    <td>183</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-success">1</span></td>
                    <td>张工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>219</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-warning">3</span></td>
                    <td>李工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-danger">4</span></td>
                    <td>张工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>周工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>徐工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>夏工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
               <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>陶工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>张工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>姚工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>丁工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>王工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>龚工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>贺工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>陈工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                <tr>
                    <td>657</td>
                    <td>赤诚</td>
                    <td>11-7-2014</td>
                    <td><span class="label label-primary">2</span></td>
                    <td>张工</td>
                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                </tr>
                </tbody></table>
        </div><!-- /.box-body -->
    </div>

</div>
</body>
</html>



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
<!-- bootstrap wysihtml5 - text editor -->
    <link href="app/style/bootstrap/css/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
<link href="app/style/mine/warehouse.css" rel="stylesheet" type="text/css" />
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
             <table class="table table-hover table-striped" id="warehouseTable">
                <tbody><tr>
                    <th>商品编号</th>
                    <th>商品名称</th>
                    <th>商品类型</th>
                    <th>库存数量</th>
                    <th>销量</th>
                    <th>供货商</th>
                    <th>商品进价</th>
                    <th>商品售价</th>
                    <th>商品折扣</th>
                    <th>操作</th>
                </tr>
                <s:iterator value="goods" status="minGoods"> 
                <tr>
                    <td><s:property value="number"/></td>
                    <td><s:property value="name"/></td>
                    <td><s:property value="type"/></td>
                    <td><span class="label label-success" style="vertical-align: cneter;"><s:property value="reserveNum"/></span></td>
                    <td><s:property value="sellNum"/></td>
                    <td><s:property value="offerings"/></td>
                    <td>￥<s:property value="purchasePrice"/></td>
                    <td>￥<s:property value="sellPrice"/></td>
                    <td><s:property value="discount"/></td>
                    <td>
                    <!-- Button trigger modal -->
<button type="button" name="editor" class="btn btn-success" data-toggle="modal" data-target="#myModal">
  编辑
</button>



<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><i class="fa fa-plus-square "style="margin-right:5px"></i>编辑商品</h4>
      </div>
      <div class="modal-body" style="height:68%; overflow-y:auto; overflow-x: hidden;">
        <div class="box-body table-responsive no-padding" style="overflow-x: hidden;">
             <section class="content" id="chart" style="padding-top:0px;padding-bottom:0px; margin-bottom:0px;"  >
            <div class="row">
                <div class="col-md-12" style="padding-left:2px; padding-right: 2px; padding-top: 2px; padding-bottom: 0px; ">
                    <div id="chartContent1" class="box box-primary" style="padding-bottom:0px; border: 0px;">
                     <form class="form-horizontal">
                      <div class="box-body editorInputs">
                        <div class="form-group goodsName">
                          <label  class="col-sm-3 control-label">商品名称</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" ng-model="defaultMember.name"  placeholder="商品名称">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-sm-3 control-label">商品类型</label>
                          <div class="col-sm-9">
                          <select name="type">
                              <option value ="volvo">水果</option>
                              <option value ="saab">生活用品</option>
                              <option value="opel">熟食</option>
                              <option value="audi">饮料</option>
                          </select>
                        </div>
                        </div>
                        <div class="form-group">
                          <label  class="col-sm-3 control-label">库存数量</label>
                          <div class="col-sm-9">
                            <input type="number" class="form-control" ng-model="defaultMember.number"  placeholder="库存数量">
                          </div>
                        </div>
                        <div class="form-group">
                          <label  class="col-sm-3 control-label">销量</label>
                          <div class="col-sm-9">
                            <input type="number" class="form-control" ng-model="defaultMember.number"  placeholder="销量">
                          </div>
                        </div>
                        <div class="form-group">
                          <label  class="col-sm-3 control-label">供货商</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control"  ng-model="defaultMember.origin"  placeholder="供货商" value="test">
                          </div>
                        </div>
                        <div class="form-group">
                          <label  class="col-sm-3 control-label">商品进价</label>
                          <div class="col-sm-9">
                            <input type="number" class="form-control" ng-model="defaultMember.number"  placeholder="进价">
                          </div>
                        </div>
                        <div class="form-group">
                          <label  class="col-sm-3 control-label">商品售价</label>
                          <div class="col-sm-9">
                            <input type="number" class="form-control" ng-model="defaultMember.number"  placeholder="售价">
                          </div>
                        </div>
                        <div class="form-group">
                          <label  class="col-sm-3 control-label">商品折扣</label>
                          <div class="col-sm-9">
                            <input type="number" class="form-control" ng-model="defaultMember.number"  placeholder="折扣">
                          </div>
                        </div>
                  </div>
                </form>
                    </div>
                </div>
            </div>
        </section>
                
        </div><!-- /.box-body -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary">保存</button>
      </div>
    </div>
  </div>
</div>
                    <btton class="btn btn-danger">删除</btton>
                    </td>
                </tr>
                </s:iterator>
                </tbody></table>   
                <nav>
  <ul class="pagination pagination-sm no-margin pull-right" style="padding-right: 8%; padding-top:2%; padding-bottom: 2%">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>         
        </div><!-- /.box-body --> 
    </div>

</div>
</body>

<script  src="app/js/bootstrap/jQuery-2.1.4.min.js"></script>
<script  src="app/js/bootstrap/bootstrap.min.js"></script>
 
<!--下面是requirejs框架-->
   <script data-main="app/js/mine/main.js" src="app/js/requirejs/require.js"></script>
   </script>
    
    
</html>



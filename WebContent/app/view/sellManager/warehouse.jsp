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
                    <th>供货商</th>
                    <th>商品进价</th>
                    <th>商品售价</th>
                    <th>商品折扣</th>
                    <th>操作</th>
                </tr>
                <tr>
                    <td>312321</td>
                    <td>可口可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success" style="vertical-align: cneter;">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                    </td>
                </tr>
                <tr>
                    <td>312321</td>
                    <td>百事可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>雪花啤酒</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>金华火腿</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>康师傅方便面</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>青岛啤酒</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>清风餐巾纸</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>辣条</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>老干妈</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>稻花香</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>种子酒</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>五粮液</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>可口可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>可口可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>可口可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>可口可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>可口可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>可口可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>可口可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>可口可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr><tr>
                    <td>312321</td>
                    <td>可口可乐</td>
                    <td>饮品</td>
                    <td><span class="label label-success">200</span></td>
                    <td>百事公司</td>
                    <td>￥10</td>
                    <td>￥20</td>
                    <td>1</td>
                    <td><btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                </tr>
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
<!--下面是requirejs框架-->
    <script data-main="app/js/mine/main.js" src="app/js/requirejs/require.js"></script>
    
    </script>
</html>



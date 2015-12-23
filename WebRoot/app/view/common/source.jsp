<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

 
<link rel="stylesheet" href="app/style/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="app/style/bootstrap/css/font-awesome.min.css" />
<link rel="stylesheet" href="app/style/bootstrap/css/ionicons.min.css" />
<link rel="stylesheet" href="app/style/bootstrap/css/AdminLTE.min.css" />
<link rel="stylesheet" href="app/style/bootstrap/css/skins/_all-skins.min.css" />
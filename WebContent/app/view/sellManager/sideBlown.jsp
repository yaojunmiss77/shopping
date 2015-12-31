<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<div>
	<aside class="main-sidebar" id="showLeftMember"  > 
        <section class="sidebar" id="side-gaoliang">
          <ul class="sidebar-menu">

            <li style="padding-left:15px;"><a href="#/error">
            <img src="app/img/sell.png"/> <span>收银管理</span></a></li>

            <li style="padding-left:15px;"><a href="#/personArrange">
           <img src="app/img/people.png"/><span>人事管理</span></a></li>

          <li style="padding-left:15px;"><a href="#/addPerson/">
          <img src="app/img/accounts.png"/> <span>账单管理</span></a></li>

           <li style="padding-left:15px;"><a href="#/personArrange">
           <img src="app/img/warehouse.png"/><span>仓库管理</span></a></li>

           
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
</div>
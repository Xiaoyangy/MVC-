<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>二手跑车系统</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- basic styles -->
<link href="css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<script src="assets/js/ace-extra.min.js"></script>

<!-- 分界线 -->
<link rel="stylesheet" href="css/carstyle.css"/>
<script type="text/javascript" src="js/demo.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body>
<div class="navbar navbar-default" id="navbar"> 
 
  <div class="navbar-container" id="navbar-container">
    <div class="navbar-header pull-left"> <a href="#" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> 二手跑车系统 </small> </a> 
      <!-- /.brand --> 
    </div>
    <!-- /.navbar-header -->
    
    <div class="navbar-header pull-right" role="navigation">
      <ul class="nav ace-nav">
        <li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="assets/avatars/user.jpg" alt="Jason's Photo" /> <span
							class="user-info"> <small>欢迎光临,</small> ${sessionScope.username } </span> <i class="icon-caret-down"></i> </a>
          <ul
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
 
            <li><a href="#"> <i class="icon-user"></i> 登录 </a></li>
            <li class="divider"></li>
            <li><a href="UserLoginOut"> <i class="icon-off"></i> 退出 </a></li>
          </ul>
        </li>
      </ul>
      <!-- /.ace-nav --> 
    </div>
    <!-- /.navbar-header --> 
  </div>
  <!-- /.container --> 
</div>

<div class="main-container " id="main-container"> 
<div style="width: 50%; align:center;">
<h>购买成功,请等待卖家发货!</h><br>
<a hef="index.jsp">继续购物</a>
</div>



</div>
<!-- /.main-container --> 

<!-- basic scripts --> 


<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/typeahead-bs2.min.js"></script> 
<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script> 
<script src="assets/js/jquery.ui.touch-punch.min.js"></script> 
<script src="assets/js/jquery.slimscroll.min.js"></script> 
<script src="assets/js/jquery.easy-pie-chart.min.js"></script> 
<script src="assets/js/jquery.sparkline.min.js"></script> 
<script src="assets/js/flot/jquery.flot.min.js"></script> 
<script src="assets/js/flot/jquery.flot.pie.min.js"></script> 
<script src="assets/js/flot/jquery.flot.resize.min.js"></script> 
<script src="assets/js/ace-elements.min.js"></script> 
<script src="assets/js/ace.min.js"></script> 



</body>
</html>

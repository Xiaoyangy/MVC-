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
  <script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
			<script type="text/javascript">
			function login(s) {
				if (s == "") {
             location.href="login.jsp"; 
				} else {
					alert("你已经登录");
				}
			}
		</script>
		</script>
  <div class="navbar-container" id="navbar-container">
    <div class="navbar-header pull-left"> <a href="index.jsp" class="navbar-brand"> <small> <i
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
         
            <li><a href="javascript:void(0)"
								onclick="login('${sessionScope.username }')"><i
									class="icon-cog"></i>登录 </a>
									</li>
            <li class="divider"></li>
            <li><a href="UserLoginOut"> <i class="icon-off"></i> 退出 </a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>

</div>

<div class="main-container " id="main-container"> 
  <script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
			
			
		 function getTotal(){
		  location.href="GiveMoney";	
			}
		</script>
        
        <div class="row">
  <div class="main-container-inner col-lg-10 col-xs-offset-1"> <a class="" id="menu-toggler" href="#"> <span
				class="menu-text"></span> </a>
    <div >
      <table >
        <thead>
          <tr>
            <th  width="10%"><label>
                <input class="check-all check" type="checkbox"/>
                &nbsp;&nbsp;全选</label></th>
            <th width="26%">商品</th>
            <th width="23%">单价</th>
            <th width="12%">数量</th>
            <th width="12%">小计</th>
            <th width="13%">操作</th>
          </tr>
        </thead>
        <tbody>
          <form>
          <c:forEach var="map" items="${sessionScope.car }">
            <tr>
            <td class=""><input class="check-one check" type="checkbox"/></td>
            <td class="goods"><img src="upload/${map.value.image }" alt="" width="100" height="80"/><span>${map.value.goodsname }</span></td>
            <td class="price">${map.value.price }</td>
            <td class="count">
            <input class="count-input" type="text" value="${map.value.count }" disabled="disabled"/>
            </td>
            <td >${map.value.price*map.value.count }</td>
            <td class="operation"><span class="delete">删除</span></td>
          </tr>
          </c:forEach>
        </tbody>
      </table>
      <div class="foot" id="foot">
        <label class="fl select-all">
          <input type="checkbox" class="check-all check"/>
          &nbsp;&nbsp;全选</label>
        <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
        <div class="fr closing" onclick="getTotal()">结算</div>
        <input type="hidden" id="cartTotalPrice" />
       
        <div class="selected-view">
          <div id="selectedViewList" class="clearfix">
            <div><img src="images/1.jpg"><span>取消选择</span></div>
          </div>
          </div>
      </div>
    </div>
  </div>
  </div>
   
   			<script type="text/javascript">
						window.jQuery
								|| document
										.write("<script src='assets/js/jquery-2.0.3.min.js'>"
												+ "<"+"script>");
					</script>

				

					<script type="text/javascript">
						if ("ontouchend" in document)
							document
									.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
											+ "<"+"script>");
					</script>
					<script src="assets/js/bootstrap.min.js"></script>
					<script src="assets/js/typeahead-bs2.min.js"></script>
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

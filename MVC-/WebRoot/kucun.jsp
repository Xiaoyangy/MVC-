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
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />



<script src="assets/js/ace-extra.min.js"></script>

</head>

<body>
	<div class="navbar navbar-default" id="navbar">
	
		<script type="text/javascript">
			function login(s) {
				if (s == "") {
             location.href="login.jsp"; 
				} else {
					alert("你已经登录");
				}
			}
		</script>
		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> 二手跑车系统
				</small>
				</a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->

			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="assets/avatars/user.jpg" alt="Jason's Photo" /> <span
							class="user-info"> <small>欢迎光临,</small>
								${sessionScope.username }
						</span> <i class="icon-caret-down"></i>
					</a>

						<ul
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="javascript:void(0)"
								onclick="login('${sessionScope.username }')"><i
									class="icon-cog"></i>登录 </a>
									</li>


							<li class="divider"></li>

							<li><a href="UserLoginOut" onclick="return confirm('确认退出么')">
									<i class="icon-off"></i> 退出
							</a></li>
						</ul></li>
				</ul>
				<!-- /.ace-nav -->
			</div>
			<!-- /.navbar-header -->
		</div>
		<!-- /.container -->
	</div>



		

			<div class="sidebar" id="sidebar">
				

				<ul >
				
					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-desktop"></i> <span class="menu-text"> <c:choose>
									<c:when test="${sessionScope.user.rowid  eq 1 }">
								 管理员
    	                        </c:when>
									<c:when test="${sessionScope.user.rowid  eq 3 }">
                           		        卖家
    	                        </c:when>
									<c:when test="${sessionScope.user.rowid  eq 4 }">
								 物流商
    	                        </c:when>
								</c:choose>
						</span> <b class="arrow icon-angle-down"></b>
					</a>
						<ul class="submenu">
							<li><c:choose>
									<c:when test="${sessionScope.user.rowid  eq 1 }">
										<a href="addUser.jsp"> <i
											class="icon-double-angle-right"></i> 增加用户
										</a>
									</c:when>
									<c:when test="${sessionScope.user.rowid  eq 3 }">
										<a href="addGoods.jsp"> <i
											class="icon-double-angle-right"></i>新增商品
										</a>
									</c:when>
									<c:when test="${sessionScope.user.rowid  eq 4 }">
										<a href="addLuxian.jsp"> <i
											class="icon-double-angle-right"></i>增加路线
										</a>
									</c:when>
								</c:choose></li>

							<li><c:choose>
									<c:when test="${sessionScope.user.rowid  eq 1 }">
										<a href="deleteUser.jsp"> <i
											class="icon-double-angle-right"></i> 删除用户
										</a>
									</c:when>
									<c:when test="${sessionScope.user.rowid  eq 3 }">
										<a href="ShowDingdan"> <i> <class="icon-double-angle-right"></i>
											订单管理
										</a>
									</c:when>
									<c:when test="${sessionScope.user.rowid  eq 4 }">
										<a href="findAllluxian"> <i
											class="icon-double-angle-right"></i>物流商路线管理
										</a>
									</c:when>
								</c:choose></li>

							<li><c:choose>
									<c:when test="${sessionScope.user.rowid  eq 1 }">
										<a href="findAllUser"> <i class="icon-double-angle-right"></i>
											管理所有用户
										</a>
									</c:when>
									<c:when test="${sessionScope.user.rowid  eq 3 }">
										<a href="findAllGoods"> 
											商品维护
										</a>
									</c:when>
									<c:when test="${sessionScope.user.rowid  eq 4 }">
										<a href="kucun.jsp"> <i
											class="icon-double-angle-right"></i>库存查询
										</a>
									</c:when>
								</c:choose></li>

							<li><c:choose>
									<c:when test="${sessionScope.user.rowid  eq 1 }">
										<a href="locateUser.jsp"> <i
											class="icon-double-angle-right"></i> 查询单个用户

										</a>
									</c:when>
									<c:when test="${sessionScope.user.rowid  eq 3 }">
										<a href="LocateGoods.jsp"> <i> <class="icon-double-angle-right"></i>
										查询商品
										</a>
									</c:when>
									<c:when test="${sessionScope.user.rowid  eq 4 }">
										<a href="locateLuxian.jsp"> <i
											class="icon-double-angle-right"></i>
										查询路线</a>
									</c:when>
								</c:choose></li>
							</li>
				</ul>

			
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
				

					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
						<li class="active">管理</li>
					</ul>
					<!-- .breadcrumb -->

				</div>

				<div class="page-content">
					<div class="page-header">
						<h1>
							管理 <small> <i class="icon-double-angle-right"></i> 待定
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<br> <br>
						<h1>待定</h1><h1>待定</h1><h1>待定</h1><h1>待定</h1><h1>待定</h1><h1>待定</h1><h1>待定</h1>
						<h1>待定</h1><h1>待定</h1><h1>待定</h1><h1>待定</h1><h1>待定</h1><h1>待定</h1><h1>待定</h1><h1>待定</h1>
						</div>


						<!-- /.main-container-inner -->

</div>
					</div>
					<!-- /.main-container -->

					<!-- basic scripts -->


					<!--[if !IE]> -->

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

					<!-- page specific plugin scripts -->

					<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->

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


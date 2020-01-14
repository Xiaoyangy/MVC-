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

	<div class="main-container" id="main-container">
	

		<div class="main-container-inner">
	

			<div class="sidebar" id="sidebar">
			

				
				<!-- #sidebar-shortcuts -->

				<ul >
					<li class="active"><a href="#"> <i class="icon-dashboard"></i>
							<span class="menu-text"> 管理 </span>
					</a></li>



					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-desktop"></i> <span class="menu-text"> <c:choose>
									<c:when test="${sessionScope.user.rowid  eq 1 }">
								 超级管理员
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
										<a href="findAllGoods"> <i> <class="icon-double-angle-right"></i>
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
</div>

				

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
							管理 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					
					
						
							<br> <br>


							<table class="table table-striped" align="left"
								style="font-size:17px">
								<tr class="container-flow"
									style="font-size:16px;font-family:微软雅黑; text-align:center">
									<td class="col-lg-2">用户名</td>
									<td class="col-lg-2">密码</td>
									<td class="col-lg-2">邮箱</td>
									<td class="col-lg-2">身份</td>
									<td class="col-lg-2">操作</td>

								</tr>
								<c:forEach var="user" items="${list}">
									<tr style="text-align: center;">
										<td class="col-lg-2">${user.username}</td>
										<td class="col-lg-2">${user.password}</td>
										<td class="col-lg-2">${user.email}</td>
										<td class="col-lg-2"><c:choose>
												<c:when test="${user.rowid eq 1}">
													<p style="color: red;">管理人员</p>
												</c:when>
												<c:when test="${user.rowid eq 2}">
    												买家
    											</c:when>
    											<c:when test="${user.rowid eq 4}">
    												物流商
    											</c:when>
												<c:otherwise>
    												卖家
    											</c:otherwise>
											</c:choose></td>
										<td class="col-lg-2"><a
											href="modifyUser?userid=${user.id }">修改</a></td>

									</tr>

								</c:forEach>


							</table>
							

							<ul class="pagination">
								<li class="disabled"><a href="findAllUser?page=${param.page-1 }"> <i
										class="icon-double-angle-left"></i>
								</a></li>

								<li ><a href="findAllUser?page=1">1</a></li>
								<c:forEach var="i" begin="2" end="${page }">

									<li ><a href="findAllUser?page=${i }">${i }</a></li>
								</c:forEach>

								<li ><a href="findAllUser?page=${param.page+1 }"> <i class="icon-double-angle-right"></i>
								</a></li>
							</ul>


					
						<!-- /.main-container-inner -->


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

					<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
					<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
					<script src="assets/js/jquery.slimscroll.min.js"></script>
					<script src="assets/js/jquery.easy-pie-chart.min.js"></script>
					<script src="assets/js/jquery.sparkline.min.js"></script>
					<script src="assets/js/flot/jquery.flot.min.js"></script>
					<script src="assets/js/flot/jquery.flot.pie.min.js"></script>
					<script src="assets/js/flot/jquery.flot.resize.min.js"></script>

					<!-- ace scripts -->

					<script src="assets/js/ace-elements.min.js"></script>
					<script src="assets/js/ace.min.js"></script>

</body>
</html>


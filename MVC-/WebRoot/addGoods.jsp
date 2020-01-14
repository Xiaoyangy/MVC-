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
						</ul>
					</li>
				</ul>
		
			</div>
			<!-- /.navbar-header -->
		</div>
		<!-- /.container -->
	</div>

				<!-- #sidebar-shortcuts -->

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

				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {
					}
				</script>
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
						<li class="active">管理</li>
					</ul>
					<!-- .breadcrumb -->

				</div>

				<div class="page-content">
					<div class="page-header">
						<h1>
							管理 <small> <i class="icon-double-angle-right"></i>添加商品
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							
							<div class="page-content">


								<div class="row">
									<div class="col-xs-12">
										<!-- PAGE CONTENT BEGINS -->

									


										<div id="dropzone">
											<form action="AddGoods" class="dropzone dz-clickable" enctype="multipart/form-data"
											method="post">

												              商品名称:<input type="text" class="form-control "name="goodsname"><br> 
													商品价格:<input type="text"class="form-control" name="price"><br> 
													商品数量:<input type="text" class="form-control" name="count"><br>
												    <input type="hidden" class="form-control" name="userid"
													value="${sessionScope.user.id }"><br>

												<div>
													<label >商品描述:</label>
													<textarea class="form-control" id="form-field-8"
														placeholder="Default Text" style="height:200px;"
														name="comment"></textarea>
												</div>

												<input id="lefile" type="file" style="display:none" name="img">
												<div class="input-append">
													<input id="photoCover" class="input-large" type="text"
														style="height:30px;"> <a class="btn"
														onclick="$('input[id=lefile]').click();">上传图片</a>
												</div>
												<div class="clearfix form-actions">
													<div class="col-md-offset-3 col-md-9">
														<button class="btn btn-info" type="submit">
															<i class="icon-ok bigger-110"></i> 提交
														</button>
														&nbsp; &nbsp; &nbsp;
														
													</div>
												</div>
											</form>
										</div>

										<!-- PAGE CONTENT ENDS -->
									</div>
									<!-- /.col -->
								</div>
								<!-- /.row -->

							</div>




						</div>
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

					<!-- ace scripts -->

					<script src="assets/js/ace-elements.min.js"></script>
					<script src="assets/js/ace.min.js"></script>

					<!-- inline scripts related to this page -->

					
</body>
</html>


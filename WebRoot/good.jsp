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
<title>二手跑车管理系统</title>
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
			function car(s){
				if (s == "") {
					alert("请登录后再购买商品");		
				    location.href="login.jsp"; 	
				   return false;
				} else {
				    //location.href="buycar.jsp"; 	
			        return true;
				}
			}
	  		
		function check(s){
		var a=document.getElementById("count");
		if(a.value==0){
		alert("不能买购物车啊");
		a.value=1;
		}else{
		if(a.value>s){
		  alert("你的数量比库存还多,禁止");
		  a.value=0;
		}
		}
		}		
		</script>
		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> 二手跑车管理系统
				</small>
				</a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->
<div class="header-left">

			</div>
			<div class="navbar-header pull-right" role="navigation"
				style="margin-left:350px">
				<ul class="nav ace-nav">
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="assets/avatars/user.jpg" alt="Jason's Photo" /> <span
							class="user-info"> <small>欢迎光临,</small> <c:choose>
									<c:when test="${empty sessionScope.username }">
							 游客
							 </c:when>
									<c:otherwise>
							${sessionScope.username } 
							</c:otherwise>
								</c:choose>

						</span> <i class="icon-caret-down"></i>
					</a>
						<ul
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="javascript:void(0)"
								onclick="login('${sessionScope.username }')"><i
									class="icon-cog"></i>登录 </a></li>
							
							<li class="divider"></li>
							<li><a href="UserLoginOut"> <i class="icon-off"></i> 退出
							</a></li>
						</ul></li>
				</ul>
				<!-- /.ace-nav -->
			</div>
			<!-- /.navbar-header -->
		</div>
		<!-- /.container -->
	</div>

	<div class="main-container container-flow" id="main-container"
		style="padding:0px; margin:0px">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="main-container-inner" style="padding:0px; margin:0px">



			<!-- #sidebar-shortcuts -->






			<div class="page-content" style="padding:0px; margin:0px">

				<!-- /.page-header -->

				<div class="row" style="padding:0px; margin:0px">
					<div class="container-flow" style="padding:0px; margin:0px">
						<!-- PAGE CONTENT BEGINS -->
						<div class="container-flow"
							style="background-image:url(assets/css/images/dianpu2.jpg);height:170px; background-position:0px,10px; background-repeat:no-repeat;">
							<br> <br> <br>
							<div
								style="color:#ffffff;font-family:仿宋;font-size:30px;text-align:center">
								${requestScope.good.users.username  }</div>
							
							<br>

						</div>

						<div style="margin-top:38px">
							<div class="col-lg-10" style="border-right:#eeeeee solid 1px;"">
								<div class="row">
									<!-- 左边图片部分 -->
									<div class="col-md-4 col-md-offset-1">
										<a href="upload/${requestScope.good.image }" title="点击查看原图"
											data-rel="colorbox" class="cboxElement"> <img
											alt="图片加载失败" src="upload/${requestScope.good.image }" width="100%"></a>

									</div>
									<!-- 中间部分 -->
									<div class="col-lg-6" style="padding-left:35px">
										<p align=left
											style="color:#000000; font-family:微软雅黑;font-size:19px;font-weight:600">${requestScope.good.goodsname }</p>
										<span align=left
											style="color:#999; font-family:黑体;font-size:18px;margin-top:10px;">价格</span>
										   &nbsp;
											<span
											style="color:#ec2b2b;font-family:黑体;font-size:26px;font-weight:600">${requestScope.good.price }</span>

										<br> <br>
										
										<br>
										<div>
											<script type="text/javascript">
												$(function() {
                                                     alert("123");
												});
											</script>
									<form action="CarItem" method="post">
											<input type="hidden" value="${requestScope.good.id }"  name="id">
											<input type="hidden" value="${requestScope.good.price }"  name="price">
						                    <input type="hidden" value="${requestScope.good.image }"  name="image">
		                                    <input type="hidden" value="${requestScope.good.goodsname }"  name="goodsname">
		
		                    
											
										</div>
									
										<div>
											<br> <span align=left
												style="color:#999; font-family:黑体;font-size:16px">数量&nbsp;&nbsp;</span>
											<span
												style="padding:4px;border:#eeeeee solid 1px;color:#000000">
													<input type="text" style="width:40px" name="count" value="1"  onblur="check(${requestScope.good.count })" id="count">
											</span><span
												style="color:#999;font-family:黑体;font-size:15px">&nbsp;件&nbsp;&nbsp;</span>
									    <span style="color:#999;font-family:黑体;font-size:14px">库存：</span>${requestScope.good.count }<span
												style="color:#999;font-family:黑体;font-size:14px">&nbsp;件</span>
										</div>
										<div>
											<br> <br>
											
											<button type="submit" class="btn btn-warning btn-lg"
												style="color:#ffffff;font-family:微软雅黑;font-size:18px;width:180px;text-align:center" onclick="return car('${sessionScope.username }')">立即购买</button>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											
											
											
											
											<button  type="submit" class="btn btn-warning btn-lg"
												style="color:#ffffff;font-family:微软雅黑;font-size:18px;width:180px;text-align:centers"
												onclick="return car('${sessionScope.username }')"
												>
												<i class="icon-shopping-cart"></i>加入购物车
											</button>
										</form>
										</div>
										<!-- 中间部分      结束-->


									</div>
									<div class="col-md-2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
								</div>
								<br>
								<hr color:#eeeeee>
								<br>
								<div class="row">
									<div class="col-lg-2 col-lg-offset-1"
										style="color:#000000;font-size:18px;font-family:微软雅黑">宝贝描述
										&gt;</div>

									<div class="col-lg-9">
									${requestScope.good.comment }
								
									</div>
								</div>
								<br> <br>
							

									
								</div>
								</div>
						</div>
						<!-- /.col -->

					</div>
					<!-- /.row -->

				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->
			<!-- 下面蓝色部分 -->
			<br> <br>
		<div class="footer" style="float: none">
  
  </div>
		<!-- /.main-container-inner -->

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i>
		</a>
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


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
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />


<script src="js/jquery.min.js"></script>


<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />


<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>


<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="js/simpleCart.min.js">
	
</script>
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
				} else {
				             location.href="buycar.jsp"; 	
				}
			}
			
			
		</script>
		<div >
			<div >
				<a href="#" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> 二手跑车管理系统
				</small>
				</a>

			</div>


		
			<div class="header-left">

				<div class="cart box_1" >
					<a href="javascript:void(0)" onclick="car('${sessionScope.username }')">
						<h3>
							<img src="images/cart.jpg" alt="" />
						 
				   </a>
					<p>
					     <a>购物车</a>
					</p>
				</div>
			</div>
			<div class="navbar-header pull-right" role="navigation"
				style="margin-left:350px">
				<ul class="nav ace-nav">
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="assets/avatars/user.jpg" alt="Jason's Photo" /> <span
							class="user-info"> <small>欢迎光临,</small>
							<c:choose>
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
				
			</div>
			
		</div>
		
	</div>
	<div class="banner">
		<div class="container">
			<script src="js/responsiveslides.min.js"></script>

			<div id="top" class="callbacks_container">
				<ul class="rslides" id="slider">
					<li>
						<div >
							<img src="images/background.jpg"/>
	
							<p style="color:#000;font-weight:bolder">这个车最好看</p>
							<a href="index_ShowGoods">了解详情</a>
						</div>
					</li>
					
				</ul>
			</div>
		</div>
	</div>
	<!--content-->
	<div class="content">
		<div class="container">
			<div class="content-top">
				<h1>商品分类</h1>
				<div class="grid-in">
					<div class="col-md-4 grid-top">
						<a href="index_ShowGoods"  >
						<img class="img-responsive" src="images/Ferrari.jpg" alt="">
							<div class="b-wrapper"> 
							</div> 
							 </a>
						<p>
							<a href="index_ShowGoods" >Ferrari</a>
						</p>
					</div>
					<div class="col-md-4 grid-top">
						<a href="index_ShowGoods"  ><img
							class="img-responsive" src="images/Bentley.jpg" alt="">
							<div class="b-wrapper">
								 
								
								 
							</div> </a>
						<p>
							<a href="index_ShowGoods">Bentley</a>
						</p>
					</div>
					<div class="col-md-4 grid-top">
						<a href="index_ShowGoods"  ><img
							class="img-responsive" src="images/Lamborghini.jpg" alt="">
							<div class="b-wrapper">
								 
								
								 
							</div> </a>
						<p>
							<a href="index_ShowGoods">Lamborghini</a>
						</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="grid-in">
					<div class="col-md-4 grid-top">
						<a href="index_ShowGoods"  ><img
							class="img-responsive" src="images/Koenigsegg.jpg" alt="">
							<div class="b-wrapper">
								 
								
								 
							</div> </a>
						<p>
							<a href="index_ShowGoods">Koenigsegg</a>
						</p>
					</div>
					<div class="col-md-4 grid-top">
						<a href="index_ShowGoods" ><img
							class="img-responsive" src="images/McLaren.jpg" alt="">
							<div class="b-wrapper">
								 
							</div> </a>
						<p>
							<a href="index_ShowGoods">McLaren</a>
						</p>
					</div>
					<div class="col-md-4 grid-top">
						<a href="index_ShowGoods"  ><img
							class="img-responsive" src="images/Rolls-Royce.jpg" alt="">
							<div class="b-wrapper">
								 
								
								 
							</div> </a>
						<p>
							<a href="index_ShowGoods">Rolls-Royce</a>
						</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="grid-in">
					<div class="col-md-4 grid-top">
						<a href="index_ShowGoods"  ><img
							class="img-responsive" src="images/AstonMartin.jpg" alt="">
							<div class="b-wrapper">
								 
							</div> </a>
						<p>
							<a href="index_ShowGoods">AstonMartin</a>
						</p>
					</div>
					<div class="col-md-4 grid-top">
						<a href="index_ShowGoods"  ><img
							class="img-responsive" src="images/Maybach.jpg" alt="">
							<div class="b-wrapper">
								 
								
							</div> </a>
						<p>
							<a href="index_ShowGoods">Maybach</a>
						</p>
					</div>
					<div class="col-md-4 grid-top">
						<a href="index_ShowGoods"  ><img
							class="img-responsive" src="images/Bugatti.jpg" alt="">
							<div class="b-wrapper">
							</div> </a>
						<p>
							<a href="index_ShowGoods">Bugatti</a>
						</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!----->

		</div>
		<!---->

	</div>
	
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

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
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>
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
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="main-container-inner">
	

			<div class="sidebar" id="sidebar">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {
					}
				</script>

				
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
							管理 <small> <i class="icon-double-angle-right"></i>查询路线 
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							
							<h4>${requestScope.findError }</h4>
							<form action="FindLuxian" method="post">
									<div class="container">
									
									  <div class="input-group " >
								<input type="text" class="form-control search-query col-lg-4" placeholder="请输入查询起始地" name="qishi">
								<span class="input-group-btn">
									<button type="submit" class="btn btn-primary btn-sm">
																			查询
								<i class="icon-search icon-on-right bigger-110"></i>
							</button>
							</span>
																</div>
   								</div>

							</form>
                             <h2>${requestScope.findError }</h2>

							<br>
                             
							<table class="table table-striped" align="left"
								style="font-size:17px">
								<tr class="container-flow"
									style="font-size:16px;font-family:微软雅黑; text-align:center">
									
									<td class="col-lg-2">id</td>
									<td class="col-lg-2">起始地</td>
									<td class="col-lg-2">终止地</td>
									<td class="col-lg-2">状态</td>
								</tr>
								
								<tr class="container-flow"
									style="font-size:16px;font-family:微软雅黑; text-align:center">
									
									<td class="col-lg-2"> ${requestScope.Luxian.id }</td>
									<td class="col-lg-2"> ${requestScope.Luxian.qishi}</td>	
									<td class="col-lg-2"> ${requestScope.Luxian.zhongzhi}</td>	
								    <td class="col-lg-2"> ${requestScope.Luxian.status}</td>	
								    
								</tr>
									
							</table>

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

					<script type="text/javascript">
						jQuery(function($) {
							$('.easy-pie-chart.percentage')
									.each(
											function() {
												var $box = $(this).closest(
														'.infobox');
												var barColor = $(this).data(
														'color')
														|| (!$box
																.hasClass('infobox-dark') ? $box
																.css('color')
																: 'rgba(255,255,255,0.95)');
												var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)'
														: '#E2E2E2';
												var size = parseInt($(this)
														.data('size')) || 50;
												$(this)
														.easyPieChart(
																{
																	barColor : barColor,
																	trackColor : trackColor,
																	scaleColor : false,
																	lineCap : 'butt',
																	lineWidth : parseInt(size / 10),
																	animate : /msie\s*(8|7|6)/
																			.test(navigator.userAgent
																					.toLowerCase()) ? false
																			: 1000,
																	size : size
																});
											})

							$('.sparkline')
									.each(
											function() {
												var $box = $(this).closest(
														'.infobox');
												var barColor = !$box
														.hasClass('infobox-dark') ? $box
														.css('color')
														: '#FFF';
												$(this)
														.sparkline(
																'html',
																{
																	tagValuesAttribute : 'data-values',
																	type : 'bar',
																	barColor : barColor,
																	chartRangeMin : $(
																			this)
																			.data(
																					'min') || 0
																});
											});

							var placeholder = $('#piechart-placeholder').css({
								'width' : '90%',
								'min-height' : '150px'
							});
							var data = [ {
								label : "social networks",
								data : 38.7,
								color : "#68BC31"
							}, {
								label : "search engines",
								data : 24.5,
								color : "#2091CF"
							}, {
								label : "ad campaigns",
								data : 8.2,
								color : "#AF4E96"
							}, {
								label : "direct traffic",
								data : 18.6,
								color : "#DA5430"
							}, {
								label : "other",
								data : 10,
								color : "#FEE074"
							} ]
							function drawPieChart(placeholder, data, position) {
								$.plot(placeholder, data, {
									series : {
										pie : {
											show : true,
											tilt : 0.8,
											highlight : {
												opacity : 0.25
											},
											stroke : {
												color : '#fff',
												width : 2
											},
											startAngle : 2
										}
									},
									legend : {
										show : true,
										position : position || "ne",
										labelBoxBorderColor : null,
										margin : [ -30, 15 ]
									},
									grid : {
										hoverable : true,
										clickable : true
									}
								})
							}
							drawPieChart(placeholder, data);

							/**
							we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
							so that's not needed actually.
							 */
							placeholder.data('chart', data);
							placeholder.data('draw', drawPieChart);

							var $tooltip = $(
									"<div class='tooltip top in'><div class='tooltip-inner'></div></div>")
									.hide().appendTo('body');
							var previousPoint = null;

							placeholder.on('plothover', function(event, pos,
									item) {
								if (item) {
									if (previousPoint != item.seriesIndex) {
										previousPoint = item.seriesIndex;
										var tip = item.series['label'] + " : "
												+ item.series['percent'] + '%';
										$tooltip.show().children(0).text(tip);
									}
									$tooltip.css({
										top : pos.pageY + 10,
										left : pos.pageX + 10
									});
								} else {
									$tooltip.hide();
									previousPoint = null;
								}

							});

							var d1 = [];
							for (var i = 0; i < Math.PI * 2; i += 0.5) {
								d1.push([ i, Math.sin(i) ]);
							}

							var d2 = [];
							for (var i = 0; i < Math.PI * 2; i += 0.5) {
								d2.push([ i, Math.cos(i) ]);
							}

							var d3 = [];
							for (var i = 0; i < Math.PI * 2; i += 0.2) {
								d3.push([ i, Math.tan(i) ]);
							}

							var sales_charts = $('#sales-charts').css({
								'width' : '100%',
								'height' : '220px'
							});
							$.plot("#sales-charts", [ {
								label : "Domains",
								data : d1
							}, {
								label : "Hosting",
								data : d2
							}, {
								label : "Services",
								data : d3
							} ], {
								hoverable : true,
								shadowSize : 0,
								series : {
									lines : {
										show : true
									},
									points : {
										show : true
									}
								},
								xaxis : {
									tickLength : 0
								},
								yaxis : {
									ticks : 10,
									min : -2,
									max : 2,
									tickDecimals : 3
								},
								grid : {
									backgroundColor : {
										colors : [ "#fff", "#fff" ]
									},
									borderWidth : 1,
									borderColor : '#555'
								}
							});

							$('#recent-box [data-rel="tooltip"]').tooltip({
								placement : tooltip_placement
							});
							function tooltip_placement(context, source) {
								var $source = $(source);
								var $parent = $source.closest('.tab-content')
								var off1 = $parent.offset();
								var w1 = $parent.width();

								var off2 = $source.offset();
								var w2 = $source.width();

								if (parseInt(off2.left) < parseInt(off1.left)
										+ parseInt(w1 / 2))
									return 'right';
								return 'left';
							}

							$('.dialogs,.comments').slimScroll({
								height : '300px'
							});

							//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
							//so disable dragging when clicking on label
							var agent = navigator.userAgent.toLowerCase();
							if ("ontouchstart" in document
									&& /applewebkit/.test(agent)
									&& /android/.test(agent))
								$('#tasks').on(
										'touchstart',
										function(e) {
											var li = $(e.target).closest(
													'#tasks li');
											if (li.length == 0)
												return;
											var label = li.find('label.inline')
													.get(0);
											if (label == e.target
													|| $.contains(label,
															e.target))
												e.stopImmediatePropagation();
										});

							$('#tasks').sortable({
								opacity : 0.8,
								revert : true,
								forceHelperSize : true,
								placeholder : 'draggable-placeholder',
								forcePlaceholderSize : true,
								tolerance : 'pointer',
								stop : function(event, ui) {//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
									$(ui.item).css('z-index', 'auto');
								}
							});
							$('#tasks').disableSelection();
							$('#tasks input:checkbox')
									.removeAttr('checked')
									.on(
											'click',
											function() {
												if (this.checked)
													$(this).closest('li')
															.addClass(
																	'selected');
												else
													$(this).closest('li')
															.removeClass(
																	'selected');
											});

						})
					</script>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>index</title>
<%-- <%@include file="/WEB-INF/jsp/common/head.jsp"%> --%>
<%@include file="/WEB-INF/jsp/common/taglib.jsp"%>
<script type="text/javascript"
	src="<%=basePath%>resources/js/jquery-1.11.1.js"></script>
<script type="text/javascript"
	src="<%=basePath%>resources/js/jquery.bootstrap.newsbox.min.js"></script>
<script src="js/jquery.bootstrap.newsbox.min.js" type="text/javascript"></script>
<link rel="stylesheet" style="text/css"
	href="<%=basePath%>resources/bootstrap3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" style="text/css"
	href="<%=basePath%>resources/bootstrap3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" style="text/css"
	href="<%=basePath%>resources/css/default.css">
<link rel="stylesheet" style="text/css"
	href="<%=basePath%>resources/css/normalize.css">
<link rel="stylesheet" style="text/css"
	href="<%=basePath%>resources/css/site.css">
</head>
<body>
	<div class="container">
		<%-- <div class="row">
			<div class="col-md-8">
				<h2> ${person.name } <small><c:if test="${person.threatDegree == '0'}">一般人物</c:if>
					<c:if test="${person.threatDegree == '1'}">主要人物</c:if>
					<c:if test="${person.threatDegree == '2'}">重点任务</c:if>
					<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>已关注</button> </small>
				</h2>
				<hr>
				<ul id="myTab" class="nav nav-tabs">
					<li class="active"><a href="#overview" data-toggle="tab">总览</a></li>
					<li><a href="#person" data-toggle="tab">码址</a></li>
					<li><a href="#track" data-toggle="tab">活动轨迹</a></li>
					<li><a href="#mediaCoverage" data-toggle="tab">媒体报道</a></li>
					<li><a href="#personrel" data-toggle="tab">联系人</a></li>
					<li><a href="#event" data-toggle="tab">事件 </a></li>
					<li class="dropdown"><a href="#" id="myTabDrop1"
						class="dropdown-toggle" data-toggle="dropdown">媒体曝光度 <b
							class="caret"></b></a>
						<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
							<li><a href="#jmeter" tabindex="-1" data-toggle="tab">BBC</a></li>
							<li><a href="#ejb" tabindex="-1" data-toggle="tab">CNN</a></li>
						</ul></li>
				</ul>
				
			</div>
			<div class="col-md-4">
				
			</div>
		</div> --%>
		<h2>
			${person.name } <small><c:if test="${person.threatDegree == '0'}">一般人物</c:if>
				<c:if test="${person.threatDegree == '1'}">主要人物</c:if>
				<c:if test="${person.threatDegree == '2'}">重点任务</c:if>
				<button type="button" class="btn btn-default btn-sm">
					<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
					已关注
				</button> </small>
		</h2>
		<hr>
		<div class="row">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#overview" data-toggle="tab">总览</a></li>
				<li><a href="#person" data-toggle="tab">码址</a></li>
				<li><a href="#track" data-toggle="tab">活动轨迹</a></li>
				<li><a href="#mediaCoverage" data-toggle="tab">媒体报道</a></li>
				<li><a href="#personrel" data-toggle="tab">联系人</a></li>
				<li><a href="#event" data-toggle="tab">事件 </a></li>
				<li class="dropdown"><a href="#" id="myTabDrop1"
					class="dropdown-toggle" data-toggle="dropdown">媒体曝光度 <b
						class="caret"></b></a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
						<li><a href="#jmeter" tabindex="-1" data-toggle="tab">BBC</a></li>
						<li><a href="#ejb" tabindex="-1" data-toggle="tab">CNN</a></li>
					</ul></li>
			</ul>
			<div id="myTabContent" class="tab-content">
			<!-- overview begin -->
				<div class="tab-pane fade in active" id="overview">
					<div class="row">
						<div class="col-md-8">
							<br>
							<div class="form-horizontal">
								<div class="form-group ">
									<label class="col-sm-2 control-label">姓名：</label>
									<div class="col-sm-10">
										<p class="form-control-static">Mamnoon Hussain</p>
									</div>
								</div>
								<div class="form-group ">
									<label class="col-sm-2 control-label">身份：</label>
									<div class="col-sm-10">
										<p class="form-control-static">政治家</p>
									</div>
								</div>
								<div class="form-group ">
									<label class="col-sm-2 control-label">邮箱：</label>
									<div class="col-sm-10">
										<p class="form-control-static">Mamnoon Hussain@google.com</p>
									</div>
								</div>
								<div class="form-group ">
									<label class="col-sm-2 control-label">威胁程度：</label>
									<div class="col-sm-10">
										<a class="btn btn-danger disabled" role="button">危险</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<br> <img src="<%=basePath %>resources/images/avatar.jpg"
								alt="${person.name }" class="img-rounded img-responsive"
								width="50%"> <br>
							<address>
								<strong>Twitter, Inc.</strong><br> 1355 Market Street,
								Suite 900<br> San Francisco, CA 94103<br> <abbr
									title="Phone">P:</abbr> (123) 456-7890
							</address>
					<div class="panel panel-default">
						<div class="panel-heading">
							<span class="glyphicon glyphicon-list-alt"></span><b>News</b></div>
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-12">
									<ul class="demo1">
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/1.png" width="60" class="img-circle" /></td>
													<td><strong>5分钟前</strong>收到 <a href="#">邮箱联系人Hillary</a>发送的邮件......<small><a href="#">详细内容</a></small></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/2.png" width="60" class="img-circle" /></td>
													<td><strong>6分钟前</strong>接听了 <a href="#">手机联系人Hillary</a>打来的电话 ......<small><a href="#">详细内容</a></small></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/3.png" width="60" class="img-circle" /></td>
													<td><strong>8分钟前</strong>收到 <a href="#">Facebook好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/4.png" width="60" class="img-circle" /></td>
													<td><strong>10分钟前</strong>收到 <a href="#">Twitter好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/5.png" width="60" class="img-circle" /></td>
													<td><strong>15分钟前</strong>收到 <a href="#">Skype好友Hillary</a>的视频邀请 ......<small><a href="#">详细内容</a></small></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/6.png" width="60" class="img-circle" /></td>
													<td><strong>20分钟前</strong>收到 <a href="#">Facebook好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/7.png" width="60" class="img-circle" /></td>
													<td><strong>25分钟前</strong>接受了 <a href="#">BBC记者Hillary</a>的采访 ......<small><a href="#">详细内容</a></small></td>
												</tr>
											</table>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel-footer">
						</div>
					</div>
						</div>
					</div>
				</div>
				<!-- overview end -->
						<div class="tab-pane fade" id="person">
							<p></p>
							<form class="form-horizontal">
								<div class="row">
									<div class="form-group ">
										<label for="name" class="col-sm-2 control-label">姓名</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="name">
										</div>
									</div>
									<div class="form-group">
										<label for="chineseName" class="col-sm-2 control-label">中文名</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="chineseName">
										</div>
									</div>
									<div class="form-group">
										<label for="gender" class="col-sm-2 control-label">性别</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="gender">
										</div>
									</div>
									<div class="form-group">
										<label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
										<div class="col-sm-5">
											<input type="email" class="form-control" id="inputEmail3">
										</div>
									</div>
									<div class="form-group">
										<label for="telephone" class="col-sm-2 control-label">手机号</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="telephone">
										</div>
									</div>
									<div class="form-group">
										<label for="idcard" class="col-sm-2 control-label">身份证号</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="idcard">
										</div>
									</div>
									<div class="form-group">
										<label for="address" class="col-sm-2 control-label">通讯地址</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="address">
										</div>
									</div>
									<div class="form-group">
										<label for="birthday" class="col-sm-2 control-label">出生日期</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="birthday">
										</div>
									</div>
									<div class="form-group">
										<label for="birthplace" class="col-sm-2 control-label">出生地</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="birthplace">
										</div>
									</div>
									<div class="form-group">
										<label for="party" class="col-sm-2 control-label">所属党派</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="party">
										</div>
									</div>
									<div class="form-group">
										<label for="school" class="col-sm-2 control-label">毕业院校</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="school">
										</div>
									</div>
									<div class="form-group">
										<label for="marriage" class="col-sm-2 control-label">婚姻状况</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="marriage">
										</div>
									</div>
									<div class="form-group">
										<label for="faith" class="col-sm-2 control-label">宗教信仰</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="faith">
										</div>
									</div>
									<div class="form-group">
										<label for="gov" class="col-sm-2 control-label">政府部门？</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="gov">
										</div>
									</div>
									<div class="form-group">
										<label for="zhiku" class="col-sm-2 control-label">智库？</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="zhiku">
										</div>
									</div>
									<div class="form-group">
										<label for="media" class="col-sm-2 control-label">媒体？</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="media">
										</div>
									</div>
									<div class="form-group">
										<label for="extremeOrg" class="col-sm-2 control-label">极端组织？</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="extremeOrg">
										</div>
									</div>
									<div class="form-group">
										<label for="hostileForce" class="col-sm-2 control-label">敌对势力？</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="hostileForce">
										</div>
									</div>
									<div class="form-group">
										<label for="threatDegree" class="col-sm-2 control-label">威胁程度</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="threatDegree">
										</div>
									</div>
									<!-- <div class="form-group">
								<div class="col-sm-offset-2 col-sm-5">
									<div class="checkbox">
										<label> <input type="checkbox"> Remember me
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-5">
									<button type="submit" class="btn btn-default">Sign in</button>
								</div>
							</div> -->
								</div>

							</form>
						</div>
						<div class="tab-pane fade" id="track">
							<br>
							<div class="form-inline">
								<div class="form-group">
									<label for="name" class="control-label">日期</label> <input
										type="text" class="form-control" id="date">
								</div>
								<div class="form-group">
									<label for="source" class="control-label">出发地</label> <input
										type="text" class="form-control" id="source">
								</div>
								<div class="form-group">
									<label for="destination" class="control-label">目的地</label> <input
										type="text" class="form-control" id="destination">
								</div>
								<div class="form-group ">
									<label for="hotel" class="control-label">入住酒店</label> <select
										class="form-control" id="hotel">
										<c:forEach items="${list_hotel }" var="hotel">
											<option value="${hotel }">${hotel }</option>
										</c:forEach>
									</select>
								</div>
								<button type="submit" onclick="search();"
									class="btn btn-primary">查询</button>
							</div>
							<br>
							<div>
								<table id="contentTable"
									class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>日期</th>
											<th>航班</th>
											<th>出发地</th>
											<th>目的地</th>
											<th>入住酒店</th>
											<th>同行联系人id</th>
										</tr>
									</thead>
								</table>
							</div>
						</div>
						<div class="tab-pane fade" id="mediaCoverage"></div>
						<div class="tab-pane fade" id="personrel">联系人</div>
						<div class="tab-pane fade" id="event">事件</div>
						<div class="tab-pane fade" id="jmeter">
							<p>This is BBC</p>
						</div>
						<div class="tab-pane fade" id="ejb">
							<p>This is CNN</p>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
			$(function () {

		        $(".demo1").bootstrapNews({

		            newsPerPage: 5,

		            autoplay: true,

					pauseOnHover:true,

		            direction: 'up',

		            newsTickerInterval: 4000,

		            onToDo: function () {

		                //console.log(this);

		            }

		        });
			});
	function search(){
		var personid = ${person.id };
		var date = $("#track #date").val();
		var source = $("#track #source").val();
		var destination = $("#track #destination").val();
		var hotel = $("#track #hotel").val();
		//console.log(date+source+destination+hotel);
		$.ajax({
				url: "<%=basePath%>track/list",
						type : "POST",
						data : {
							personid : personid,
							date : date,
							source : source,
							destination : destination,
							hotel : hotel
						},
						success : function(result) {
							//console.log(result);
							$("#contentTable tbody").empty();
							$.each(result, function(i, n) {
								//console.log(result[i].personid);
								var rel;
								if (result[i].personid != personid) {
									rel = result[i].personid;
								} else {
									rel = "无";
								}
								var trHTML = "<tr>" + "<td>" + result[i].date
										+ "</td>" + "<td>" + result[i].flight
										+ "</td>" + "<td>" + result[i].source
										+ "</td>" + "<td>"
										+ result[i].destination + "</td>"
										+ "<td>" + result[i].hotel + "</td>"
										+ "<td>" + rel + "</td>" + "</tr>";
								$("#contentTable").append(trHTML);

							})

						}

					});
				}
			</script>
</body>
</html>
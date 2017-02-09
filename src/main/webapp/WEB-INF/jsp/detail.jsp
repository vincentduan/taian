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
		<div class="row">
			<div class="col-md-8">
				<h2> ${person.name } <small><c:if test="${person.threatDegree == '0'}">一般人物</c:if>
					<c:if test="${person.threatDegree == '1'}">主要人物</c:if>
					<c:if test="${person.threatDegree == '2'}">重点任务</c:if>
					<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>已关注</button> </small>
				</h2>
				<hr>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="javascript:void(0);" tab="person" >码址</a></li>
						<li><a href="javascript:void(0);" tab="track">活动轨迹</a></li>
						<li><a href="javascript:void(0);" tab="mediaCoverage">媒体报道</a></li>
						<li><a href="javascript:void(0);" tab="personrel">联系人</a></li>
						<li><a href="javascript:void(0);" tab="event">事件 </a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="person">
							<p></p>
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
	<div class="tab-pane fade" id="track">
		<div class="row">
			<div class="col-md-3">
				<div class="form-inline">
					<div class="form-group">
						<label for="name" class="control-label">日期</label> <input type="text" class="form-control" id="date">
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<label for="source" class="control-label">出发地</label> <input
					type="text" class="form-control" id="source">
			</div>
			<div class="col-md-3">
				<label for="destination" class="control-label">目的地</label> <input
					type="text" class="form-control" id="destination">
			</div>
			<div class="col-md-3">
				<button type="submit" onclick="search();"
					class="btn btn-primary">查询</button>
			</div>
		</div>
		<p></p>
		<%-- <div class="form-inline">
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
		</div> --%>
	</div>
	<div class="tab-pane fade" id="mediaCoverage">
		<p>媒体报道</p>
	</div>
	<div class="tab-pane fade" id="personrel">
		<p>联系人</p>
	</div>
	<div class="tab-pane fade" id="event">
		<p>事件</p>
	</div>
</div>
					
			</div>
			<div class="col-md-4">
				<br> <img src="<%=basePath %>resources/images/avatar.jpg" alt="${person.name }" class="img-rounded img-responsive" width="50%"> <br>
							<address>
								<strong>Twitter, Inc.</strong><br> 1355 Market Street, Suite 900<br> San Francisco, CA 94103<br> <abbr title="Phone">P:</abbr> (123) 456-7890
							</address>
					<div class="panel panel-default">
						<div class="panel-heading">
							<span class="glyphicon glyphicon-list-alt"></span><b>最近30分钟内发生的事件</b></div>
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-12">
									<ul class="demo1">
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/1.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>5分钟前</strong>收到 <a href="#">邮箱联系人Hillary</a>发送的邮件......<small><a href="#">详细内容</a></small></td> -->
													<td>Google邮箱共收到50封邮件.... <a href="#">详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/2.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>6分钟前</strong>接听了 <a href="#">手机联系人Hillary</a>打来的电话 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共有500次通话记录....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/3.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>8分钟内</strong>收到 <a href="#">Facebook好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共收到500条短信....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/4.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>10分钟前</strong>收到 <a href="#">Twitter好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共收到30次视频邀请....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/5.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>15分钟前</strong>收到 <a href="#">Skype好友Hillary</a>的视频邀请 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共收到30次视频邀请....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/6.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>20分钟前</strong>收到 <a href="#">Facebook好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共收到30次视频邀请....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/7.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>25分钟前</strong>接受了 <a href="#">BBC记者Hillary</a>的采访 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共接受过100次媒体采访....<a>详细信息</a></td>
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
		<hr>
	</div>
<script type="text/javascript">
$(function () {
$(".demo1").bootstrapNews({
		newsPerPage: 5,
		autoplay: true,
		pauseOnHover:true,
		direction: 'up',
		newsTickerInterval: 2000,
		onToDo: function () {
		}
	});
$("#myTab li a").click(function(){
	var name = $(this).attr("tab");
	$("#myTab li").removeClass("active");
	$(this).parent().attr("class", "active");
	console.log(name);
	$("#myTabContent").children().attr("class","tab-pane fade");
	$("#" + name).attr("class","tab-pane fade in active");
});

});
function showTab(){
	console.log($(this));
	/* $("#myTab li:eq(0)").removeClass("active");
	$("#myTab li:eq("+val+")").attr("class", "active");
	$("#ios").attr("class","tab-pane fade in active");
	$("#home").attr("class","tab-pane fade "); */
	$(":not(this)").removeClass("active");
	$(this).attr("class", "active");
	
} 
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
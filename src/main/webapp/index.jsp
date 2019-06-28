<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>收藏功能</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<script src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
<link href="${APP_PATH }/static/bootstrap-3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${APP_PATH }/static/bootstrap-3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<button type="button" class="btn btn-default" id="btn_collect">
			<span class="glyphicon glyphicon-star-empty" id="btn_collect_icon" aria-hidden="true"></span>收藏
		</button>
	</div>
</body>
<script type="text/javascript">
$("#btn_collect").click(function(){
	var classname = $("#btn_collect_icon").attr("class");
	$("#btn_collect_icon").removeClass("glyphicon-star-empty glyphicon-star");
	if(classname == "glyphicon glyphicon-star-empty" ){
		$("#btn_collect_icon").addClass("glyphicon glyphicon-star");
		alert("收藏成功");
	}else{
		$("#btn_collect_icon").addClass("glyphicon glyphicon-star-empty");
		alert("取消收藏");
	}
});
</script>
</html>
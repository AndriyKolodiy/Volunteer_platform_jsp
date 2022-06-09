<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

<title>На головну</title>
<%@include file="all_component/allcss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/soldier.png");
	width: 100%;
	height: 110vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body style="background-image: url('img/camouflage.png');">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-black p-4">
				<i class="fa fa-book" aria-hidden="true"></i> НЕЗЛАМНІ
			</h1>

		</div>

	</div>


	<%@include file="all_component/footer.jsp"%>

</body>
</html>
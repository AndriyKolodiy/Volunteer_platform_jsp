<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<title>Сторінка редагування профілю</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body style="background-image: url('img/camouflage.png');">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="continer-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>

							<h5>Edit Profile</h5>
						</div>


						<form action="update_profile" method="post">

							<input type="hidden" name="id" value="${userobj.id }">
							<div class="form-group">
								<label>Повне ім'я</label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name" value="${userobj.name }">
							</div>

							<div class="form-group">
								<label>Спеціальзація</label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" name="qua"
									value="${userobj.qualification }">
							</div>
							<div class="form-group">
								<label>Електронна пошта</label> <input type="email"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email" value="${userobj.email }">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Пароль</label> <input
									required="required" type="password" class="form-control"
									id="exampleInputPassword1" name="ps"
									value="${userobj.password }">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Оновити</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 50px;">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>
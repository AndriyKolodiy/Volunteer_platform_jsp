<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-expand-lg navbar-dark navbar-custom" style="background:linear-gradient(315deg, #eaf522 0%, #1b31f5 100%)">
	<a class="navbar-brand" href="index.jsp">НЕЗЛАМНІ</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">На головну
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="about.jsp">Про проект
					<span class="sr-only">(current)</span>
			</a></li>

			<c:if test="${userobj.name eq 'admin' }">
				<li class="nav-item"><a class="nav-link" href="add_job.jsp"><i
						class="fa fa-plus-circle"></i> Додати можливість</a></li>

				<li class="nav-item"><a class="nav-link" href="view_jobs.jsp">
						<i class="fas fa-eye"></i> Переглянути усі можливості</a></li>
			</c:if>

			<c:if test="${userobj.role eq 'user'  }">
				<li class="nav-item"><a class="nav-link" href="add_job.jsp"><i
						class="fa fa-plus-circle"></i> Додати можливість</a></li>

				<li class="nav-item"><a class="nav-link" href="user_view.jsp"><i
						class="fa fa-eye"></i> Переглянути усі можливості</a></li>
			</c:if>

		</ul>
		<form class="form-inline my-2 my-lg-0">
			<c:if test="${not empty userobj }">
				<a data-toggle="modal" data-target="#exampleModal"
					class="btn btn-light my-2 my-sm-0" type="submit"><i
					class="fas fa-user"></i> ${userobj.name }</a>

				<a href="logout?id=u" class="btn btn-light my-2 my-sm-0 ml-1"
					type="submit"><i class="fas fa-user-circle"></i> Вийти</a>
			</c:if>

			<c:if test="${ empty userobj }">
				<a href="login.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i
					class="fas fa-sign-in-alt"></i> Аутентифікуватись</a>

				<a href="register.jsp" class="btn btn-light my-2 my-sm-0 ml-1"
					type="submit"><i class="fas fa-user-circle"></i> Зареєструватись</a>

			</c:if>


		</form>
	</div>
</nav>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Профіль</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="card">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fas fa-user-circle fa-3x"></i>
						</div>
						<table class="table">

							<tbody>
								<tr>
									<th scope="row">Ім'я</th>
									<th>${userobj.name }</th>

								</tr>
								<tr>
									<th scope="row">Спеціалізація</th>
									<th>${userobj.qualification }</th>

								</tr>

								<tr>
									<th scope="row">Електронна пошта</th>
									<th>${userobj.email }</th>

								</tr>

							</tbody>
						</table>
					</div>
				</div>


			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Закрити</button>
				<a href="edit_profile.jsp" class="btn btn-primary">Редагувати</a>
			</div>
		</div>
	</div>
</div>

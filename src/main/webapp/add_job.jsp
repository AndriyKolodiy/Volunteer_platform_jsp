<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<title>Адмін: Додати вакансію</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body style="background-image: url('img/camouflage.png');">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>
						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${ succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>

						<h5>Add vacancies</h5>
					</div>
					<form action="addJob" method="post">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select " id="inlineFormCustomSelectPref">
									<option selected>Вибрати...</option>
									<option value="No location">Без локації(No location)</option>
									<option value="Lviv, Ukraine">Львів, Україна</option>
									<option value="Kyiv, Ukraine">Київ, Україна</option>
									<option value="Kharkiv, Ukraine">Харків, Україна</option>
									<option value="Mykolaiv, Ukraine">Миколаїв, Україна</option>
									<option value="Symu, Ukraine">Суми, Україна</option>
									<option value="Іvano-Frankivsk, Ukraine">Івано-Франківськ, Україна</option>
									<option value="Warsaw, Poland">Warsaw, Poland</option>
									<option value="Rzeszow, Poland">Rzeszow, Poland</option>
									<option value="Przemysl, Poland">Przemysl, Poland</option>
									<option value="Berlin, Germany">Berlin, Germany</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select class="custom-select "
									id="inlineFormCustomSelectPref" name="category">
									<option selected>Вибрати...</option>
									<option value="Online volunteering">Онлайн волонтерство(Online volunteering)</option>
									<option value="Humanitarian headquarters">Гуманітарні штаби(Humanitarian headquarters)</option>
									<option value="Blood donation">Донорство крові(Blood donation)</option>
									<option value="Assistance to refugees">Допомога переселенцям(Assistance to refugees)</option>
									<option value="Helping people with disabilities">Допомога людям з інвалідністю(Helping people with disabilities)</option>
									<option value="Helping children">Допомога дітям(Helping children)</option>
									<option value="Helping animals">Допомога тваринам(Helping animals)</option>
									<option value="Doctor's consultation">Консультація лікаря(Doctor's consultation)</option>
									<option value="Medicine">Ліки(Medicine)</option>
									<option value="Food and products">Їжа та продукти(Food and products)</option>
									<option value="Auto Volunteering">Автоволонтерство(Auto Volunteering)</option>
									<option value="Psychological help">Психологічна допомога(Psychological help)</option>
								</select>
							</div>

							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label>Опис</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>
						<button class="btn btn-success">Publish</button>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
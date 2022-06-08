<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<title>Користувач: Усі Вакансії</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">Усі Вакансії</h5>

				<c:if test="${not empty succMsg }">
					<h4 class="text-center text-danger">${succMsg }</h4>
					<c:remove var="succMsg" />
				</c:if>

				<div class="card">
					<div class="card-body">

						<form class="form-inline" action="more_view.jsp" method="get">
							<div class="form-group col-md-5 mt-1">
								<h5>Location</h5>
							</div>

							<div class="form-group col-md-4 mt-1">

								<h5>Category</h5>
							</div>


							<div class="form-group col-md-5">
								<select name="loc" class="custom-select "
									id="inlineFormCustomSelectPref">
									<option selected value="lo">Вибрати...</option>
									<option value="Львів, Україна">Львів, Україна</option>
									<option value="Київ, Україна">Київ, Україна</option>
									<option value="Харків, Україна">Харків, Україна</option>
									<option value="Івано-Франківськ, Україна">Івано-Франківськ, Україна</option>
									<option value="Warsaw, Poland">Warsaw, Poland</option>
									<option value="Rzeszow, Poland">Rzeszow, Poland</option>
									<option value="Przemysl, Poland">Przemysl, Poland</option>
									<option value="Berlin, Germany">Berlin, Germany</option>
								</select>
							</div>

							<div class="form-group col-md-5">
								<select class="custom-select " id="inlineFormCustomSelectPref"
									name="cat">
									<option value="ca" selected>Вибрати...</option>
									<option >IT</option>
									<option>Devloper</option>
									<option>Banking</option>
									<option>Engineer</option>
									<option value="Teacher">Teacher</option>
								</select>
							</div>
							<button class="btn btn-success">Підтвердити</button>
						</form>


					</div>
				</div>

				<%
				JobDAO dao = new JobDAO(DBConnect.getConn());
				List<Jobs> list = dao.getJobsByStatus();
				for (Jobs j : list) {
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>

						<h6><%=j.getTitle()%></h6>

						<%
						if (j.getDescription().length() > 0 && j.getDescription().length() < 120) {
						%>
						<p><%=j.getDescription()%>.
						</p>
						<%
						} else {
						%>
						<p><%=j.getDescription().substring(0, 120)%>...
						</p>
						<%
						}
						%>


						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Location: <%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Category: <%=j.getCategory()%>" readonly>
							</div>
						</div>
						<h6>
							Дата публікації:
							<%=j.getPdate().toString()%></h6>
						<div class=" text-center ">
							<a href="one_view.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-success text-white">Переглянути повну інформацію</a>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>

</body>
</html>
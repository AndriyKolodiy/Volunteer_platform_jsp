<%@page import="com.entity.Jobs"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Адмін: редагувати вакансії</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
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
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						JobDAO dao = new JobDAO(DBConnect.getConn());
						Jobs j = dao.getJobsById(id);
						%>
						<h5>Edit Jobs</h5>
					</div>
					<form action="update" method="post">
						<input type="hidden" name="id" value="<%=j.getId()%>">

						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								class="form-control" value="<%=j.getTitle()%>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select " id="inlineFormCustomSelectPref">
									<option value="<%=j.getLocation()%>" selected><%=j.getLocation()%></option>
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
							<div class="form-group col-md-4">
								<label>Category</label> <select class="custom-select "
									id="inlineFormCustomSelectPref" name="category">
									<option value="<%=j.getCategory()%>" selected><%=j.getCategory()%></option>
									<option value="IT">IT</option>
									<option value="Devloper">Devloper</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
									<%
									if ("Active".equals(j.getStatus())) {
									%>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									<%
									} else {
									%>
									<option value="Inactive">Inactive</option>
									<option value="Active">Active</option>
									<%
									}
									%>


								</select>
							</div>
						</div>

						<div class="form-group">
							<label>Enter Description</label>
							<textarea rows="6" cols="" name="desc" class="form-control"><%=j.getDescription()%></textarea>
						</div>
						<button class="btn btn-success">Update Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<jsp:include page="base.jsp" />
</head>
<body style="background-color:grey;">

	<div class="container mt-5">
		<div class="card">
			<h1 class="text-center mt-5">Change the Product Details</h1>

			<div class="card-body mt-5">

				<form action="${pageContext.request.contextPath}/handle-form">
					<div class="form-group">
						<label for="exampleFormControlInput1">Enter the ID :</label> <input
							type="text" class="form-control" id="exampleFormControlInput1"
							placeholder="Enter the ID " name="pid"
							value="${pr.pid }">
					</div>

					<div class="form-group">
						<label for="exampleFormControlInput1">Enter the Name :</label> <input
							type="text" class="form-control" id="exampleFormControlInput1"
							placeholder="" name="name" value="${pr.name}">
					</div>



					<div class="form-group">
						<label for="exampleFormControlTextarea1">Description of
							Product :</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" placeholder="Enter the Description" name="Description">${pr.description}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleFormControlInput1">Enter the Price :</label> <input
							type="text" class="form-control" id="exampleFormControlInput1"
							placeholder="Enter the price" name="price" value="${pr.price }">
					</div>
					<div class="container text-center">
						<button class="btn btn-outline-primary">Update</button>
						<a href="${pageContext.request.contextPath}/home" class="btn btn-primary">Back</a>
					</div>
				</form>
			</div>

		</div>

	</div>


</body>
</html>
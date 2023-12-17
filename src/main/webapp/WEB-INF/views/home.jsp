<%@page import="org.hibernate.Incubating"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>HOME PAGE</title>
</head>
<body style="background-color: grey;">

	<div class="container mt-3">
		<div class="card">

			<div class="card-body mt-5">


				<div class="row">
					<div class=" col-md-12">
						<h1 class="text-center mb-5">WLCOME TO PRODUCT APP</h1>

						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Product name</th>
									<th scope="col">Product Description</th>
									<th scope="col">Product price</th>
									<th scope="col">Action</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${products}" var="p">
									<tr>
										<th scope="row">${p.pid }</th>
										<td>${p.name }</td>
										<td>${p.description }</td>
										<td class="font-weight-bold">&#x20B9; ${p.price }</td>
										<td><a href="delete/${p.pid }"> <i
												class="fa-solid fa-trash"></i></a> <a href="update/${p.pid }">
												<i class="fa-solid fa-pen-to-square"></i>
										</a></td>


									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class="container text-center">

							<a href="addproduct" class="btn btn-outline-primary">Add
								product</a>
						</div>

					</div>
				</div>
			</div>


		</div>


	</div>







	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
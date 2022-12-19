<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body class="bg-info">

	<div class="container mt-3">

		<div class="row">
			<div
				class="card text-white bg-secondary px-5 py-5 mt-5 col-md-6 offset-md-3"
				style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">

				<h1 class="text-light text-center mb-3">Fill the product detail</h1>

				<!--  Add Product Form  -->
				<form action="handle-product" method="post">

					<div class="form-group">
						<label for="name">Product Name</label> <input name="name"
							type="text" class="form-control" id="name"
							aria-describedby="emailHelp"
							placeholder="Enter the product name here" required>
					</div>

					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea name="description" class="form-control" id="description"
							placeholder="Enter the product description" rows="5" required></textarea>
					</div>

					<div class="form-group">
						<label for="price">Product Price</label> <input name="price"
							type="text" class="form-control" id="price"
							aria-describedby="emailHelp" placeholder="Enter Product Price"
							required>
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-light">Back</a>
						<button type="submit" class="btn btn-outline-light">Add</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
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

				<h1 class="text-center mb-3">Update Product Details</h1>

				<!--  Notes Form  -->
				<form action="${pageContext.request.contextPath}/handle-product"
					method="post">

					<input type="hidden" value="${product.id}" name="id" />
					<div class="form-group">
						<label for="name">Product Name</label> <input name="name"
							type="text" class="form-control" id="name"
							aria-describedby="emailHelp"
							placeholder="Enter the product name here" value="${product.name}">
					</div>

					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea name="description" class="form-control" id="description"
							placeholder="Enter the product description" row="5"
							style="height: 150px;" required>${product.description}</textarea>
					</div>

					<div class="form-group">
						<label for="price">Product Price</label> <input name="price"
							type="text" class="form-control" id="price"
							aria-describedby="emailHelp" placeholder="Enter Product Price"
							value="${product.price}">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-light">Back</a>
						<button type="submit" class="btn btn-outline-light">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
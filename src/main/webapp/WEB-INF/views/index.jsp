<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body class="bg-info">
	<div class="container mt-3">

		<div class="row">
			<div class="col-md-12">
				<h1 class="text-white text-center mb-3">Welcome to Product App</h1>
				<table class="table table-hover">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
							<th scopr="col"><a href="add-product"
								class="btn btn-outline-light">Add Product</a></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products}" var="p">
							<tr>
								<th scope="row" class="font-weight-bold">TECHONLY${p.id }</th>
								<td>${p.name}</td>
								<td>${p.description}</td>
								<td class="font-weight-bold">&#x20B9; ${p.price}</td>
								<td><a href="delete/${p.id}"><i
										class="fa-solid fa-trash text-danger mr-5"
										style="font-size: 30px;"></i></a> <a href="update/${p.id}"><i
										class="fa-solid fa-pen-nib text-warning"
										style="font-size: 30px;"></i></a></td>
								<td></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>

	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<title>Quan Ly Phieu Chi</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<link href="<c:url value="/resources/css/responsive.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet">
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<link href="<c:url value="/resources/fontawesome/css/all.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.0.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/custom.js" />"></script>
</head>
<body class="main-layout inner_page">
	<!-- loader  -->
	<%--  <div class="loader_bg">
		<div class="loader">
			<img src="${contextPath}/resources/images/loading.gif" alt="#" />
		</div>
	</div>  --%>
	<!-- end loader -->
	<!-- header -->
	<div class="header">
		<div class="container-fluid">
			<div class="row d_flex">
				<div class=" col-md-2 col-sm-3 col logo_section">
					<div class="full">
						<div class="center-desk">
							<div class="logo">
								<a href="index.html"><img
									src="${contextPath}/resources/images/fpt-logo.png" alt="#" /></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-8 col-sm-12">
					<nav class="navigation navbar navbar-expand-md navbar-dark ">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarsExample04"
							aria-controls="navbarsExample04" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarsExample04">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item"><a class="nav-link"
									href="/generalTuLam1">Home</a></li>
								<li class="nav-item "><a class="nav-link"
									href="${contextPath}/PhieuThu/QuanLyPhieuThu">Quản Lý Phiếu
										Thu</a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${contextPath}/PhieuChi/QuanLyPhieuChi">Quản Lý Phiếu
										Chi</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${contextPath}/TongHop/QuanLyTongHop">Tổng Hợp Thu Chi</a></li>
							</ul>
						</div>
					</nav>
				</div>
				<div class="col-md-2">
					<ul class="email text_align_right">
						<li class="d_none"><a href="Javascript:void(0)"><i
								class="fa fa-user" aria-hidden="true"></i></a></li>
						<li class="d_none"><a href="Javascript:void(0)"><i
								class="fa fa-search" style="cursor: pointer;" aria-hidden="true"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<form:form class="form" id="myForm"
		action="${pageContext.request.contextPath}/PhieuChi/UpdatePhieuChi"
		method="post" modelAttribute="PhieuChi">
		<div class="class">
			<div class="row">
				<div class="col-3">
					<div class="form-group">
						<label for="">Chứng Từ Số Chi</label>
						<form:input type="text" path="chungTuSoChi" class="form-control"
							name="" id="" aria-describedby="helpId" placeholder=""></form:input>
						<small id="helpId" class="form-text text-muted"></small>
					</div>
				</div>
				<div class="col-2 mt-4">
					<div class="form-check mt-4">
						<form:checkbox path="laChiLuong" id="checkBoxLuong" />
						<label class="form-check-label" for="defaultCheck1"> Là
							Lương Chi </label>
					</div>
				</div>
				<div class="col-3">
					<div class="form-group">
						<label for="">Mã Nhân Viên</label>
						<form:input type="text" path="maNV" class="form-control" name=""
							id="" aria-describedby="helpId" placeholder=""></form:input>
						<small id="helpId" class="form-text text-muted"></small>
					</div>
				</div>
				<div class="col-2 mt-4">
					<div class="form-group d-flex" style="width: 120px;">
						<div class="form-group d-flex">
							<label for="" style="margin-top: 10px; margin-right: 2px;">Tháng
							</label>
							<form:select path="thang" class="form-control" name=""
								id="monthInput">
							</form:select>
						</div>
					</div>
				</div>
				<div class="col-2 mt-4">
					<div class="form-group d-flex" style="width: 120px;">
						<label for="" style="margin-right: 2px; margin-top: 10px;">Năm
						</label>
						<form:select path="nam" class="form-control" name=""
							id="yearInput">
						</form:select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-3 mt-4">
					<div class="form-group d-flex">
						<label for>Ngày Lập CT</label>
						<form:input type="date" path="ngayLapCT" class="form-control"
							aria-describedby="helpId"></form:input>
						<small id="helpId" class="form-text text-muted"> </small>
					</div>
				</div>
				<div class="col-3 mt-4">
					<div class="form-group d-flex">
						<label for="" style="margin-top: 10px; margin-right: 2px;">Nhà
							Cung Cấp </label>
						<form:select path="nhaCungCap" class="form-control" name=""
							id="nhaCungCapInput">
							<option value="Không Có" Selected>Không Có</option>
							<option value="VinaGame">Vinagame</option>
							<option value="VTC">VTC</option>
							<option value="FPT">FPT</option>
							<option value="Viettel">Viettel</option>
							<option></option>
						</form:select>
					</div>
				</div>
				<div class="col-3 mt-4  ">
					<div class="form-group d-flex">
						<label for="">Đại Diện</label>
						<form:input type="text" path="daiDien" class="form-control"
							name="" id="" aria-describedby="helpId" placeholder=""></form:input>
						<small id="helpId" class="form-text text-muted"></small>
					</div>
				</div>
				<div class="col-3 mt-4">
					<div class="form-group d-flex">
						<label for="">Địa Chỉ</label>
						<form:input type="text" path="diaChi" class="form-control" name=""
							id="" aria-describedby="helpId" placeholder=""></form:input>
						<small id="helpId" class="form-text text-muted"></small>
					</div>
				</div>
			</div>
			<hr style="background-color: red;">
			<div class="row">
				<div class="col-3">
					<div class="form-group d-flex">
						<label for="">Thành Tiền(Sau Thuế)</label>
						<form:input type="text" path="thanhTien" class="form-control"
							name="" id="" aria-describedby="helpId" placeholder=""></form:input>
						<small id="helpId" class="form-text text-muted"></small>
					</div>
				</div>
				<div class="col-3">
					<div class="form-group d-flex">
						<label for="">Đã Thu</label>
						<form:input type="text" path="tienDaChi" class="form-control"
							name="" id="" aria-describedby="helpId" placeholder=""></form:input>
						<small id="helpId" class="form-text text-muted"></small>
					</div>
				</div>
				<div class="col-3">
					<div class="form-group d-flex">
						<label for="">Còn Nợ</label>
						<form:input type="text" path="tienConNo" class="form-control"
							name="" id="" aria-describedby="helpId" placeholder=""></form:input>
						<small id="helpId" class="form-text text-muted"></small>
					</div>
				</div>
				<div class="col-3">
					<div class="form-group d-flex">
						<label for="">Ghi Chú</label>
						<form:input type="text" path="ghiChu" class="form-control" name=""
							id="" aria-describedby="helpId" placeholder=""></form:input>
						<small id="helpId" class="form-text text-muted"></small>
					</div>
				</div>
			</div>

			<hr style="background-color: red;">
		</div>
		<div class="row">
			<div class="col-4 d-flex">
				<p>Tìm kiếm theo số chứng từ</p>
				<div class="form-group ml-2 ">
					<input type="search" name="" id=""
						style="border-radius: 50px; border: 2px solid black;"
						placeholder="Search">
					<button type="button" class="btn ">
						<i class="fa fa-search" aria-hidden="true"></i>
					</button>
				</div>
			</div>
			<div class="col-8  " style="padding-left: 500px;">
				<form:button value="list" type="" class="btn btn-primary"
					id="submitBtnn" disabled="true">Them Moi</form:button>
				<!--             <button type="submit" class="btn btn-primary ">Them Moi</button>
 -->
				<button  id="updateBtnn" type="submit" class="btn btn-primary">Cập nhật</button>
				<button type="button" class="btn btn-primary">Xuất</button>
				<a href="${contextPath}" class="btn btn-primary">Đóng</a>
			</div>
		</div>
	</form:form>
	<table class="table table-striped table-danger">
		<thead>
			<tr>
				<th>Số CTC</th>
				<th>Mã Nhân Viên</th>
				<th>Ngày lập CT</th>
				<th>Nhà Cung Cấp</th>
				<th>Đại Diện</th>
				<th>Địa Chỉ</th>
				<th>Thành Tiền</th>
				<th>Đã Chi</th>
				<th>Còn Nợ</th>
				<th>Ghi Chú</th>
				<th>Là Lương Chi</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${PhieuChis}" varStatus="status">
				<tr>
					<td>${c.chungTuSoChi}</td>
					<td>${c.maNV}</td>
					<td>${c.ngayLapCT}</td>
					<td>${c.nhaCungCap}</td>
					<td>${c.daiDien}</td>
					<td>${c.diaChi}</td>
					<td>${c.thanhTien}</td>
					<td>${c.tienDaChi}</td>
					<td>${c.tienConNo}</td>
					<td>${c.ghiChu}</td>
					<td>${c.laChiLuong}</td>
					<td> <a
						href="${pageContext.request.contextPath}/PhieuChi/UpdateChi/${c.chungTuSoChi}"><i
							class="fa-solid fa-pen"></i></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!--  footer -->


	<!-- end footer -->
	<!-- Javascript files-->
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery-3.0.0.min.js" />"></script>
	<script src="<c:url value="/resources/js/custom.js" />"></script>
	<script>
		addYear()
		function addYear() {
			// $("#yearInput").html("")
			for (let index = 1900; index <= 2023; index++) {
				$("#yearInput").append("<option>" + index + "</option>")
			}
		}
		addMonth()
		function addMonth() {
			// $("#monthInput").html("")
			for (let index = 1; index <= 12; index++) {
				$("#monthInput").append("<option>" + index + "</option>")
			}
		}
/* 		$(document).ready(function(){
			$("#submitBtnn").prop('disabled',${statusSubmit})
			$("#updateBtnn").prop('disabled',${statusUpdate})
		}) */
	</script>
</body>
<footer>
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p>
						© 2023 All Rights Reserved. Design by <a href="index.html"><img
							src="${contextPath}/resources/images/fpt-logo.png" alt="#" /></a>
					</p>
				</div>
			</div>
		</div>
	</div>
</footer>
</html>
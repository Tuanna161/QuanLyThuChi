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
<title>Quan Ly Phieu Thu</title>
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
<style>
.error-input {
	border: 1px solid red !important;
}

tr:hover td {
	background-color: #f9f9f9;
	transition: background-color 0.3s ease;
}
</style>
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
								<li class="nav-item active"><a class="nav-link"
									href="${contextPath}/PhieuThu/QuanLyPhieuThu">Quản Lý Phiếu
										Thu</a></li>
								<li class="nav-item "><a class="nav-link"
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
	<form:form class="form" id="myForm" onsubmit="return validateForm()"
		action="${pageContext.request.contextPath}/PhieuThu/UpdatePhieuThu"
				method="post" modelAttribute="PhieuThu">
		<div class="footer">
			<div class="container">
				<div class="row ">
					<div class="col-md-12">
						<div class="row border_left">
							<div class="col-md-12">
								<div class="infoma">
									<div class="row">
										<div class="col-md-3">
											<div class="form-group">
												<label for>Chứng Từ Sổ</label>
												<form:input type="text" path="chungTuSoThu"
													class="form-control" aria-describedby="helpId" id="chungtuso" oninput="validateChungTuSo()"></form:input>
												<div id="chungTuError" class="text-danger"></div>
											</div>
										</div>
										<div class="col-4">
											<div class="form-group">
												<label for>Ngày Lập CT</label>
												<form:input type="date" path="ngayLapCT"
													class="form-control" aria-describedby="helpId" id="ngaylapct" oninput="validateNgayLap()"></form:input>
												<div id="ngayLapError" class="text-danger"></div>
											</div>
										</div>
										<div class="col-5 d-flex">

											<div class="col-4">
												<div class="form-check mt-4">
													<form:checkbox path="tuHS" id="checkBoxHS" />
													<label class="form-check-label" for="defaultCheck1">
														Từ học sinh </label> 
			
												</div>
											</div>
											<div class="col-4" style="margin-top: 25px">
												<div class="form-group d-flex">
													<label for="" style="margin-top: 10px; margin-right: 2px;">Tháng
													</label>
													<form:select path="thang" class="form-control" name=""
														id="monthInput">
													</form:select>
												</div>
											</div>
											<div class="col-4" style="margin-top: 25px">
												<div class="form-group d-flex">
													<label for="" style="margin-right: 2px; margin-top: 10px;">Năm
													</label>
													<form:select path="nam" class="form-control" name=""
														id="yearInput">
													</form:select>
												</div>
											</div>

										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<hr style="background-color: red;">
				<div class="row">
					<div class="col-3">
						<div class="form-group">
							<label for="">Mã Khách Hàng</label>
							<form:input type="text" path="maKH" class="form-control" name=""
								id="makhachhang" aria-describedby="helpId" placeholder="" oninput="validateMaKH()"></form:input>
							<div id="khachHangError" class="text-danger" ></div>
						</div>
					</div>
					<div class="col-4">
						<div class="form-group">
							<label for="">Họ và Tên KH</label>
							<form:input type="text" path="tenKH" class="form-control" name=""
								id="hovatenkh" aria-describedby="helpId" placeholder="" oninput="validateTenKH()"></form:input>
							<div id="hoTenError" class="text-danger"></div>
						</div>
					</div>
					<div class="col-5">
						<div class="form-group">
							<label for="">Địa Chỉ</label>
							<form:input type="text" path="diaChi" class="form-control"
								name="" id="diachi" aria-describedby="helpId" placeholder="" oninput="validateDiaChi()"></form:input>
							<div id="diaChiError" class="text-danger"></div>
						</div>
					</div>
				</div>
				<hr style="background-color: red;">
				<div class="row">
					<div class="col-8">
						<div class="form-group">
							<label for="">Nội dung phiếu thu</label>
							<form:input type="text" path="noiDungPhieuThu"
								class="form-control" name="" id="noidungphieuthu" aria-describedby="helpId"
								placeholder="" oninput="validateNoiDung()"></form:input>
							<div id="noiDungError" class="text-danger"></div>
						</div>
					</div>
				</div>
				<hr style="background-color: red;">
				<div class="row">
					<div class="col-3 ">
						<div class="form-group d-flex">
							<label for="">Thành Tiền(Sau Thuế)</label>
							<form:input type="text" path="thanhTienSauThue"
								class="form-control" name="" id="thanhtien" aria-describedby="helpId"
								placeholder="" oninput="validateThanhTien();calculateConNo();"></form:input>
							<div id="thanhTienError" class="text-danger"></div>
						</div>
					</div>
					<div class="col-3">
						<div class="form-group d-flex">
							<label for="">Đã Thu</label>
							<form:input type="text" path="soTienDaThu" class="form-control"
								name="" id="dathu" aria-describedby="helpId" placeholder="" oninput="validateDaThu();calculateConNo();"></form:input>
							<div id="daThuError" class="text-danger"></div>
						</div>
					</div>
					<div class="col-3">
						<div class="form-group d-flex">
							<label for="">Còn Nợ</label> <input type="text"
								class="form-control" name="" id="conno"
								aria-describedby="helpId" placeholder="ReadOnly" disabled>
							<div id="conNoError" class="text-danger"></div>
						</div>
					</div>
					<div class="col-3">
						<div class="form-group d-flex">
							<label for="">Ghi Chú</label>
							<form:input type="text" path="ghiChu" class="form-control"
								name="" id="ghichu" aria-describedby="helpId" placeholder="" oninput="validateGhiChu()"></form:input>
							<div id="ghiChuError" class="text-danger"></div>
						</div>
					</div>
				</div>
			</div>
			<hr style="background-color: red;">
		</div>
		<div class="row">
			
			<div class="col-12  " style="padding-left: 1127px;">
				<button disabled value="list"  class="btn btn-primary"
					id="themmoi">Them Moi</button>
				<!--             <button type="submit" class="btn btn-primary ">Them Moi</button>
 -->
				<form:button id="updateBtn" type="submit" class="btn btn-primary">Cập nhật</form:button>
				<button type="button" class="btn btn-primary" id="xuatBtn">Xuất</button>
				<a href="${contextPath}" class="btn btn-primary">Đóng</a>
			</div>
		</div>
	</form:form>
	<table class="table table-striped table-danger">
		<thead>
			<tr>
				<th>Số CT</th>
				<th>Ngày lập CT</th>
				<th>Mã Khách Hàng</th>
				<th>Tên Người Nộp</th>
				<th>Địa Chỉ</th>
				<th>Nội Dung Phiếu Thu</th>
				<th>Thành Tiền</th>
				<th>Đã Thu</th>
				<th>Còn Nợ</th>
				<th>Ghi Chú</th>
				<th>Tu HS </th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${PhieuThus}" varStatus="status">
				<tr>
					<td>${c.chungTuSoThu}</td>
					<td>${c.ngayLapCT}</td>
					<td>${c.maKH}</td>
					<td>${c.tenKH}</td>
					<td>${c.diaChi}</td>
					<td>${c.noiDungPhieuThu}</td>
					<td>${c.thanhTienSauThue}</td>
					<td>${c.soTienDaThu}</td>
					<td>${c.soTienConNo}</td>
					<td>${c.ghiChu}</td>
					<td>${c.tuHS}</td>
								<td><a
							href="${pageContext.request.contextPath}/PhieuThu/UpdateThu/${c.chungTuSoThu}"><i
								class="fa-solid fa-pen"></i></a>
								</td>
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
	/* 	$(document).ready(function(){
			$("#submitBtn").prop('disabled',${statusSubmit})
			$("#updateBtn").prop('disabled',${statusupdate})

		})  */
		var xuatBtn = document.getElementById("xuatBtn");
		xuatBtn.addEventListener("click", function() {
			alert('Chức Năng Này Dùng Để In Ra Giấy')
		});
		function validateForm() {
			var chungTuSo = document.getElementById('chungtuso').value;
			var ngayLap = document.getElementById('ngaylapct').value;
			var maKH = document.getElementById('makhachhang').value;
			var hoTen = document.getElementById('hovatenkh').value;
			var diaChi = document.getElementById('diachi').value;
			var noiDung = document.getElementById('noidungphieuthu').value;
			var thanhTien = document.getElementById('thanhtien').value;

			var tienDaThu = document.getElementById('dathu').value;
			var ghiChu = document.getElementById('ghichu').value;

			// Check maChungTu	
			var regexMaCT = /^[a-zA-Z0-9]+$/;

			if (chungTuSo.trim() !== '' && chungTuSo.length <= 10
					&& regexMaCT.test(chungTuSo)) {
				document.getElementById('chungTuError').textContent = '';
				document.getElementById('chungtuso').classList
						.remove('error-input');
			} else {
				document.getElementById('chungTuError').textContent = 'Ma Chung Tu Khong Hop Le.';
				document.getElementById('chungtuso').classList
						.add('error-input');
			}

			// Check Ngay hien tai
			var currentDate = new Date();
			var ngayChon = new Date(ngayLap);
			if (ngayLap.trim() !== '' && ngayChon < currentDate) {
				document.getElementById('ngayLapError').textContent = '';
				document.getElementById('ngaylapct').classList
						.remove('error-input');
			} else {
				document.getElementById('ngayLapError').textContent = 'Ngày Lập Không Hợp Lệ';
				document.getElementById('ngaylapct').classList
						.remove('error-input');
			}
			//Check Ma Khach Hang
			var regexMaKH = /^[a-zA-Z0-9]+$/;
			if (maKH.trim() !== '' && maKH.length <= 10
					&& regexMaKH.test(maKH)) {
				document.getElementById('khachHangError').textContent = '';
				document.getElementById('makhachhang').classList
						.remove('error-input');
			} else {
				document.getElementById('khachHangError').textContent = 'Ma Khach Hang Khong Hop Le.';
				document.getElementById('makhachhang').classList
						.add('error-input');
			}
			//Check Ten KH
			var regexTenKH = /^[a-zA-Z\s]+$/;
			if (hoTen.trim() !== '' && hoTen.length <= 50
					&& regexTenKH.test(hoTen)) {
				document.getElementById('hoTenError').textContent = '';
				document.getElementById('hovatenkh').classList
						.remove('error-input');

			} else {
				document.getElementById('hoTenError').textContent = 'Ten Khach Hang Khong Hop Le.';
				document.getElementById('hovatenkh').classList
						.add('error-input');
			}
			//Check Dia Chi
			var regexDiaChi = /^[a-zA-Z0-9\s]+$/;
			if (diaChi.trim() !== '' && diaChi.length <= 50
					&& regexDiaChi.test(diaChi)) {
				document.getElementById('diaChiError').textContent = '';
				document.getElementById('diachi').classList
						.remove('error-input');
			} else {
				document.getElementById('diaChiError').textContent = 'Dia Chi Khong Hop Le.';
				document.getElementById('diachi').classList
						.add('error-input');
			}
			//Check Noi Dung Phieu Thu
			var regexNoiDung = /^[a-zA-Z0-9\s]+$/;
			if (noiDung.trim() !== '' && noiDung.length <= 50
					&& regexNoiDung.test(noiDung)) {
				document.getElementById('noiDungError').textContent = '';
				document.getElementById('noidungphieuthu').classList
						.remove('error-input');
			} else {
				document.getElementById('noiDungError').textContent = 'Noi Dung Khong Hop Le.';
				document.getElementById('noidungphieuthu').classList
						.add('error-input');
			}
			// Check Ghi Chu
			var regexGhiChu = /^[a-zA-Z0-9\s]+$/;
			if (ghiChu.trim() !== '' && ghiChu.length <= 50
					&& regexNoiDung.test(ghiChu)) {
				document.getElementById('ghiChuError').textContent = '';
				document.getElementById('ghichu').classList
						.remove('error-input');
			} else {
				document.getElementById('ghiChuError').textContent = 'Noi Dung Khong Hop Le.';
				document.getElementById('ghichu').classList
						.add('error-input');
			}
			//Check Thanh Tien
			var regexThanhTien = /^(0|[1-9][0-9]*)$/;
			if (regexThanhTien.test(thanhTien)) {
				document.getElementById('thanhTienError').textContent = '';
				document.getElementById('thanhtien').classList
						.remove('error-input');
			} else {
				document.getElementById('thanhTienError').textContent = 'Thanh Tien Khong Hop Le.';
				document.getElementById('thanhtien').classList
						.add('error-input');
			}
			//Check Tien Da Thu
			var regexTienDaThu = /^(0|[1-9][0-9]*)$/;
			if (regexTienDaThu.test(tienDaThu)) {
				document.getElementById('daThuError').textContent = '';
				document.getElementById('dathu').classList
						.remove('error-input');
			} else {
				document.getElementById('daThuError').textContent = 'Tien Thu Khong Hop Le.';
				document.getElementById('dathu').classList
						.add('error-input');
			}

			if (chungTuSo.trim() !== '' && chungTuSo.length <= 10
					&& regexMaCT.test(chungTuSo) && ngayLap.trim() !== ''
					&& ngayChon < currentDate && maKH.trim() !== ''
					&& maKH.length <= 10 && regexMaKH.test(maKH)
					&& hoTen.trim() !== '' && hoTen.length <= 50
					&& regexTenKH.test(hoTen) && diaChi.trim() !== ''
					&& diaChi.length <= 50 && regexDiaChi.test(diaChi)
					&& noiDung.trim() !== '' && noiDung.length <= 50
					&& regexNoiDung.test(noiDung)
					&& regexThanhTien.test(thanhTien)
					&& regexTienDaThu.test(tienDaThu)
					&& ghiChu.trim() !== '' && ghiChu.length <= 50
					&& regexNoiDung.test(ghiChu)) {

				return true;
			} else {
				return false;
			}
		}
		function validateChungTuSo() {
			var status = true;
			var chungTuSo = document.getElementById("chungtuso").value;
			if (chungTuSo.trim() === "") {
				$('#chungTuError').text("Khong duoc de trong")
				document.getElementById('chungtuso').classList
						.add('error-input');
				status = false;
			} else if (chungTuSo.length > 10) {
				$('#chungTuError').text("Vui Long Nhap Duoi 10 ky tu")
				document.getElementById('chungtuso').classList
						.add('error-input');
				status = false;
			} else if (!/^[a-zA-Z0-9]+$/.test(chungTuSo)) {
				$('#chungTuError').text("Vui Long Nhap Dung Dinh Dang")
				document.getElementById('chungtuso').classList
						.add('error-input');
				status = false;
			} else {
				$('#chungTuError').text("");
				document.getElementById('chungtuso').classList
						.remove('error-input');
			}
			return status;
		}

		function validateNgayLap() {
			var status = true;
			var ngayLap = document.getElementById("ngaylapct").value;
			var currentDate = new Date();
			var ngayChon = new Date(ngayLap);
			if (ngayLap.trim() === "") {
				$('#ngayLapError').text("Khong duoc de trong")
				document.getElementById('ngaylapct').classList
						.add('error-input');
				status = false;
			} else if (ngayChon > currentDate) {
				$('#ngayLapError').text(
						"Vui Lòng Chọn Ngày Nhỏ Hơn Ngày Hiện Tại")
				document.getElementById('ngaylapct').classList
						.add('error-input');
				status = false;
			} else {
				$('#ngayLapError').text("");
				document.getElementById('ngaylapct').classList
						.remove('error-input');
			}
			return status;
		}

		function validateMaKH() {
			var status = true;
			var maKH = document.getElementById("makhachhang").value;
			if (maKH.trim() === "") {
				$('#khachHangError').text(
						"Mã Khách Hàng Không được để trống")
				document.getElementById('makhachhang').classList
						.add('error-input');
				status = false;
			} else if (maKH.length > 10) {
				$('#khachHangError').text("Vui Long Nhap Duoi 10 ky tu")
				document.getElementById('makhachhang').classList
						.add('error-input');
				status = false;
			} else if (!/^[a-zA-Z0-9]+$/.test(maKH)) {
				$('#khachHangError').text("Vui Long Nhap Dung Dinh Dang")
				document.getElementById('makhachhang').classList
						.add('error-input');
				status = false;
			} else {
				$('#khachHangError').text("");
				document.getElementById('makhachhang').classList
						.remove('error-input');
			}
			return status;
		}

		function validateTenKH() {
			var status = true;
			var tenKH = document.getElementById("hovatenkh").value;
			if (tenKH.trim() === "") {
				$('#hoTenError').text(" Không được để trống")
				document.getElementById('hovatenkh').classList
						.add('error-input');
				status = false;
			} else if (tenKH.length > 50) {
				$('#hoTenError').text("Vui Long Nhap Duoi 50 ky tu")
				document.getElementById('hovatenkh').classList
						.add('error-input');
				status = false;
			} else if (!/^[a-zA-Z\s]+$/.test(tenKH)) {
				$('#hoTenError').text("Vui Long Nhap Dung Dinh Dang ")
				document.getElementById('hovatenkh').classList
						.add('error-input');
				status = false;
			} else {
				$('#hoTenError').text("");
				document.getElementById('hovatenkh').classList
						.remove('error-input');
			}
			return status;
		}

		function validateDiaChi() {
			var status = true;
			var diaChi = document.getElementById("diachi").value;
			if (diaChi.trim() === "") {
				$('#diaChiError').text(" Không được để trống")
				document.getElementById('diachi').classList
						.add('error-input');
				status = false;
			} else if (diaChi.length > 50) {
				$('#diaChiError').text("Vui Long Nhap Duoi 50 ky tu")
				document.getElementById('diachi').classList
						.add('error-input');
				status = false;
			} else if (!/^[a-zA-Z0-9\s]+$/.test(diaChi)) {
				$('#diaChiError').text("Vui Long Nhap Dung Dinh Dang ")
				document.getElementById('diachi').classList
						.add('error-input');
				status = false;
			} else {
				$('#diaChiError').text("");
				document.getElementById('diachi').classList
						.remove('error-input');
			}
			return status;
		}

		function validateNoiDung() {
			var status = true;
			var noiDung = document.getElementById("noidungphieuthu").value;
			if (noiDung.trim() === "") {
				$('#noiDungError').text(" Không được để trống")
				document.getElementById('noidungphieuthu').classList
						.add('error-input');
				status = false;
			} else if (noiDung.length > 50) {
				$('#noiDungError').text("Vui Long Nhap Duoi 50 ky tu")
				document.getElementById('noidungphieuthu').classList
						.add('error-input');
				status = false;
			} else if (!/^[a-zA-Z0-9\s]+$/.test(noiDung)) {
				$('#noiDungError').text("Vui Long Nhap Dung Dinh Dang ")
				document.getElementById('noidungphieuthu').classList
						.add('error-input');
				status = false;
			} else {
				$('#noiDungError').text("");
				document.getElementById('noidungphieuthu').classList
						.remove('error-input');
			}
			return status;
		}

		function validateThanhTien() {
			var status = true;
			var thanhTien = document.getElementById("thanhtien").value;
			if (thanhTien.trim() === "") {
				$('#thanhTienError').text(" Không được để trống")
				document.getElementById('thanhtien').classList
						.add('error-input');
				status = false;
			} else if (thanhTien.length > 50) {
				$('#thanhTienError').text("Vui Long Nhap Duoi 50 ky tu")
				document.getElementById('thanhtien').classList
						.add('error-input');
				status = false;
			} else if (!/^(0|[1-9][0-9]*)$/.test(thanhTien)) {
				$('#thanhTienError').text("Vui Long Nhap Dung Dinh Dang ")
				document.getElementById('thanhtien').classList
						.add('error-input');
				status = false;
			} else {
				$('#thanhTienError').text("");
				document.getElementById('thanhtien').classList
						.remove('error-input');
			}
			return status;
		}

		function validateDaThu() {
			var status = true;
			var tienThu = document.getElementById("dathu").value;
			if (tienThu.trim() === "") {
				$('#daThuError').text(" Không được để trống")
				document.getElementById('dathu').classList
						.add('error-input');
				status = false;
			} else if (tienThu.length > 50) {
				$('#daThuError').text("Vui Long Nhap Duoi 50 ky tu")
				document.getElementById('dathu').classList
						.add('error-input');
				status = false;
			} else if (!/^(0|[1-9][0-9]*)$/.test(tienThu)) {
				$('#daThuError').text("Vui Long Nhap Dung Dinh Dang ")
				document.getElementById('dathu').classList
						.add('error-input');
				status = false;
			} else {
				$('#daThuError').text("");
				document.getElementById('dathu').classList
						.remove('error-input');
			}
			return status;
		}

		function validateConNo() {
			var status = true;
			var conNo = document.getElementById("conno").value;
			if (conNo.trim() === "") {
				$('#conNoError').text(" Không được để trống")
				document.getElementById('conno').classList
						.add('error-input');
				status = false;
			} else if (conNo.length > 50) {
				$('#conNoError').text("Vui Long Nhap Duoi 50 ky tu")
				document.getElementById('conno').classList
						.add('error-input');
				status = false;
			} else if (!/^(0|[1-9][0-9]*)$/.test(conNo)) {
				$('#conNoError').text("Vui Long Nhap Dung Dinh Dang ")
				document.getElementById('conno').classList
						.add('error-input');
				status = false;
			} else {
				$('#conNoError').text("");
				document.getElementById('conno').classList
						.remove('error-input');
			}
			return status;
		}

		function validateGhiChu() {
			var status = true;
			var ghiChu = document.getElementById("ghichu").value;
			if (ghiChu.trim() === "") {
				$('#ghiChuError').text(" Không được để trống")
				document.getElementById('ghichu').classList
						.add('error-input');
				status = false;
			} else if (ghiChu.length > 50) {
				$('#ghiChuError').text("Vui Long Nhap Duoi 50 ky tu")
				document.getElementById('ghichu').classList
						.add('error-input');
				status = false;
			} else if (!/^[a-zA-Z0-9\s]+$/.test(ghiChu)) {
				$('#ghiChuError').text("Vui Long Nhap Dung Dinh Dang ")
				document.getElementById('ghichu').classList
						.add('error-input');
				status = false;
			} else {
				$('#ghiChuError').text("");
				document.getElementById('ghichu').classList
						.remove('error-input');
			}
			return status;
		}

		function calculateConNo() {
			var thanhTien = parseInt(document.getElementById("thanhtien").value);
			var daThu = parseInt(document.getElementById("dathu").value);

			var conNo = thanhTien - daThu;

			document.getElementById("conno").value = conNo;
		}
	</script>
	<!-- 	<script>
/* 		AOS.init();
 */	</script> -->
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<style type="text/css">
.error-input {
	border: 1px solid red !important;
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
									href="${contextPath}">Home</a></li>
								<li class="nav-item "><a class="nav-link"
									href="${contextPath}/PhieuThu/QuanLyPhieuThu">Quản Lý Phiếu
										Thu</a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${contextPath}/PhieuChi/QuanLyPhieuChi">Quản Lý Phiếu
										Chi</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${contextPath}/TongHop/QuanLyTongHop">Tổng Hợp Thu
										Chi</a></li>
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
		action="${pageContext.request.contextPath}/PhieuChi/ThemMoi"
		method="post" modelAttribute="PhieuChi">
		<div class="class">
			<div class="row">
				<div class="col-3">
					<div class="form-group">
						<label for="">Chứng Từ Số Chi</label>
						<form:input type="text" path="chungTuSoChi" class="form-control"
							name="" id="chungtuso" aria-describedby="helpId" placeholder=""
							oninput="validateChungTuSo()"></form:input>
						<small id="chungTuError" class="text-danger"></small>
						<c:if test="${maCTTonTai}">
							<small id="" class="text-danger">Đã Tồn Tại Mã</small>
						</c:if>
					</div>
				</div>
				<div class="col-2 mt-2">
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
							id="manhanvien" aria-describedby="helpId" placeholder=""
							oninput="validateMaNV()"></form:input>
						<small id="maNVError" class="text-danger"></small>
					</div>
				</div>
				<div class="col-2 mt-4">
					<div class="form-group " style="width: 120px;">
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
			<hr style="background-color: red;">
			<div class="row">
				<div class="col-3 mt-4">
					<div class="form-group ">
						<label>Ngày Lập CT</label>
						<form:input type="date" path="ngayLapCT" class="form-control"
							id="ngaylapct" aria-describedby="helpId"
							oninput="validateNgayLap()"></form:input>
						<small id="ngayLapError" class="text-danger"> </small>
					</div>
				</div>
				<div class="col-3 mt-3">
					<div class="form-group ">
						<label for="" style="margin-top: 10px; margin-right: 2px;">Nhà
							Cung Cấp </label>
						<form:select path="nhaCungCap" class="form-control" name=""
							id="nhaCungCapInput">
							<option value="Không Có" selected>Không Có</option>
							<option value="VinaGame">Vinagame</option>
							<option value="VTC">VTC</option>
							<option value="FPT">FPT</option>
							<option value="Viettel">Viettel</option>
						</form:select>
					</div>
				</div>
				<div class="col-3 mt-4  ">
					<div class="form-group ">
						<label for="">Đại Diện</label>
						<form:input type="text" path="daiDien" class="form-control"
							name="" id="daidien" aria-describedby="helpId" placeholder=""
							oninput="validateDaiDien()"></form:input>
						<small id="daiDienError" class="text-danger"></small>
					</div>
				</div>
				<div class="col-3 mt-4">
					<div class="form-group ">
						<label for="">Địa Chỉ</label>
						<form:input type="text" path="diaChi" class="form-control" name=""
							id="diachi" aria-describedby="helpId" placeholder=""
							oninput="validateDiaChi()"></form:input>
						<small id="diaChiError" class="text-danger"></small>
					</div>
				</div>
			</div>
			<hr style="background-color: red;">
			<div class="row">
				<div class="col-3">
					<div class="form-group ">
						<label for="">Thành Tiền(Sau Thuế)</label>
						<form:input type="text" path="thanhTien" class="form-control"
							name="" id="thanhtien" aria-describedby="helpId" placeholder=""
							oninput="validateThanhTien();calculateConNo()"></form:input>
						<small id="thanhTienError" class="text-danger"></small>
					</div>
				</div>
				<div class="col-3">
					<div class="form-group ">
						<label for="">Đã Thu</label>
						<form:input type="text" path="tienDaChi" class="form-control"
							name="" id="dathu" aria-describedby="helpId" placeholder=""
							oninput="validateDaThu();calculateConNo();"></form:input>
						<small id="daThuError" class="text-danger"></small>
					</div>
				</div>
				<div class="col-3">
					<div class="form-group ">
						<label for="">Còn Nợ</label>
						<input type="text"  class="form-control"
							name="" id="conno" aria-describedby="helpId" placeholder="ReadOnly" disabled
							>
						<small id="conNoError" class="text-danger"></small>
					</div>
				</div>
				<div class="col-3">
					<div class="form-group 	">
						<label for="">Ghi Chú</label>
						<form:input type="text" path="ghiChu" class="form-control" name=""
							id="ghichu" aria-describedby="helpId" placeholder=""
							oninput="validateGhiChu()"></form:input>
						<small id="ghiChuError" class="text-danger"></small>
					</div>
				</div>
			</div>

			<hr style="background-color: red;">
		</div>
		<div class="row">
			<div class="col-12  " style="padding-left: 1127px;">
				<form:button  type="submit" class="btn btn-primary"
					id="submitBtn">Them Moi</form:button>
				<!--             <button type="submit" class="btn btn-primary ">Them Moi</button>
 -->
				<button disabled="disabled" id="updateBtn" type="button"
					class="btn btn-primary">Cập nhật</button>
				<button id="xuatBtn" type="button" class="btn btn-primary">Xuất</button>
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
		<tbody id="tablebody">
			<c:forEach var="c" items="${PhieuChis}" varStatus="status">
				<fmt:parseDate value="${c.ngayLapCT}" pattern="yyyy-MM-dd"
					var="parsedDate" type="date" />
				<fmt:formatDate value="${parsedDate}" var="newParsedDate"
					type="date" pattern="dd/MM/yyyy" />
				<tr>
					<td>${c.chungTuSoChi}</td>
					<td>${c.maNV}</td>
					<td>${newParsedDate}</td>
					<td>${c.nhaCungCap}</td>
					<td>${c.daiDien}</td>
					<td>${c.diaChi}</td>
					<td>${c.thanhTien}</td>
					<td>${c.tienDaChi}</td>
					<td>${c.tienConNo}</td>
					<td>${c.ghiChu}</td>
					<td>${c.laChiLuong}</td>
					<td><a
						href="${pageContext.request.contextPath}/PhieuChi/UpdateChi/${c.chungTuSoChi}"><i
							class="fa-solid fa-pen"></i></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<form>
	<div class="row">

		<div class="col-12 d-flex">
			<p>Tìm kiếm theo số chứng từ</p>
			<div class="form-group ml-2 ">
				<input type="search" name="" id="nameBT"
					style="border-radius: 50px; border: 2px solid black;"
					placeholder="Search">
			<!-- 	<button type="button" class="btn" id="searchBT">
					<i class="fa fa-search" aria-hidden="true"></i>
				</button> -->
			</div>
		</div>
		</div>
		</form>
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
					$("#submitBtn").prop('disabled',$(statusSubmit))
					$("#updateBtn").prop('disabled',$(statusupdate))
				}) */
		</script>
		<script>
			var xuatBtn = document.getElementById("xuatBtn");
			xuatBtn.addEventListener("click", function() {
				alert('Chức Năng Này Dùng Để In Ra Giấy')
			});
		</script>
		<script>
			function validateForm() {
				var chungTuSo = document.getElementById('chungtuso').value;
				var maNV = document.getElementById('manhanvien').value;
				var ngayLap = document.getElementById('ngaylapct').value;
				var daiDien = document.getElementById('daidien').value;
				var diaChi = document.getElementById('diachi').value;
				var thanhTien = document.getElementById('thanhtien').value;
				var tienDaThu = document.getElementById('dathu').value;
				var tienConNo = document.getElementById('conno').value;
				var ghiChu = document.getElementById('ghichu').value;

				// Check maChungTu	
				var regexMaCT = /^[a-zA-Z0-9/s]+$/;
				if (chungTuSo.trim() !== '' && chungTuSo.length <= 10 && regexMaCT.test(chungTuSo)) {
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
				if (ngayLap.trim() === '' && ngayChon < currentDate) {
					document.getElementById('ngayLapError').textContent = '';
					document.getElementById('ngaylapct').classList
							.remove('error-input');
				} else {
					document.getElementById('ngayLapError').textContent = 'Ngày Lập Không Hợp Lệ';
					document.getElementById('ngaylapct').classList
							.add('error-input');
				}
				//Check Ma Nhan Vien
				var regexMaNV = /^[a-zA-Z0-9]+$/;
				if (maNV.trim() !== '' && maNV.length <= 10 && regexMaNV.test(maNV)) {
					document.getElementById('maNVError').textContent = '';
					document.getElementById('manhanvien').classList
							.remove('error-input');
				} else {
					document.getElementById('maNVError').textContent = 'Ma Khach Hang Khong Hop Le.';
					document.getElementById('manhanvien').classList
							.add('error-input');
				}
				//Check Dai Dien
				var regexDaiDien = /^[a-zA-Z\s]+$/;
				if (daiDien.trim() !== '' && daiDien.length <= 50 && regexDaiDien.test(daiDien)) {
					document.getElementById('daiDienError').textContent = '';
					document.getElementById('daidien').classList
							.remove('error-input');
				} else {
					document.getElementById('daiDienError').textContent = 'Dai Dien Khong Hop Le.';
					document.getElementById('daidien').classList
							.add('error-input');
				}
				//Check Dia Chi
				var regexDiaChi = /^[a-zA-Z0-9\s]+$/;
				if (diaChi.trim() !=='' && diaChi.length <= 50 && regexDiaChi.test(diaChi)) {
					document.getElementById('diaChiError').textContent = '';
					document.getElementById('diachi').classList
							.remove('error-input');
				} else {
					document.getElementById('diaChiError').textContent = 'Dia Chi Khong Hop Le.';
					document.getElementById('diachi').classList
							.add('error-input');
				}
				//Check Ghi Chu Phieu Thu
				var regexGhiChu = /^[a-zA-Z0-9\s]+$/;
				if (ghiChu.trim() !== '' && ghiChu.length <= 50 && regexGhiChu.test(ghiChu)) {
					document.getElementById('ghiChuError').textContent = '';
					document.getElementById('ghichu').classList
							.remove('error-input');
				} else {
					document.getElementById('ghiChuError').textContent = 'Ghi Chu Khong Hop Le.';
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

				if (chungTuSo.trim() !== '' && chungTuSo.length <= 10 && regexMaCT.test(chungTuSo)) {
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

			function validateMaNV() {
				var status = true;
				var maNV = document.getElementById("manhanvien").value;
				if (maNV.trim() === "") {
					$('#maNVError').text("Mã Nhân Viên Không được để trống")
					document.getElementById('manhanvien').classList
							.add('error-input');
					status = false;
				} else if (maNV.length > 10) {
					$('#maNVError').text("Vui Long Nhap Duoi 10 ky tu")
					document.getElementById('manhanvien').classList
							.add('error-input');
					status = false;
				} else if (!/^[a-zA-Z0-9]+$/.test(maNV)) {
					$('#maNVError').text("Vui Long Nhap Dung Dinh Dang")
					document.getElementById('manhanvien').classList
							.add('error-input');
					status = false;
				} else {
					$('#maNVError').text("");
					document.getElementById('manhanvien').classList
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

			function validateDaiDien() {
				var status = true;
				var daiDien = document.getElementById("daidien").value;
				if (daiDien.trim() === "") {
					$('#daiDienError').text(" Không được để trống")
					document.getElementById('daidien').classList
							.add('error-input');
					status = false;
				} else if (daiDien.length > 50) {
					$('#daiDienError').text("Vui Long Nhap Duoi 50 ky tu")
					document.getElementById('daidien').classList
							.add('error-input');
					status = false;
				} else if (!/^[a-zA-Z\s]+$/.test(daiDien)) {
					$('#daiDienError').text("Vui Long Nhap Dung Dinh Dang ")
					document.getElementById('daidien').classList
							.add('error-input');
					status = false;
				} else {
					$('#daiDienError').text("");
					document.getElementById('daidien').classList
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
				} else if (!/^(0|-?[1-9][0-9]*)(\.0+)?$/.test(thanhTien)) {
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
				} else if (!/^(0|-?[1-9][0-9]*)(\.0+)?$/.test(tienThu)) {
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
				} else if (!/^(0|-?[1-9][0-9]*)(\.0+)?$/.test(conNo)) {
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
		<script>
			$(document)
					.ready(
							function() {
								$("#nameBT")
										.keyup(
												function() {
													var selectedRadio = $(
															"#nameBT").val();
													var url = "${pageContext.request.contextPath}/PhieuChi/Search";
													url += "?selectedRadio="
															+ encodeURIComponent(selectedRadio);
													$
															.ajax({
																url : url,
																type : "POST",
																dataType : "json",
																success : function(
																		data) {
																	var invoices = data;
																	$(
																			"#tablebody")
																			.empty();
																	if (invoices.length == 0) {
																		var noResult = "<tr>"
																				+ "<td colspan="+12+" class='text-center'>No result</td>"
																				+ "</tr>"
																		$(
																				"#tablebody")
																				.append(
																						noResult)
																	} else {
																		for (var i = 0; i < invoices.length; i++) {
																			var invoice = invoices[i];
																			var row = "<tr>"
																					+ "<td>"
																					+ (invoice.chungTuSoChi)
																					+ "</td>"
																					+ "<td>"
																					+ (invoice.maNV)
																					+ "</td>"
																					+ "<td>"
																					+ (invoice.ngayLapCT)
																					+ "</td>"
																					+ "<td>"
																					+ (invoice.nhaCungCap)
																					+ "</td>"
																					+ "<td>"
																					+ (invoice.daiDien)
																					+ "</td>"
																					+ "<td>"
																					+ (invoice.diaChi)
																					+ "</td>"
																					+ "<td>"
																					+ (invoice.thanhTien)
																					+ "</td>"
																					+ "<td>"
																					+ (invoice.tienDaChi)
																					+ "</td>"
																					+ "<td>"
																					+ (invoice.tienConNo)
																					+ "</td>"
																					+ "<td>"
																					+ (invoice.ghiChu)
																					+ "</td>"
																					+ "<td>"
																					+ (invoice.laChiLuong)
																					+ "</td>"
																					+ "<td><a href='${pageContext.request.contextPath}/PhieuChi/UpdateChi/" + invoice.chungTuSoChi + "'><i class='fa-solid fa-pen'></i></a></td>"
																					+ "</tr>";
																			$(
																					"#tablebody")
																					.append(
																							row);
																		}
																	}
																	$(
																			"#tablebody")
																			.show();
																}
															})
												})

							})
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

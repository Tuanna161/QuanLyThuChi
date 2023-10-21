<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<title>Quan Ly Tong Hop</title>
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
				<form action="${pageContext.request.contextPath}/TongHop/SearchNam"
				method="get">
			</form>
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
								<li class="nav-item "><a class="nav-link"
									href="${contextPath}/PhieuChi/QuanLyPhieuChi">Quản Lý Phiếu
										Chi</a></li>
								<li class="nav-item active"><a class="nav-link"
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
	<table class="table table-striped table-danger">
		<thead>
			<tr>
				<th>STT</th>
				<th>Ngày Tháng</th>
				<th>Số CT</th>
				<th>Chi Tiết</th>
				<th>Tiền Thu</th>
				<th>Tiền Chi</th>
				<th>Tồn Qũy</th>
				<th>Ghi Chú</th>
			</tr>
		</thead>
		<tbody id="tablebody">
			<c:set var="count" value="0" scope="page" />
			<c:forEach var="c" items="${TongHop}" varStatus="status">
			<fmt:parseDate value="${c.ngayThang}" pattern="yyyy-MM-dd"
					var="parsedDate" type="date" />
				<fmt:formatDate value="${parsedDate}" var="newParsedDate"
					type="date" pattern="dd/MM/yyyy" />
				<c:set var="count" value="${count + 1}" scope="page" />
				<tr>
					<td>${count}</td>
					<td>${newParsedDate}</td>
					<td>${c.soCT}</td>
					<td></td>
					<td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${c.tienThu}" /></td>
					<td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${c.tienChi}" /></td>
					<td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${c.tonQuy}" /></td>
					<td>${c.ghiChu}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	   <div class="row">
         <div class="col-6 d-flex">
            <div class="form-check d-flex" style = "margin-top:5px;">
               <label class="form-check-label">
                <input type="radio" class="form-check-input" name="" id="radio" value="checkedValue" >
               Theo Năm
              </label>
            </div>
            <div class="form-group " style="padding-left: 10px; margin-bottom: 25px;">
              <select   class="form-control searchInput" name="year" id="yearInput">
              </select>
            </div>
            <div class="form-check" style="padding-left: 30px; margin-top:8px">
              <label class="form-check-label">
                <input type="checkbox" class="form-check-input" name="" id="checkbox" value="" >
                Tháng	
              </label>
            </div>
            <div class="form-group" style="padding-left: 10px;">
              <select class="form-control searchInput" name="month" id="monthInput">
              </select>
            </div>
         </div>
         <div class="col-6" style="padding-left: 500px;">
            <button type="button" class="btn btn-primary" id="xuatBtn">Xuất</button>
				<a href="${contextPath}" class="btn btn-primary">Đóng</a>
         </div>
      </div>

	<!--  footer -->


	<!-- end footer -->
	<!-- Javascript files-->
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery-3.0.0.min.js" />"></script>
	<script src="<c:url value="/resources/js/custom.js" />"></script>
	<script>
	var xuatBtn = document.getElementById("xuatBtn");
	xuatBtn.addEventListener("click", function() {
		alert('Chức Năng Này Dùng Để In Ra Giấy')
	});
	</script>
	<script>
		addYear()
		function addYear() {
			// $("#yearInput").html("")
			for (let index = 1900; index <= 2023; index++) {
				$("#yearInput").append("<option value='" + index + "'>" + index + "</option>");
			}
		}
		addMonth()
		function addMonth() {
			$("#monthInput").append("<option value='All'>all</option>");
			for (let index = 1; index <= 12; index++) {
				$("#monthInput").append("<option value='" + index + "'>" + index + "</option>");
			}
		}
	</script>
	<script>
	$(document).ready(function(){
		var radio = document.getElementById("radio");
		var checkbox = document.getElementById("checkbox");
		var chonNam = document.getElementById("yearInput");
		var chonThang = document.getElementById("monthInput");
		chonNam.disabled = true;
		chonThang.disabled = true;
		$("#yearInput").val(new Date().getFullYear())
		
		$(radio).change(function() {
			if(radio.checked) {
				chonNam.disabled = false;
/* 				checkbox.disabled = true;
 */			}else {
				chonNam.disabled = true;
/* 				checkbox.disabled = false;
 */			}
		})
		$(checkbox).change(function() {
			if(checkbox.checked) {
				chonThang.disabled = false;
/* 				radio.disabled = true;
 */			}else {
				chonThang.disabled = true;
/* 				radio.disabled = false;
 */				
			}
		})
	})
	</script>
 	 <script>
	$(document).ready(function() {
		$(".searchInput").change(function(){
			console.log('abc')
			var selectedRadio = $("#yearInput").val();
			var selectedRadio1 = $("#monthInput").val();
			/* if(!$("#checkbox").is(":checked")) {
				$("#monthInput").val(null)
			} */
			var url = "${pageContext.request.contextPath}/TongHop/SearchNam";
			url += "?year=" + encodeURIComponent(selectedRadio)+"&month="+encodeURIComponent(selectedRadio1)
			$.ajax({
				url : url,
				type : "GET",
				dataType : "json",
				success : function(data) {
					var invoices = data;
					$("#tablebody").empty();
					var STT = 0;
					for(var i = 0; i< invoices.length; i++) {
						var invoice = invoices[i];
						var date = new Date(invoice.ngayThang);

						// Lấy thông tin ngày, tháng, năm
						var year = date.getFullYear();
						var month = (date.getMonth() + 1).toString().padStart(2, '0');
						var day = date.getDate().toString().padStart(2, '0');

						// Định dạng ngày tháng theo định dạng "yyyy/MM/dd"
						var formattedDate = year + '/' + month + '/' + day;
						STT++
						var row = "<tr>"
						+"<td>"+ STT + "</td>"
						+"<td>"+ formattedDate + "</td>"
						+"<td>"+ (invoice.soCT) + "</td>"
						+"<td>"+ +"</td>"
						+"<td>"+ (invoice.tienThu) + "</td>"
						+"<td>"+ (invoice.tienChi) + "</td>"
						+"<td>"+ (invoice.tonQuy) + "</td>"
						+"<td>"+ (invoice.ghiChu) + "</td>"
						$("#tablebody").append(row);
					}
					$("#tablebody").show();
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

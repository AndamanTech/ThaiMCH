<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thai Mother and Child Health</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap -->
<link
	href="<%=request.getContextPath()%>/resources/Bootstrap/css/bootstrap.css"
	rel="stylesheet" />

<!-- style_all.css -->
<link href="<%=request.getContextPath()%>/css/style_all.css"
	type="text/css" rel="stylesheet" />

<!-- Responsive -->
<link
	href="<%=request.getContextPath()%>/resources/Bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet" type="text/css">

<link rel="shortcut icon" href="<%=request.getContextPath()%>/logo.ico"
	type="text/css">
<link
	href="<%=request.getContextPath()%>/resources/datepickup-bootstrap-1.3.0/css/datepicker.css">
<!-- Javascript -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/jquery.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-transition.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-alert.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-modal.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-dropdown.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-scrollspy.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-tab.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-tooltip.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-popover.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-button.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-collapse.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-carousel.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-typeahead.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/datepickup-bootstrap-1.3.0/js/bootstrap-datepicker.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap-paginator-1.0/build/bootstrap-paginator.min.js"></script>

<!-- Style -->
<style>
/* Featurettes */
.featurette-divider {
	margin: 80px 0; /* Space out the Bootstrap <hr> more */
}

.featurette_ch {
	padding-top: 180px;
	/* Vertically center images part 1: add padding above and below text. */
	overflow: hidden;
	/* Vertically center images part 2: clear their floats. */
}

.featurette {
	padding-top: 120px;
	/* Vertically center images part 1: add padding above and below text. */
	overflow: hidden;
	/* Vertically center images part 2: clear their floats. */
}

.featurette-image {
	margin-top: -120px;
	/* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
}
/* Give some space on the sides of the floated elements so text doesn't run right into it. */
.featurette-image.pull-left {
	margin-right: 40px;
}

.featurette-image.pull-right {
	margin-left: 40px;
}
/* Thin out the marketing headings */
.featurette-heading {
	font-size: 50px;
	font-weight: 300;
	line-height: 1;
	letter-spacing: -1px;
}

.marketing{
margin-top : 100px;
}


/* RESPONSIVE CSS */
@media ( max-width : 979px) {
	.featurette_ch {
		height: auto;
		padding: 0;
	}
	.featurette {
		height: auto;
		padding: 0;
	}
	.featurette-image.pull-left,.featurette-image.pull-right {
		display: block;
		float: none;
		max-width: 40%;
		margin: 0 auto 20px;
	}
}

@media ( max-width : 767px) {
	.marketing .span4+.span4 {
		margin-top: 40px;
	}
	.featurette-heading {
		font-size: 30px;
	}
	.featurette .lead {
		font-size: 18px;
		line-height: 1.5;
	}
}
</style>

</head>
<body>
	<div id="navbar">
		<!-- navbar -->
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> </a> 
					<a class="brand" href="/thaimch/index" name="top"><img src="<%=request.getContextPath()%>/resources/img/mother.png" width="30" height="30"></a>
					<div class="nav-collapse collapse">
						<ul class="nav pull-right">
							<li class="dropdown"><a class="dropdown-toggle" href="#"
								data-toggle="dropdown">เข้าสู่ระบบ <strong class="caret"></strong></a>
								<div class="dropdown-menu"
									style="padding: 15px; padding-bottom: 0px;">
									<form method="post" action="<%=request.getContextPath()%>/j_spring_security_check" accept-charset="UTF-8">
										<input style="margin-bottom: 5px;" type="text" placeholder="ชื่อผู้ใช้" id="j_username" name="j_username" required="required">
										<input style="margin-bottom: 5px;" type="password" placeholder="รหัสผ่าน" id="j_password" name="j_password" required="required">
										<input style="float: left; margin-right: 10px;" type="checkbox" value="1">
										<label class="string optional" for="user_remember_me"> จดจำในระบบ</label>
										<input id="loginbtn" type="submit" class="btn btn-primary btn-block" value="เข้าสู่ระบบ">
										<a href="/thaimch/firstpage" class="btn btn-primary btn-block">เข้าสู่ระบบ</a>
										<label style="text-align: center; margin-top: 5px">หรือ</label>
										<a href="/thaimch/searchOrg" class="btn btn-primary btn-block">ลงทะเบียน (สำหรับเจ้าหน้าที่)</a>
									</form>

								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>
	<div id="main">
		<div class="container">
			<div class="featurette_ch marketing">
				<img class="featurette-image pull-left"
					src="../resources/img/tmch.png">
				<h2 class="featurette-heading">
					ระบบบันทึกข้อมูลแม่และเด็ก  <span class="muted">สำหรับสถานพยาบาล</span> 
				</h2>
				<p class="lead">ระบบบันทึก และบรืหารจัดการมสุขภาพของคุณแม่ตั้งครรภ์ คุณแม่หลังคลอด และทารกแรกเกิด จนถึง 6 ขวบ ระบบนี้ได้ถูกออกแบบมาสำหรับสถานพยาบาล และคุณแม่ผ่านระบบ Internet ที่มีความสะดวก และปลอดภัยในข้อมูล</p>
			</div>
			<hr class="featurette-divider marketing">
			<div class="featurette">
				<img class="featurette-image pull-right"
					src="../resources/img/doctor.png">
				<h2 class="featurette-heading">
					เจ้าหน้าที่ <span class="muted">สถานพยาบาล</span>
				</h2>
				<p class="lead">เป็นผู้ใช้ที่สามารถจัดการข้อมูลสุขภาพของคุณแม่และเด็ก
					และจัดการข้อมูลต่าง ๆ ในระบบ</p>
			</div>
			<hr class="featurette-divider marketing">
			<div class="featurette">
				<img class="featurette-image pull-right"
					src="../resources/img/mother.png">
				<h2 class="featurette-heading">
					คุณแม่ <span class="muted">ตั้งครรภ์</span>
				</h2>
				<p class="lead">เป็นผู้ใช้ที่สามารถดูข้อมุลสุขภาพของตนเองและดูแลสุขภาพของลูกได้</p>
			</div>
		</div>
	</div>

	<%@ include file="includeFooter.jsp"%>
</body>
</html>



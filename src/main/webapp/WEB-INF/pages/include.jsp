<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thai Mother and Child Health</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/resources/Bootstrap/css/bootstrap.css" rel="stylesheet"/>
    
    <!-- style.css -->
    <!-- <link href="<%=request.getContextPath()%>/resources/Bootstrap/style/style.css" type="text/css" rel="stylesheet"/> -->
    <style type="text/css">
    	body{
    		background-color: #f3fefe;
    	}
    	.navbar .brand{
			padding: 5px 20px 5px;
		}
    </style>
    
    <!-- Responsive -->
    <link href="<%=request.getContextPath()%>/resources/Bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    	body{
    		background-color: #f3fefe;
    	}
    </style>
    <!-- 
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-57-precomposed.png"> 
    -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/logo.ico" type="text/css">
	<link href="<%=request.getContextPath()%>/resources/datepickup-bootstrap-1.3.0/css/datepicker.css">
	<!-- Javascript -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-transition.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-alert.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-modal.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-dropdown.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-scrollspy.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-tab.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-tooltip.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-popover.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-button.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-collapse.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-carousel.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/bootstrap-typeahead.js"></script>
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/datepickup-bootstrap-1.3.0/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap-paginator-1.0/build/bootstrap-paginator.min.js"></script>
<%-- 	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/login.js"></script> --%>
</head>
	<body>
		<!-- navbar -->
    	<div class="navbar navbar-fixed-top">	      	
			<div class="navbar-inner">
		       	<div class="container">	
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					<a class="brand" href="/thaimch/index" name="top"><img src="../resources/img/mother.png" width="30" height="30"></a>
					<div class="nav-collapse collapse">
						<ul class="nav pull-right">
							<li class="dropdown">
								<a class="dropdown-toggle" href="#" data-toggle="dropdown">เข้าสู่ระบบ <strong class="caret"></strong></a>
								<div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
									<form method="post" action="../j_spring_security_check" accept-charset="UTF-8">
										<!-- <input style="margin-bottom: 15px;" type="text" placeholder="ชื่อผู้ใช้" id="j_username" name="j_username" required="required">
										<input style="margin-bottom: 15px;" type="password" placeholder="รหัสผ่าน" id="j_password" name="j_password" required="required">
										<input style="float: left; margin-right: 10px;" type="checkbox" value="1">
										<label class="string optional" for="user_remember_me"> จดจำในระบบ</label>
										<input id="loginbtn" type="submit" class="btn btn-primary btn-block" value="เข้าสู่ระบบ"> -->
										<a href="/thaimch/firstpage" class="btn btn-primary btn-block" >เข้าสู่ระบบ</a>
										<label style="text-align:center;margin-top:5px">หรือ</label>
										<a href="/thaimch/searchOrg" class="btn btn-primary btn-block">ลงทะเบียนเจ้าหน้าที่</a>
										
									</form>
									
								</div>
							</li>
						</ul>
					</div>
        		</div>
	   		</div>
		</div>
	</body>
</html>



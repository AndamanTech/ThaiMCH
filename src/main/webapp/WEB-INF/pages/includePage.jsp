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
    <!-- 
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-57-precomposed.png"> 
    -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/logo.ico" type="text/css">
	<link href="<%=request.getContextPath()%>/resources/datepickup-bootstrap-1.3.0/css/datepicker.css" type="text/css" rel="stylesheet">
	
	
	<!-- <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script> -->
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
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap-datepicker-thai-thai/js/bootstrap-datepicker.js"></script>
	<!-- thai extension -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap-datepicker-thai-thai/js/bootstrap-datepicker-thai.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap-datepicker-thai-thai/js/locales/bootstrap-datepicker.th.js"></script>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/resources/datepickup-bootstrap-1.3.0/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/datepickup-bootstrap-1.3.0/js/locales/bootstrap-datepicker.th.js"></script> --%>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/Menu.js"></script> --%>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap-paginator-1.0/build/bootstrap-paginator.min.js"></script> --%>
	<!-- <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.0/css/jquery.dataTables.css"> -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/DataTables-1.10.0/media/css/jquery.dataTables.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/DataTables-1.10.0/media/js/jquery.dataTables.js"></script>
	<!-- <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script> -->
<!-- 	<script type="text/javascript" src="//cdn.datatables.net/1.10.0/js/jquery.dataTables.js"></script> -->
	<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/ext-5.0.0.736/build/packages/ext-theme-neptune/build/resources/ext-theme-neptune-all.css">
       <script type="text/javascript" src="<%=request.getContextPath()%>/resources/ext-5.0.0.736/build/ext-all.js"></script> 
       <script type="text/javascript" src="<%=request.getContextPath()%>/resources/ext-5.0.0.736/build/packages/ext-theme-neptune/build/ext-theme-neptune.js"></script> --%>
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
					<a class="brand" href="/thaimch/firstpage" name="top"><img src="../resources/img/mother.png" width="30" height="30"></a>
					<div class="nav-collapse collapse">
						<ul class="nav pull-right">
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown"><i class="icon-list"></i> เมนูจัดการข้อมูล <strong class="caret"></strong></a>
								<ul class="dropdown-menu" id="menuitem">
		                            <li><a href="/thaimch/searchMom"><i class="icon-cog"></i> จัดการแม่</a></li>
		                            <li><a href="/thaimch/searchchild"><i class="icon-cog"></i> จัดการเด็ก</a></li>
		                            <li><a href="/thaimch/newContent"><i class="icon-cog"></i> จัดการบทความ</a></li>

                        		</ul>
							</li>
							
							<li class="divider-vertical"></li>
							
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" id="username"><!-- <i class="icon-cog"></i> USER1<strong class="caret"></strong> --></a>
								<ul class="dropdown-menu" id="settingmenu">
		                            <!-- <li><a href="/tmch/newStaffProfile"><i class="icon-user"></i> ดูข้อมูลส่วนตัว</a></li>
		                            <li><a href="/tmch/newOrgProfile"><i class="icon-briefcase"></i> ดูข้อมูลองค์กร</a></li>
		                            <li><a href="/tmch/newChangePss"><i class="icon-wrench"></i> เปลี่ยนรหัสผ่าน</a></li> -->
		                            <li class="divider"></li>
		                            <li><a href="j_spring_security_logout"><i class="icon-off"></i> ออกจากระบบ</a></li>
                        		</ul>
							</li>
						</ul>
					</div>
        		</div>
	   		</div>
		</div>
		
	</body>
</html>
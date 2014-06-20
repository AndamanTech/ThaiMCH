<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		var url='<%=request.getRequestURI() %>'; // get uri file path
		var childid='<%=request.getParameter("childid")%>';
	</script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/childtab.js"></script>
</head>
<body>
			<ul class="nav nav-tabs">
				  	<li id="childprofiletab">
				    	<!-- <a href="/tmch/newChildProfile">ข้อมูลลูก</a> -->
				    	<a id="childprofile">ข้อมูลส่วนตัวลูก</a>
				  	</li>
				  	<li id="childactvtab">
				  		<!-- <a href="/tmch/newChildActivity" >กิจกรรมบริการ</a> -->
				  		<a id="childatv">พัฒนาการด้านร่างกาย</a>
				  	</li>
				  	<li id="childvactab">
				  		<!-- <a href="/tmch/newChildVaccine">วัคซีน</a> -->
				  		<a id="childvcn">การฉีดวัคซีน</a>
				  	</li>
				  	<!-- <li id="childappointtab">
				  		<a href="/tmch/newChildAppointment">วันนัดตรวจ</a>
				  		<a id="chidappoint">วันนัดตรวจ</a>
				  	</li> -->
			</ul>
</body>
</html>
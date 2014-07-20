<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<%@ include file="includePage.jsp" %>
	<%-- <%@ include file="includejqx.jsp" %> --%>
	
	<!-- Style -->
	<style>
	/* Featurettes */
    	.featurette-divider {
      		margin: 80px 0; /* Space out the Bootstrap <hr> more */
    	}
	
	/*body*/
		.marketing{
			margin: 80px auto 0px;
		}
		a.btn {
	   		float: right;
	   }
		.nav {
			margin-left: 200px;
			margin-top: -38px;
		}
	
	/* Responsive Css */
	     @media (max-width: 979px) {
			.marketing{
				margin: 35px auto 0px;
		}
	    @media (max-width: 767px) {
	      	.marketing .span4 + .span4 {
	        	margin-top: 40px;
	      	}
	    }    
    </style>
    <script type="text/javascript">
    	var childid='<%=request.getParameter("childid")%>';
    </script>
<%--  <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/tranformDate.js"></script>--%>
 <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/childVaccine.js"></script> 

</head>
	<body>
		
	    <!-- body -->
	    <div class="container marketing">
	    <img src="../resources/img/sunanya_son.png" class="img-polaroid" width="160px" height="160px">
		<!-- <a href="/tmch/newMomProfile" class="btn" type="button"><i class="icon-chevron-left"></i> กลับหน้าแม่</a> -->
			<!-- <ul class="nav nav-tabs">
			  	<li>
			    	<a href="/tmch/newChildProfile">ข้อมูลลูก</a>
			  	</li>
			  	<li>
			  		<a href="/tmch/newChildActivity">กิจจกรรมบริการ</a>
			  	</li>
			  	<li class="active">
			  		<a href="/tmch/newChildVaccine">วัคซีน</a>
			  	</li>
			  	<li>
			  		<a href="/tmch/newChildAppointment">วันนัดตรวจ</a>
			  	</li>
			</ul> -->
			<%@ include file="childTab.jsp" %>
			<form>
			
			<div class="row">
				<div class="span12" >
			    	<button id="savevaccinebtn" type="button" class="btn btn-small btn-primary" style="float: right;">บันทึก</button>
			    </div>
			</div>
			<input type="hidden" id="child_vaccine">
			<div class="row">
	        	<div class="span12">
	    			<table id="listPreg" class="table table-condensed table-hover">
		    			<thead>
			   				<tr>
			   					<th>วัคซีน</th>
			   					<th>อายุที่ควรได้รับ</th>
			   					<th><center>วัน เดือน  ปี / สถานที่ได้รับวัคซีน</center></th>
			   				</tr>
		    			</thead>
		    			<tbody>
			   				<tr>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-heart"></i> ฉีดวัคซีนป้องกันวัณโรค (BCG)
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-time"></i> แรกเกิด
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
			   						<center>
			   							<input id="bcg1" type="text" class="input-medium datepicker" data-provide="datepicker" data-date-format="dd-mm-yyyy" readonly placeholder="ครั้งที่  1" style="text-align: center; background-color: #fff4f4;"> ·
			   							<!-- <input id="bcg1" type="text" class="input-medium datepicker" placeholder="ครั้งที่  1" style="text-align: center; background-color: #fff4f4;"> ·  -->
			   							<span type="text" class="input-medium uneditable-input" style="background-color: gray; color: white;">ครั้งที่ 2</span> · 
			   							<span type="text" class="input-medium uneditable-input" style="background-color: gray; color: white;">ครั้งที่ 3</span>
			   						</center>
			   					</th>
			   				</tr>
			   				<tr>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-heart"></i> ฉีดวัคซีนป้องกันโรคตับอักเสบบี (HB)
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-time"></i> แรกเกิด<br>
			   							<i class="icon-time"></i> 1 เดือน
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
				   					<center>
				   						<input id="hb1" type="text" class="input-medium datepicker" placeholder="ครั้งที่  1" style="text-align: center; background-color: #fff4f4;"> · 
				   						<input id="hb2" type="text" class="input-medium datepicker" placeholder="ครั้งที่  2" style="text-align: center; background-color: #fff4f4;"> · 
				   						<span type="text" class="input-medium uneditable-input" style="background-color: gray; color: white;">ครั้งที่ 3</span>
				   					</center>
			   					</th>
			   				</tr>   
			   				<tr>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-heart"></i> กินวัคซีนป้องกันโรคโปลิโอ (OPV)<br>
			   							<i class="icon-heart"></i> ฉีดวัคซีนรวมป้องกันโรคคอตีบ<br>
			   							บาดทะยัก ไอกรน ตับอักเสบบี (DTP-HB)
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-time"></i> 2 เดือน<br>
			   							<i class="icon-time"></i> 4 เดือน<br>
			   							<i class="icon-time"></i> 6 เดือน
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
				   					<center>
				   						<input id="opv1" type="text" class="input-medium datepicker" placeholder="ครั้งที่  1" style="text-align: center; background-color: #fff4f4;"> · 
				   						<input id="opv2" type="text" class="input-medium datepicker" placeholder="ครั้งที่  2" style="text-align: center; background-color: #fff4f4;"> · 
				   						<input id="opv3" type="text" class="input-medium datepicker" placeholder="ครั้งที่  3" style="text-align: center; background-color: #fff4f4;">
				   					</center>
			   					</th>
			   				</tr>
			   				<tr>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-heart"></i> ฉีดวัคซีนป้องกันโรคหัด คางทูม<br>
			   							หัดเยอรมัน (MMR)
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-time"></i> 9 เดือน<br>
			   							<i class="icon-time"></i> 7 ปี (ชั้น ป.1)
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
				   					<center>
				   						<input id="mmr1" type="text" class="input-medium datepicker" placeholder="ครั้งที่  1" style="text-align: center; background-color: #fff4f4;"> · 
				   						<input id="mmr2" type="text" class="input-medium datepicker" placeholder="ครั้งที่  2" style="text-align: center; background-color: #fff4f4;"> · 
				   						<span type="text" class="input-medium uneditable-input" style="background-color: gray; color: white;">ครั้งที่ 3</span>
				   					</center>
			   					</th>
			   				</tr>
			   				<tr>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-heart"></i> กินวัคซีนป้องกันโรคโปลิโอ (OPV)<br>
			   							<i class="icon-heart"></i> ฉีดวัคซีนรวมป้องกันโรคคอตีบ<br>
			   							บาดทะยัก ไอกรน (DTP)
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-time"></i> 1 ปีครึ่ง<br>
			   							<i class="icon-time"></i> 4 ปีครึ่ง
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
				   					<center>
				   						<input id="opv4" type="text" class="input-medium datepicker" placeholder="ครั้งที่  1" style="text-align: center; background-color: #fff4f4;"> · 
				   						<input id="opv5" type="text" class="input-medium datepicker" placeholder="ครั้งที่  2" style="text-align: center; background-color: #fff4f4;"> · 
				   						<span type="text" class="input-medium uneditable-input" style="background-color: gray; color: white;">ครั้งที่ 3</span>
				   					</center>
			   					</th>
			   				</tr>
			   				<tr>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-heart"></i> ฉีดวัคซีนป้องกันโรคไข้สมองอักเสบ (JE)<br>
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-time"></i> 1 ปีครึ่ง (ฉีด 2 เข็ม<br>
			   							ห่างกัน 1 เดือน)<br>
			   							<i class="icon-time"></i> 2 ปีครึ่ง
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
				   					<center>
				   						<input id="je1" type="text" class="input-medium datepicker" placeholder="ครั้งที่  1" style="text-align: center; background-color: #fff4f4;"> · 
				   						<input id="je2" type="text" class="input-medium datepicker" placeholder="ครั้งที่  2" style="text-align: center; background-color: #fff4f4;"> · 
				   						<input id="je3" type="text" class="input-medium datepicker" placeholder="ครั้งที่  3" style="text-align: center; background-color: #fff4f4;">
				   					</center>
			   					</th>
			   				</tr>
			   				<tr>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-heart"></i> ฉีดวัคซีนป้องกันโรคคอตีบ<br>
			   							บาดทะยัก (dT)
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
			   						<label class="control-label">
			   							<i class="icon-time"></i> 12 ปีครึ่ง (ชั้น ป.6)
			   						</label>
			   					</th>
			   					<th style="vertical-align: middle;">
			   						<center>
			   							<input id="dt1" type="text" class="input-medium datepicker" placeholder="ครั้งที่  1" style="text-align: center; background-color: #fff4f4;"> · 
			   							<span type="text" class="input-medium uneditable-input" style="background-color: gray; color: white;">ครั้งที่ 2</span> · 
			   							<span type="text" class="input-medium uneditable-input" style="background-color: gray; color: white;">ครั้งที่ 3</span>
			   						</center>
			   					</th>
			   				</tr>   					
			   			</tbody>
	    			</table>
	    		</div>
			</div>
			</form>
      	</div>
      	
      	<%@ include file="includeFooter.jsp" %>
      	
	</body>
</html>



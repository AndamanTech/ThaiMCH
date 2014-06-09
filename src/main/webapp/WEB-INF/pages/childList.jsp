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
		var momid='<%=request.getParameter("momid")%>';
	</script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/momlink.js"></script>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/tranformDate.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/newChildList.js"></script> --%>
</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
	    <img src="../resources/img/sunanya.png" class="img-polaroid" width="160px" height="160px">
			<ul class="nav nav-tabs">
			  	<li>
			    	<a id="momProfileLink" >ข้อมูลส่วนตัว</a>
			  	</li>
			  	<li>
			  		<a id="momhealth">ประวัติสุขภาพ</a>
			  	</li>
			  	<li>
			  		<a id="momhistory">ประวัติการตั้งครรภ์</a>
			  	</li>
			  	<li class="active">
			  		<a id="momchildList" >ข้อมูลลูก</a>
			  	</li>
			  	<!-- <li>
			  		<a id="momlistappoint">วันนัดตรวจ</a>
			  	</li> -->
			</ul>
			<div class="container">
			    <div class="row">
			        <div class="span12" >
			            <a href="#AddChild" style="float: right;" role="button" data-toggle="modal" class="btn btn-small btn-primary">เพิ่มข้อมูลลูก</a>
			        </div>
			    </div>
			</div>			
			<div id="AddChild" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
			    <div class="modal-header">
			    	<h4>เพิ่มข้อมูลลูก</h4>	
				</div>
				<div class="modal-body">
					<div class="row-fluid">
      					<form class="form-horizontal" id="addChildForm">
       	 					<fieldset>
					          	<!-- something here -->
					          	<div class="control-group">
									<label class="control-label">ชื่อ</label>
									<div class="controls">
										<input id="fname" type="text" class="input-medium">
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">นามสกุล</label>
									<div class="controls">
										<input id="lname" type="text" class="input-medium">
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">วัน เดือน ปี เกิด</label>
									<div  class="controls">
										<input id="childbirth" type="text" class="datepicker input-medium" data-provide="datepicker" data-date-format="dd-mm-yyyy" readonly>
										<span class="add-on"><i class="icon-th"></i></span>
										<!-- <input id="childbirth" type="text" class="input-xlarge"> -->
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">คนที่</label>
									<div class="controls" id="childorder">
										<!-- <input id="fname" type="text" class="input-xlarge"> -->
									</div>
								</div>          	
								<div class="control-group">
								  	<label class="control-label">เพศ</label>
								   	<div id="genderList" class="controls">
										<!-- <input type="text" class="input-xlarge"> -->
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">น้ำหนักแรกเกิด (ก.ก.)</label>
									<div class="controls">
										<input id="f_weight" type="text" class="input-medium">
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">ความยาว (ซ.ม.)</label>
									<div class="controls">
										<input id="lengthOfBody" type="text" class="input-medium">
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">เส้นรอบศีรษะ (ซ.ม.)</label>
									<div class="controls">
										<input id="lengOfHead" type="text" class="input-medium">
									</div>
								</div>
											          	
								<div class="control-group">
            						<div class="controls">
              							<input type="button" id="saveChild" class="btn btn-primary" value="บันทึก">
					            	</div>
					          	</div>
        					</fieldset>
     					</form>
    				</div>
				</div>
			</div>
			
			<br>
			
			<div class="row">
	        	<div class="span12">
	    			<table id="listchildtable" class="table table-hover table-bordered">
		    			<thead>
			   				<tr>
			   					<th>คนที่</th>
			   					<th>ชื่อ - สกุล ลูก</th>
			   					<th>เพศ</th>
			   					<th>วัน เดือน ปี เกิด</th>
			   					<th>ข้อมูลลูก</th>
			   				</tr>
		    			</thead>
		    			<tbody>
							<!-- <tr>
			   					<td></td>
			   					<td></td>
								<td></td>
			   					<td><a href="/tmch/newChildProfile" class="btn btn-small btn-primary">ดูข้อมูลลูก</a></td>
			   				</tr> -->
			   			</tbody>
	    			</table>
	    		</div>
			</div>
      	</div>
      	
      	<%@ include file="includeFooter.jsp" %>
      	
	</body>
</html>



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
   <%--  <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/tranformDate.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/newChildActivity.js"></script> --%>
	
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
			  	<li class="active">
			  		<a href="/tmch/newChildActivity">กิจจกรรมบริการ</a>
			  	</li>
			  	<li>
			  		<a href="/tmch/newChildVaccine">วัคซีน</a>
			  	</li>
			  	<li>
			  		<a href="/tmch/newChildAppointment">วันนัดตรวจ</a>
			  	</li>
			</ul> -->
			<%@ include file="childTab.jsp" %>
			<div class="container">
			    <div class="row">
			        <div class="span12" >
			            <a href="#AddChild" style="float: right;" role="button" data-toggle="modal" class="btn btn-small btn-primary">เพิ่มพัฒนาการด้านร่างกาย</a>
			            
			            <a id="view_dev"  target="_blank" style="float: right; margin-right: 5px;" class="btn btn-small btn-primary">กราฟน้ำหนัก : ส่วนสูง</a>
			            <a id="view_height"  target="_blank" style="float: right; margin-right: 5px;" class="btn btn-small btn-primary">กราฟส่วนสูง : อายุ</a>
			            <a id="view_weight"  target="_blank" style="float: right; margin-right: 5px;"  class="btn btn-small btn-primary">กราฟน้ำหนัก : อายุ</a>
			        </div>
			    </div>
			</div>			
			<div id="AddChild" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
			    <div class="modal-header">
			    	<h4>เพิ่มพัฒนาการด้านร่างกาย</h4>	
				</div>
				<div class="modal-body">
					<div class="row-fluid">
      					<form class="form-horizontal" id="addActivity">
       	 					<fieldset>
					          	<!-- something here -->
					          	<div class="control-group">
									<label class="control-label">วันตรวจ</label>
									<div class="controls" ><!--  id="chckDate"> -->
										<div class="input-append date" id="dp3"  data-date-format="dd-mm-yyyy">
											<input id="chckDate" type="text" class="datepicker" data-provide="datepicker" data-date-format="dd-mm-yyyy" readonly>
											<span class="add-on"><i class="icon-th"></i></span>
										</div>
										
									</div>
								</div>
								<div class="control-group">
									<label  class="control-label">น้ำหนัก (ก.ก.)</label>
									<div class="controls">
										<input id="weight" type="text" class="input-medium">
									</div>
								</div>
								<div class="control-group">
									<label  class="control-label">ส่วนสูง (ซ.ม.)</label>
									<div class="controls">
										<input id="height" type="text" class="input-medium">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">เส้นรอบศีรษะ (ซ.ม.)</label>
									<div class="controls">
										<input id="headline" type="text" class="input-medium">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">คำแนะนำ</label>
									<div class="controls">
										<textarea id="physicalHealth" class="input-medium" rows="5"></textarea>
									</div>
								</div>
								<div class="control-group">
            						<div class="controls">
              							<input type="button" class="btn btn-primary" id="savebtn" value="บันทึก">
					            	</div>
					          	</div>	
        					</fieldset>
     					</form>
    				</div>
				</div>
			</div>
			<div id="No" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
			    <div class="modal-header">
			    	<h4>กราฟ</h4>	
				</div>
				<div class="modal-body">
					<div class="row-fluid">
      					<form class="form-horizontal">
       	 					<fieldset>
					          	<!-- something here -->
        					</fieldset>
     					</form>
    				</div>
				</div>
			</div>
			<br>
			<div class="row">
	        	<div class="span12">
	    			<table class="table table-bordered table-hover" id="actvtable">
		    			<thead>
			   				<tr>
			   					<th>วันตรวจ</th>
			   					<th>น้ำหนัก</th>
			   					<th>ส่วนสูง</th>
			   					<th>เส้นรอบศีรษะ</th>
			   					<th>คำแนะนำ</th>
			   				</tr>
		    			</thead>
		    			<tbody>
							<!-- <tr>
			   					<td></td>
			   					<td></td>
								<td></td>
								<td></td>
								<td></td>
			   					<td><a href="#" class="btn btn-small btn-primary" style="float: left;">ลบ</a></td>
			   				</tr> -->
			   			</tbody>
	    			</table>
	    		</div>
			</div>
      	</div>
      	
      	<%@ include file="includeFooter.jsp" %>
      	
	</body>
</html>



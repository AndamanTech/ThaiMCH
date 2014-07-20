<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<%@ include file="includePage.jsp" %>
	<%@ include file="includejqx.jsp" %>>
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
<%-- 	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/tranformDate.js"></script>--%>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/momHistory.js"></script> 
	
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
			  	<li  class="active">
			  		<a id="momhistory">ประวัติการตั้งครรภ์</a>
			  	</li>
			  	<li>
			  		<a id="momchildList" >ข้อมูลลูก</a>
			  	</li>
			  	<!-- <li>
			  		<a id="momlistappoint">วันนัดตรวจ</a>
			  	</li> -->
			</ul>
			<div class="container">
			    <div class="row">
			        <div class="span12" >
			            <a id="addpregbtn" href="#AddPregnancy" style="float: right;" role="button" data-toggle="modal" class="btn btn-small btn-primary">เพิ่มครรภ์</a>
			        </div>
			    </div>
			</div>			
			<div id="AddPregnancy" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
			    <div class="modal-header">
			    	<h4>เพิ่มครรภ์</h4>	
				</div>
				<div class="modal-body">
					<div class="row-fluid">
      					<form id="addpregform" class="form-horizontal">
       	 					<fieldset>
					          	<div class="control-group">
					            	<label class="control-label">ครรภ์ที่</label>
					            	<div id="pregorder" class="controls">
					              		<!-- <input type="text" class="input-xlarge"> -->
					              		<input type="text" class="input-xlarge">
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">คาดคะเนกำหนดการคลอด</label>
					            	<div class="controls">
					            		 <input id="childbirth" type="text" class="datepicker input-medium" data-provide="datepicker" data-date-format="dd/mm/yyyy" readonly>
										<span class="add-on"><i class="icon-th"></i></span>
					              		<!-- <input type="text" class="input-xlarge"> -->
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">น้ำหนักก่อนตั้งครรภ์ (ก.ก.)</label>
					            	<div   class="controls">
					              		<!-- <input type="text" class="input-xlarge"> -->
					              		<input type="text" id="weightbfpreg"  class="input-xlarge">
					            	</div>
					          	</div>
					          	
					          	<!-- <div class="control-group">
					            	<label class="control-label">ส่วนสูง (ซม.)</label>
					            	<div id="heightmom" class="controls">
					              		<input type="text" class="input-xlarge">
					            	</div>
					          	</div> -->
					          	
					          	<div class="control-group">
					            	<label class="control-label">ผ่าตัดคลอด (ครั้ง)</label>
					            	<div class="controls">
					            		<select  id="amountCesarean" class="input-medium">
						                   	<option>0</option>
						                   	<option>1</option>
						                   	<option>2</option>
						                   	<option>3</option>
						                   	<option>4</option>
						                   	<option>5</option>
						                   	<option>6</option>
						                   	<option>7</option>
						                   	<option>8</option>
						                   	<option>9</option>
						            	</select>
					          		</div>
					          	</div>
					          	
					          	<!-- <div class="control-group">
					            	<label class="control-label">การคุมกำเนิด</label>
					            	<div class="controls" >
					            		<select id="ct_preg" class="input-medium">
						                    <option value="ไม่เคย">ไม่เคย</option>
						                    <option value="ยาเม็ด">ยาเม็ด</option>
						                    <option value="ยาฉีด">ยาฉีด</option>
						                    <option value="ห่วงอนามัย">ห่วงอนามัย</option>
						                    <option value="ยาหลอดฝัง">ยาหลอดฝัง</option>
						                    <option value="ถุงยาง">ถุงยาง</option>
						            	</select>
					              		<input id="ct_preg" type="text" class="input-xlarge">
					            	</div>
					          	</div> -->

					          	<!-- <div class="control-group">
					            	<label class="control-label">เป็นเวลา</label>
					            	<div class="controls">
					              		<input type="text" class="input-xlarge">
					            	</div>
					          	</div>
					          	
					          	<hr>
					          	
					          	<div class="control-group">
					            	<label class="control-label">ประวัติการเจ็บป่วย</label>
					                <div class="controls">
					                 <textarea id="physicalHealth" class="input-xlarge" rows="5"></textarea>
					                </div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">ประวัติการผ่าตัด</label>
					                <div class="controls">
					                    <textarea id="surgicalHistory" class="input-xlarge" rows="5"></textarea>
					                </div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">ประวัติการแพ้ยา</label>
					                <div class="controls">
					                    <textarea id="surgery" class="input-xlarge" rows="5"></textarea>
					                </div>
					          	</div> -->
                
					          	<div class="control-group">
            						<div class="controls">
              							<input type="button" id="savehcmom" class="btn btn-primary" value="บันทึก">
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
	    			<table id="listPreg" class="table table-hover table-bordered">
		    			<thead>
			   				<tr>
			   					<th>ครรภ์ที่</th>
			   					<th>กำหนดการคลอด</th>
			   					<th>บันทึกการตั้งครรภ์</th>
			   					<th>บันทึกการตรวจครรภ์</th>
			   				</tr>
		    			</thead>
		    			<tbody>   					
			   			</tbody>
	    			</table>
	    		</div>
			</div>
      	</div>
      	
      	<%@ include file="includeFooter.jsp" %>
	    		
	</body>
</html>
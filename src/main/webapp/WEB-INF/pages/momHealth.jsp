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
	
	<!-- Script -->
	<script type="text/javascript">
		var momid='<%=request.getParameter("momid")%>';
	</script>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/momProfile.js"></script> --%>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/momlink.js"></script>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/tranformDate.js"></script> --%>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/momHealth.js"></script>
	

</head>
	<body>
	
	    <!-- body -->
	    <div class="container marketing">
	    <img src="../resources/img/sunanya.png" class="img-polaroid" width="160px" height="160px">
			<ul class="nav nav-tabs">
			  	<li>
			    	<a id="momProfileLink" >ข้อมูลส่วนตัว</a>
			  	</li>
			  	<li class="active">
			  		<a id="momhealth">ประวัติสุขภาพ</a>
			  	</li>
			  	<li>
			  		<a id="momhistory">ประวัติการตั้งครรภ์</a>
			  	</li>
			  	<li>
			  		<a id="momchildList" >ข้อมูลลูก</a>
			  	</li>
			  <!-- 	<li>
			  		<a id="momlistappoint">วันนัดตรวจ</a>
			  	</li> -->
			</ul>
			<form class="form-horizontal"> <!-- action="updatemomprofile" method="post"> -->
			<input type="hidden" name="momhistory_id" id="momhistory_id">
			<div class="container">
			    
			    <div class="heading">
			    	<h4 class="form-heading">ข้อมูลทั่วไป</h4>
			    </div>
			    <div class="row-fluid">
			        <div class="span12">
			            
			            <div class="span6">
			                <div class="area">
			                	<div class="form-horizontal">		
			                        <div class="control-group">
			                            <label class="control-label">วัน เดือน ปี เกิด</label>
			                            <div class="controls">			                       		                            	
			                                <input id="mombirth" type="text" class="datepicker input-medium" data-provide="datepicker" data-date-format="dd-mm-yyyy" readonly> 
			                            </div>
			                        </div>	
			                        <div class="control-group">
			                            <label class="control-label">น้ำหนัก (ก.ก.)</label>
			                            <div class="controls">
			                                <input id="weightmom" type="text">
			                            </div>
			                        </div>			                        
			                        <div class="control-group">
			                            <label class="control-label">ส่วนสูง (ซ.ม.)</label>
			                            <div class="controls">
			                                <input id="heightmom" type="text">
			                            </div>
			                        </div>			                        
			                        <div class="control-group">
			                            <label class="control-label">การคุมกำเนิด</label>
			                            <div class="controls">
			                                <select id="contraception">
						                    <option>ไม่เคย</option>
						                    <option>ยาเม็ด</option>
						                    <option>ยาฉีด</option>
						                    <option>ห่วงอนามัย</option>
						                    <option>ยาหลอดฝัง</option>
						                    <option>ถุงยางอนามัย</option>
						            	</select>
			                            </div>
			                        </div>
								</div>
			  				</div>
			        	</div>
			        	
			        	<div class="span6">
			                <div class="area">
			                	<div class="form-horizontal">		
			                        <div class="control-group">
			                            <label class="control-label">ประวัติการผ่าตัด</label>
			                            <div class="controls">
			                                <textarea rows="9" id="surgicalHistory"></textarea>
			                            </div>
			                        </div>	
								</div>
			  				</div>
			        	</div>
			       	</div>
			  	</div>
			  	
			  	<div class="heading">
			    	<h4 class="form-heading">ข้อมูลสุขภาพ</h4>
			    </div>
			    <div class="row-fluid">
			        <div class="span12">
			            
			            <div class="span6">
			                <div class="area">
			                	<div class="form-horizontal">		
			                        <div class="control-group">
			                            <label class="control-label">ประวัติการเจ็บป่วย</label>
			                            <div class="controls">
			                                <textarea rows="9" id="allergicHistory"></textarea>
			                            </div>
			                        </div>
								</div>
			  				</div>
			        	</div>
			        	
			        	<div class="span6">
			                <div class="area">
			                	<div class="form-horizontal">		
			                        <div class="control-group">
			                            <label class="control-label">ประวัติการแพ้ยา</label>
			                            <div class="controls">
			                                <textarea rows="9" id="physicalHealth"></textarea>
			                            </div>
			                        </div>	
								</div>
			  				</div>
			        	</div>
			        	
			       	</div>
			  	</div>
			  	
			    <div class="control-group" style="margin-right: 170px;">
			    	<div class="controls">
			        	<input id="savedatahealthbtn" type="button" value="บันทึกข้อมูลสุขภาพ" class="btn btn-primary btn-small" style="float: right;">
			       	</div>
			   	</div>
			</div>
			</form>
      	</div>
		
		<%@ include file="includeFooter.jsp" %>
	    
	</body>
</html>
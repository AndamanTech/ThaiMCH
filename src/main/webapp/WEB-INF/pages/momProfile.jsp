<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<%@ include file="includePage.jsp" %>
<%-- 	<%@ include file="includejqx.jsp" %> --%>
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
		console.log("Mom id : "+momid);
	</script>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/momProfile.js"></script> --%>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/momlink.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/momProfile.js"></script>
</head>
	<body>
	
	    <!-- body -->
	    <div class="container marketing">
	    <img src="../resources/img/sunanya.png" class="img-polaroid" width="160px" height="160px">
			<ul class="nav nav-tabs">
			  	<li class="active">
			    	<a id="momProfileLink" >ข้อมูลส่วนตัว</a>
			  	</li>
			  	<li>
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
			<div class="container">
			    
			    <div class="heading">
			    	<h4 class="form-heading">ข้อมูลแม่</h4>
			    </div>
			    <div class="row-fluid">
			        <div class="span12">
			            
			            <div class="span6">
			                <div class="area">
			                	<div class="form-horizontal">
			                        <input type="hidden" id="momid" name="momid" value="<%=request.getParameter("momid")%>">		
			                        <div class="control-group">
			                            <label class="control-label">เลขบัตรประชาชน</label>
			                            <div class="controls">
			                                <input type="text" id="momid13" name="momid13" readonly="readonly">
			                            </div>
			                        </div>	
			                        <div class="control-group">
			                            <label class="control-label">ชื่อ</label>
			                            <div class="controls">
			                                <input type="text" id="momname" name="momfname">
			                            </div>
			                        </div>			                        
			                        <div class="control-group">
			                            <label class="control-label">นามสกุล</label>
			                            <div class="controls">
			                                <input type="text" id="momlname" name="momlname">
			                            </div>
			                        </div>			                        
			                        <div class="control-group">
			                            <label class="control-label">อีเมล์</label>
			                            <div class="controls">
			                                <input type="text" id="emailmom" name="emailmom">
			                            </div>
			                        </div>
								</div>
			  				</div>
			        	</div>
			        	
			            <div class="span6">
			                <div class="area">
			                	<div class="form-horizontal">
			                        <div class="control-group">
			                            <label class="control-label">โทรศัพท์</label>
			                            <div class="controls">
			                                <input type="text" id="telmom" name="momtel">
			                            </div>
			                        </div>  
			                        <div class="control-group">
			                            <label class="control-label">อาชีพ</label>
			                            <div class="controls">
			                                <input type="text" id="occurmom" name="momoccur">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">ศาสนา</label>
			                            <div class="controls">
			                            	<select  id="regionmom" name="momregion">
						                    	<option></option>
						                    	<option>พุทธ</option>
						                    	<option>คริสต์</option>
						                    	<option>อิสลาม</option>
						                    	<option>พราหมณ์-ฮินดู</option>
						                  	</select>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>	
			        </div>
			    </div>
			    
			    <div class="heading">
			    	<h4 class="form-heading">ข้อมูลที่อยู่</h4>
			    </div>
			    <div class="row-fluid">
			        <div class="span12">
			            <div class="span6">
			                <div class="area">
			                	<div class="form-horizontal">		
			                        <div class="control-group">
			                            <label class="control-label">เลขที่</label>
			                            <div class="controls">
			                                <input type="text" id="noaddress" name="noaddress">
			                            </div>
			                        </div>			                        
			                        <div class="control-group">
			                            <label class="control-label">หมู่ที่</label>
			                            <div class="controls">
			                                <input type="text" id="moo" name="moo">
			                            </div>
			                        </div>			                        
			                        <div class="control-group">
			                            <label class="control-label">ซอย</label>
			                            <div class="controls">
			                                <input type="text" id="soi" name="soi">
			                            </div>
			                        </div>		                        
			                        <div class="control-group">
			                            <label class="control-label">ถนน</label>
			                            <div class="controls">
			                                <input type="text" id="road" name="road">
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>	
						<div class="span6">
			            	<div class="area">
			                	<div class="form-horizontal">
			                        <div class="control-group">
			                            <label class="control-label">ตำบล</label>
			                            <div class="controls">
			                                <input type="text" id="locality" name="locality">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">อำเภอ</label>
			                            <div class="controls">
			                                <input type="text" id="distric" name="distric">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">จังหวัด</label>
			                            <div class="controls">
			                                <input type="text" id="province" name="province">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">รหัสไปรษณ๊ย์</label>
			                            <div class="controls">
			                                <input type="text" maxlength="5" id="zipcode"  name="zipcode">
			                        	</div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
				
				<div class="heading">
			    	<h4 class="form-heading">ข้อมูลพ่อ</h4>
			    </div>
				<div class="row-fluid">
			        <div class="span12">
						<div class="span6">
			            	<div class="area">
			                	<div class="form-horizontal">
			                        <div class="control-group">
			                            <label class="control-label">เลขบัตรประชาชน</label>
			                            <div class="controls">
			                                <input type="text" id="dadid13" name="dadid13">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">ชื่อ</label>
			                            <div class="controls">
			                                <input type="text" id="dadfname" name="dadfname">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">นามสกุล</label>
			                            <div class="controls">
			                                <input type="text" id="dadlname" name="dadlname">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">อีเมล์</label>
			                            <div class="controls">
			                                <input type="text" id="dademail" name="dademail">
			                            </div>
			                        </div>
			                  	</div>
			       			</div>
			       		</div>
			       		<div class="span6">
			            	<div class="area">
			                	<div class="form-horizontal">
			                        <div class="control-group">
			                            <label class="control-label">โทรศัพท์</label>
			                            <div class="controls">
			                                <input type="text" id="dadtel" name="dadtel">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">อาชีพ</label>
			                            <div class="controls">
			                                <input type="text" id="dadoccur" name="dadoccur">
			                            </div>
			                        </div>	
			                        <div class="control-group">
			                            <label class="control-label">ศาสนา</label>
			                            <div class="controls">
			                            	<select  id="dadregion" name="dadregion">
						                    	<option></option>
						                    	<option>พุทธ</option>
						                    	<option>คริสต์</option>
						                    	<option>อิสลาม</option>
						                    	<option>พราหมณ์-ฮินดู</option>
						                  	</select>
			                            </div>
			                        </div>
			                  	</div>
			       			</div>
			       		</div>
			       	</div>
			  	</div>
			    <div class="control-group" style="margin-right: 170px;">
			    	<div class="controls">
			        	<input type="button" id="updateprofilebtn" value="บันทึกข้อมูลส่วนตัว" class="btn btn-primary btn-small" style="float: right;">
			       	</div>
			   	</div>
			</div>
			</form>
      	</div>
		
		<%@ include file="includeFooter.jsp" %>
	    
	</body>
</html>
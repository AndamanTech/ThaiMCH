<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.google.appengine.api.blobstore.*" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>
<% BlobstoreService blobstoreService =BlobstoreServiceFactory.getBlobstoreService(); %>

<!DOCTYPE html>
<html lang="en">
<head>

	<%@ include file="includePage.jsp" %>
	
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
	<script type="text/javascript" >
		var childid="<%=request.getParameter("childid")%>"
	</script>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/boostrap.file-input.js"></script>
	    <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/tranformDate.js"></script> --%>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/childProfile.js"></script>
</head>
	<body>
		
	    <!-- body -->
	    <div class="container marketing">
	    
	    <img src="../resources/img/sunanya_son.png" class="img-polaroid" width="160px" height="160px">
	    <%-- <form action="<%= blobstoreService.createUploadUrl("uploadchildimage") %>" enctype="multipart/form-data" method="post" >
	    	<input type="hidden" name="childid" value="<%=request.getParameter("childid")%>">
	    	<input type="file" name="studentPhoto" class="btn" title="asdf">
	    	<input type="submit" value="บันทึก">
	    </form> --%>
		<a id="momlinkbtn" class="btn" type="button"><i class="icon-chevron-left"></i> กลับหน้าแม่</a>
			<!-- Table child  -->
				 <%@ include file="childTab.jsp" %>
			<form class="form-horizontal">
			<div class="container">
			    <div class="heading">
			        <h4 class="form-heading">ข้อมูลลูก</h4>
			    </div>
			    <div class="row-fluid">
			        <div class="span12">
			            <div class="span6">
			                <div class="area">
			                	<form class="form-horizontal">
			                        <div class="control-group">
			                            <label class="control-label">เลขบัตรประชาชน</label>
			                            <div class="controls">
			                                <input type="text" id="id13_child">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">ชื่อ</label>
			                            <div class="controls">
			                                <input type="text" id="f_name_child">
			                            </div>
			                        </div>			                        
			                        <div class="control-group">
			                            <label class="control-label">นามสกุล</label>
			                            <div class="controls">
			                                <input type="text" id="l_name_child">
			                            </div>
			                        </div>			                        
			  					</form>
			  				</div>
			  			</div>		            
			  			<div class="span6">
			                <div class="area">
			                	<form class="form-horizontal">            
			                        <div class="control-group">
			                            <label class="control-label">วันเกิด</label>
			                            <div class="controls">
			                                <div class="input-append date" id="dp3"  data-date-format="dd/mm/yyyy">
												<input id="childbirth" type="text" class="datepicker" data-provide="datepicker" data-date-format="dd/mm/yyyy" readonly>
												<span class="add-on"><i class="icon-th"></i></span>
											</div>
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">กลุ่มเลือด</label>
			                            <div class="controls">
			                                <select id="blood">
			                                	<option value=""></option>
			                                	<option value="A">A</option>
			                                	<option value="Ab">AB</option>
			                                	<option value="B">B</option>
			                                	<option value="O">O</option>
			                                </select>
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">ศาสนา</label>
			                            <div class="controls">
			                                <select id="region">
			                                	<option value=""></option>
						                    	<option value="พุทธ">พุทธ</option>
						                    	<option value="คริสต์">คริสต์</option>
						                    	<option value="อิสลาม">อิสลาม</option>
						                    	<option value="พราหมณ์-ฮินดู">พราหมณ์-ฮินดู</option>
			                                </select>
			                            </div>
			                        </div>
			                    </form>
			                </div>
			            </div>	
			        </div>
			    </div>
				
				<div class="heading">
			        <h4 class="form-heading">บันทึกแรกเกิด</h4>
			    </div>
			    <div class="row-fluid">
			        <div class="span12">
			            <div class="span6">
			                <div class="area">
			                	<form class="form-horizontal">
			                    	<div class="control-group">
			                            <label class="control-label">เพศ</label>
			                            <div class="controls">
			                                <input type="text" id="gender">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">น้ำหนักแรกเกิด (ก.ก.)</label>
			                            <div class="controls">
			                                <input type="text" id="fweight">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">ความยาว (ซ.ม.)</label>
			                            <div class="controls">
			                                <input type="text" id="lengofbody">
			                            </div>
			                        </div>
			                        <div class="control-group">
			                            <label class="control-label">เส้นรอบศีรษะ (ซ.ม.)</label>
			                            <div class="controls">
			                                <input type="text" id="lengofhead">
			                            </div>
			                        </div>                      
			  					</form>
			  				</div>
			  			</div>		            
			  			<div class="span6">
			                <div class="area">
			                	<form class="form-horizontal">            
			                        <div class="control-group">
						            	<label class="control-label">ความผิดปกติแต่กำเนิด</label>
						                <div class="controls">
						                    <textarea id="fal_message" rows="4"></textarea>
						                </div>
						          	</div>						          
						          	<div class="control-group">
						            	<label class="control-label">ภาวะสุขภาพแรกเกิด</label>
						                <div class="controls">
						                    <textarea id="healthfirst" rows="4"></textarea>
						                </div>
						          	</div>
			                    </form>
			                </div>
			            </div>	
			        </div>
			    </div>
				<div class="control-group" style="margin-right: 170px;">
			    	<div class="controls">
			        	<input type="button" id="updateprofilechildbtn" value="บันทึกข้อมูลส่วนตัว" class="btn btn-primary btn-small" style="float: right;">
			       	</div>
			   	</div>
			</div>
			</form>
      	</div>
		
		<%@ include file="includeFooter.jsp" %>
	    
	</body>
</html>



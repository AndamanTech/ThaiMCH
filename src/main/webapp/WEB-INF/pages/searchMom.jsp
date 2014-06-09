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
	
	/*search*/
	    #custom-search-form {
	        margin:0;
	        margin-top: 5px;
	        padding: 0;
	    }
	    #custom-search-form .search-query {
	        padding-right: 3px;
	        padding-right: 4px \9;
	        padding-left: 3px;
	        padding-left: 4px \9;
	        /* IE7-8 doesn't have border-radius, so don't indent the padding */	 
	        margin-bottom: 0;
	        -webkit-border-radius: 3px;
	        -moz-border-radius: 3px;
	        border-radius: 3px;
	    }
	    #custom-search-form button {
	        border: 0;
	        background: none;
	        /** belows styles are working good */
	        padding: 2px 5px;
	        margin-top: 2px;
	        position: relative;
	        left: -28px;
	        /* IE7-8 doesn't have border-radius, so don't indent the padding */
	        margin-bottom: 0;
	        -webkit-border-radius: 3px;
	        -moz-border-radius: 3px;
	        border-radius: 3px;
	    }
	    .search-query:focus + button {
	        z-index: 3;   
	    }
		
	/* Responsive Css */
	     @media (max-width: 979px) {
			.marketing{
				margin: 40px auto 0px;
		}
	    @media (max-width: 767px) {
	      	.marketing .span4 + .span4 {
	        	margin-top: 40px;
	      	}
	    }	    
    </style>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/DT_bootstrap.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/datatable-1.9.4/media/js/jquery.dataTables.js"></script>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/tranformDate.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/newSearchMom.js"></script> --%>
	
	

</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
			<div id="legend">
				<legend>ค้นหารายชื่อแม่</legend>
			</div>	
			<!-- <div class="container">
				<div class="row">
			    	<div class="span12">
			        	<form id="custom-search-form" class="form-search form-horizontal pull-right">
			            	<div class="input-append span12">
			                    <input type="text" id="search_query" class="search-query input-block-level" placeholder="ค้นหาข้อมูลแม่">
			                    <button type="submit" class="btn"><i class="icon-search"></i></button>
			                </div>
			            </form>
			        </div>
				</div>
			</div> -->
			
			<br>
			
			<div class="container">
			    <div class="row">
			        <div class="span12" >
			            <a href="#AddMom" style="float: right;" role="button" data-toggle="modal" class="btn btn-small btn-primary">เพิ่มข้อมูลแม่</a>
			        </div>
			    </div>
			</div>			
			<div id="AddMom" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
			    <div class="modal-header">
			    	<h4>เพิ่มข้อมูลแม่</h4>	
				</div>
				<div class="modal-body">
					<div class="row-fluid">
      					<form id="addMomForm" class="form-horizontal" method="post" action="saveMom">
       	 					<fieldset>
					          	<div class="control-group">
					            	<label class="control-label" >ชื่อ</label>
					            	<div class="controls">
					              		<input type="text" class="input-medium" id="momName" name="momName">
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label" >นามสกุล</label>
					            	<div class="controls">
					              		<input type="text" class="input-medium" id="momLast" name="momLast">
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label" >เลขบัตรประชาชน</label>
					            	<div class="controls">
					              		<input type="text" maxlength="13" class="input-medium" id="momId13" name="momId13">
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label" >โทรศัพท์</label>
					            	<div class="controls">
					              		<input type="text" class="input-medium" maxlength="10" id="tel" name="tel">
					            	</div>
					          	</div>
					          	<div class="control-group">
					            	<label class="control-label" >ศาสนา</label>
					            	<div class="controls">
					              		<select class="input-medium" id="region" name="region">
						                    	<option value=""></option>
						                    	<option value="พุทธ">พุทธ</option>
						                    	<option value="คริสต์">คริสต์</option>
						                    	<option value="อิสลาม">อิสลาม</option>
						                    	<option value="พราหมณ์-ฮินดู">พราหมณ์-ฮินดู</option>
						                  	</select> 
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">อาชีพ</label>
					            	<div class="controls">
					              		<input type="text" class="input-medium" id="occupation" name="occupation">
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
            						<div class="controls">
              							<input type="button" class="btn btn-primary" style="float: right;" id="sendMom" value="บันทึก">
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
	    			<table id="momchildTable" cellpadding="0" cellspacing="0" border="0" class="table table-hover table-bordered">
		    			<thead>
			   				<tr>
			   					<!-- <th>Key mom</th> -->
								<th style="display:none;">Key mom</th>
			   					<th>วันที่เพิ่มในระบบ</th>
					   			<th>เลขบัตรประชาชน</th>
					   			<th>ชื่อ - สกุล แม่</th>
								<th>จำนวนบุตร</th>
			   					<!-- <th>บันทึกการตรวจครรภ์</th> -->
			   				</tr>
		    			</thead>
		    			<tbody>
		    				<tr>
		    					<td>25/04/2014</td>
		    					<td>3333333333333</td>
		    					<td><a href="/thaimch/momProfile">สมศรี  อายสม</a></td>
		    					<td>2 คน</td>
		    				</tr>
		    				
							<!-- <tr>
								<td colspan="5" class="dataTables_empty">Loading data from server</td>
							</tr> -->
	
							<!-- <tr>
			   					<td></td>
			   					<td></td>
			   					<td></td>
			   					<td><a href="/tmch/newMomPolicingHistory" class="btn btn-small btn-primary">ดูบันทึกการตรวจ</a></td>
			   				</tr> -->
			   			</tbody>
	    			</table>
	    			
	    		</div>
			</div>
      	</div>
		
		<%@ include file="includeFooter.jsp" %>
	    
	</body>
</html>



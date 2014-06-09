<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expres", 0);
%>

<!DOCTYPE html>
<html lang="en">
<head>
	
	<%@ include file="include.jsp" %>
	
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
<%-- 	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/searchOrgForReg.js"></script> --%>
</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
			<div id="legend">
				<legend>ค้นหาองค์กร  </legend>
			</div>
			<div class="container">
				<div class="row">
			    	<div class="span12">
			        	<form id="custom-search-form" class="form-search form-horizontal pull-right">
			            	<div class="input-append span12">
			                    <input type="text" class="search-query input-block-level" placeholder="Search" id="typeahead">
			                    <button type="submit" class="btn"><i class="icon-search"></i></button>
			                </div>
			            </form>
			        </div>
				</div>
			</div>
			<br>
			<div class="container">
			    <div class="row">
			        <div class="span12" >
			            <a href="/thaimch/addOrg" style="float: right;" class="btn btn-small btn-primary">เพิ่มองค์กร</a>
			        </div>
			    </div>
			</div>			
			<br>
			<div class="row">
	        	<div class="span12">
	    			<table class="table table-hover table-bordered" id="tableOrg">
		    			<thead>
			   				<tr>
			   					<!-- <th>#</th> -->
			   					<th>ชื่อองค์กร</th>
			   					<th>ประเภทองค์กร</th>
			   					<th>จังหวัด</th>
			   					<th>จำนวนเจ้าหน้าที่</th>
			   					<th>ลงทะเบียนเจ้าหน้าที่</th>
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



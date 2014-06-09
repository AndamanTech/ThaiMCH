<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			margin: 150px auto 0px;
		}
		
	/*Block Btn*/
		.pricing-table .plan {
		  	border-radius: 5px;
		  	text-align: center;
		  	background-color: #f3f3f3;
		  	-moz-box-shadow: 0 0 6px 2px #b0b2ab;
		  	-webkit-box-shadow: 0 0 6px 2px #b0b2ab;
		  	box-shadow: 0 0 6px 2px #b0b2ab;
		} 
		.plan:hover {
		  	background-color: #fff;
		  	-moz-box-shadow: 0 0 12px 3px #b0b2ab;
		  	-webkit-box-shadow: 0 0 12px 3px #b0b2ab;
		  	box-shadow: 0 0 12px 3px #b0b2ab;
		} 
		.plan {
		  	padding: 20px;
		  	color: #ff;
		  	background-color: #5e5f59;
		  	-moz-border-radius: 5px 5px 0 0;
		  	-webkit-border-radius: 5px 5px 0 0;
		  	border-radius: 5px 5px 0 0;
		}
		.pricing-three-column {
		  	margin: 0px auto 0px;
		  	width: 80%;
		}
	
	/* Responsive Css */
	     @media (max-width: 979px) {
			.marketing{
				margin: 75px auto 0px;
		}
	    @media (max-width: 767px) {
	      	.marketing .span4 + .span4 {
	        	margin-top: 40px;
	      	}
	    }    
    </style>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/newIndex.js"></script> --%>
</head>
	<body>

	    <!-- body -->
	    <div class="container marketing" id="table">    
		    
      	</div>
      	
      	<%@ include file="includeFooter.jsp" %>
      	
	</body>
</html>
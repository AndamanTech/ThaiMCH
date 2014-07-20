var jsonObj;
$(document).ready(function(){
		$.ajax({
			url : 'getChildProfile',
			type : 'GET',
			dataType :'json',
			data : 'childid='+childid,
			success : function(data){
				console.log(data);
				jsonObj= data;
//				$('#momlinkbtn').attr({'href':'newMomProfile?momid='+jsonObj.momid});
				// set child profile
				$('#f_name_child').val(jsonObj.child_firstname);
				$('#l_name_child').val(jsonObj.child_lastname);
				$('#id13_child').val(jsonObj.child_id13);
				$('#childbirth').val(jsonObj.child_birthday);
				$('#region').val(jsonObj.child_religion);
				$('#gender').val(jsonObj.child_gender);
				$('#fweight').val(jsonObj.child_weight);
				$('#lengofbody').val(jsonObj.child_height);
				$('#lengofhead').val(jsonObj.child_length_of_head);
				
				/*$('#message').val(jsonObj.childProfile.f_name);
				$('#fal_message').val(jsonObj.childProfile.falseborn);
				$('#healthfirst').val(jsonObj.childProfile.healthborn);*/
				$('#blood').val(jsonObj.child_blood);
			}
		});
		//set calenda
		$('.datepicker').datepicker({
		    format: 'dd/mm/yyyy',
		    autoclose: true,
		    keyboardNavigation: false,
		    forceParse: false,
//		    language: "th",
//		    changeYear: true,
		    clearBtn : true,
		    todayHighlight : true,
//		    todayBtn : true,
		    language:'th-th'
		});
		 
			function getDataForm(){
				var params = {
						// key child
					childid : childid,
					childname : $('#f_name_child').val(),
					childlname : $('#l_name_child').val(),
					childid13 : $('#id13_child').val(),
					childbirth : $('#childbirth').val(),
					gender : $('#gender').val(),
					fweight : $('#fweight').val(),
					lengthofbody : $('#lengofbody').val(),
					lengthofhead : $('#lengofhead').val(),
					falmessage : $('#fal_message').val(),
					healthfirsts : $('#healthfirst').val(),
					blood : $('#blood').val(),
					region : $('#region').val(),
					
			}
				return params;
			}
			// click btn update
			$('#updateprofilechildbtn').click(function(){
				var paramdata=getDataForm();
				$.ajax({
					type : 'POST',
					url : 'updatechildprofile',
					data : $.param(paramdata),
					success : function(){
						alert('บันทึกสำเร็จ');
					},
					error:function(){
						alert('ผิดพลาด');
					}
				});
			});
});
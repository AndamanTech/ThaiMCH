$(document).ready(function(){
	
	$.ajax({
		url : 'MomHealthHistory',
		type : 'GET',
		dataType : 'json',
		data : {momid: momid},
		success : function(data){
			console.log(data);
			$('#momhistory_id').val(data.mom_health_history_id);
			// set mom birthday
//			if(data.momhealthhistory.mom_birth != null){
				$('#mombirth').val(data.mom_birthday);
//			}else{
//				$('#mombirth').val('');
//			}

			$('#weightmom').val(data.mom_weight);
			$('#heightmom').val(data.mom_height);
			$('#contraception').val(data.mom_contraception);
			$('#surgicalHistory').val(data.mom_surgical_history);
			$('#allergicHistory').val(data.mom_allergic_history);
			$('#physicalHealth').val(data.mom_physical_health);
		},error:function(data){
			console.log("Error");
		}
	});
	
//	$('.datepicker').datepicker({language:'th',format:'dd/mm/yyyy'});
	
	//set calenda
	$('.datepicker').datepicker({
	    format: 'dd/mm/yyyy',
	    autoclose: true,
	    keyboardNavigation: false,
	    forceParse: false,
//	    language: "th",
//	    changeYear: true,
	    clearBtn : true,
	    todayHighlight : true,
//	    todayBtn : true,
	    language:'th-th'
	});
	function getData(){
		var params={
				momhistory_id : $('#momhistory_id').val(),
//				mombirth :$('#mombirth').val(),
				weight : $('#weightmom').val(),
				height : $('#heightmom').val(),
				contraception : $('#contraception').val(),//การคุมกำเนิด
				surgicalHistory : $('#surgicalHistory').val(),// การผ่าตัด
				allergicHistory : $('#allergicHistory').val(),//การแพ้ยา
				physicalHealth : $('#physicalHealth').val(),// การเจ็บป่วย
		};
		return params;
	}
	// save data
	$('#savedatahealthbtn').click(function(){
		params=getData();
		console.log('Log :  '+$.param(params));
		
		$.ajax({
			url : 'updateMomhistory',
			type : 'POST',
			data : $.param(params), 
			success : function(){
				alert('สำเร็จ');
			},error : function(){
				alert('ผิดพลาด');
			}
			
		});
	});
});
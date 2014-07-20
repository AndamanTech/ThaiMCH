var jsonObj
$(document).ready(function(){
	
	$.ajax({
		url : 'getvaccinebychildid',
		data : {childid : childid},
		type : 'POST',
		success : function(record){
			 jsonObj=$.parseJSON(record);
			 console.log(jsonObj);
			 $('#child_vaccine').val(jsonObj.child_vaccine_id);
			 $('#bcg1').val(jsonObj.bcg1);
			 $('#hb1').val(jsonObj.hb_vac_1); 
			 $('#hb2').val(jsonObj.hb_vac_2); 
			 $('#opv1').val(jsonObj.opv_vac_1);
			 $('#opv2').val(jsonObj.opv_vac_2);	 
			 $('#opv3').val(jsonObj.opv_vac_3);
			 $('#mmr1').val(jsonObj.mmr_vac_1);
			 $('#mmr2').val(jsonObj.mmr_vac_2);
			 $('#opv4').val(jsonObj.opv_vac_4);
			 $('#opv5').val(jsonObj.opv_vac_5);
			 $('#je1').val(jsonObj.je_vac_1);
			 $('#je2').val(jsonObj.je_vac_2);
			 $('#je3').val(jsonObj.je_vac_3);
			 $('#dt1').val(jsonObj.dt_1);

		}
	});
	
	
	
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
		var params ={
				childid : childid,
				child_vaccine_id : $('#child_vaccine').val(),
				bcg1 : $('#bcg1').val(),
				hb1 : $('#hb1').val(),
				hb2 : $('#hb2').val(),
				opv1 : $('#opv1').val(),
				opv2 : $('#opv2').val(),
				opv3 : $('#opv3').val(),
				mmr1 : $('#mmr1').val(),
				mmr2 : $('#mmr2').val(),
				opv4 : $('#opv4').val(),
				opv5 : $('#opv5').val(),
				je1 : $('#je1').val(),
				je2 : $('#je2').val(),
				je3 : $('#je3').val(),
				dt1 : $('#dt1').val(),
		};
		return params;
	}
	
	
	$('#savevaccinebtn').click(function(){
		//alert('asdfas');
		var params=getData();
		console.log($.param(params));
		$.ajax({
			url : 'updatevaccine',
			data : $.param(params),
			type : 'POST',
			success : function(){
				alert('success');
			},error : function(){
				alert('error');
			}
		});
	});
});
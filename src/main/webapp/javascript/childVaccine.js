var jsonObj
$(document).ready(function(){
	
/*	$.ajax({
		url : 'getvaccinebychildid',
		data : {childid : childid},
		type : 'POST',
		success : function(record){
			 jsonObj=$.parseJSON(record);
			 
			 if(jsonObj.bcg_vac != null){
				 $('#bcg1').val(transformDateForSetDateField(jsonObj.bcg_vac));
				 }else{
					$('#bcg1').val(''); 
				 }
			 
			 if(jsonObj.hb_vac_1 != null){
				$('#hb1').val(transformDateForSetDateField(jsonObj.hb_vac_1)); 
			 }else{
				$('#hb1').val(''); 
			 }
			 
			 if(jsonObj.hb_vac_2 != null){
				$('#hb2').val(transformDateForSetDateField(jsonObj.hb_vac_2)); 
			 }else{
				$('#hb2').val(''); 
		     }
			 
			 if(jsonObj.opv_vac_1 != null){
				 $('#opv1').val(transformDateForSetDateField(jsonObj.opv_vac_1));
			 }else{
				 $('#opv1').val('');
			 }
			 
			 if(jsonObj.opv_vac_2!= null){
				 $('#opv2').val(transformDateForSetDateField(jsonObj.opv_vac_2));
			 }else{
				 $('#opv2').val('');
			 }
			 
			 if(jsonObj.opv_vac_3!= null){
				 $('#opv3').val(transformDateForSetDateField(jsonObj.opv_vac_3));
			 }else{
				 $('#opv3').val('');
			 }

			if(jsonObj.mmr_vac_1!= null){
				$('#mmr1').val(transformDateForSetDateField(jsonObj.mmr_vac_1));
			}else{
				$('#mmr1').val('');
			}
			
			if(jsonObj.mmr_vac_2!= null){
				$('#mmr2').val(transformDateForSetDateField(jsonObj.mmr_vac_2));
			}else{
				$('#mmr2').val('');
			}
			
			if(jsonObj.opv_vac_4!= null){
				$('#opv4').val(transformDateForSetDateField(jsonObj.opv_vac_4));
			}else{
				$('#opv4').val('');
			}
			
			if(jsonObj.opv_vac_5!= null){
				 $('#opv5').val(transformDateForSetDateField(jsonObj.opv_vac_5));
			}else{
				 $('#opv5').val('');
			}
			
			if(jsonObj.je_vac_1!= null){
				$('#je1').val(transformDateForSetDateField(jsonObj.je_vac_1));
			}else{
				$('#je1').val('');
			}
			if(jsonObj.je_vac_2!= null){
				$('#je2').val(transformDateForSetDateField(jsonObj.je_vac_2));
			}else{
				$('#je2').val('');
			}
			
			if(jsonObj.je_vac_2!= null){
				$('#je3').val(transformDateForSetDateField(jsonObj.je_vac_2));
			}else{
				$('#je3').val('');
			}
			
			if(jsonObj.dt_1!= null){
				$('#dt1').val(transformDateForSetDateField(jsonObj.dt_1));
			}else{
				$('#dt1').val('');
			}
		}
	});*/
	
	
	
	$('.datepicker').datepicker({
	    format: 'dd/mm/yyyy',
	    autoclose: true,
	    keyboardNavigation: false,
	    forceParse: false,
	    language: "th",
	});
	
	function getData(){
		var params ={
				childid : childid,
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
	
	
	/*$('#savevaccinebtn').click(function(){
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
	});*/
});
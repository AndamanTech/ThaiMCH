var temp_data;
$(document).ready(function() {
	$.ajax({
		url : 'getMomProfile',
		type : 'GET',
		dataType : 'json',
		data : {
			momid : momid
		},
		success : function(data) {
			console.debug(data);
			temp_data = data;
			console.log(data.mom_firstname);
			// mother
			$('#momname').val(data.mom_firstname);
			$('#momlname').val(data.mom_lastname);
			$('#momid13').val(data.mom_id13);
			$('#emailmom').val(data.mom_email);
			$('#telmom').val(data.mom_telno);
			$('#occurmom').val(data.mom_occupation);
			$('#regionmom').val(data.mom_religion);

			// father
			$('#dadfname').val(data.dad_firstname);
			$('#dadlname').val(data.dad_lastname);
			$('#dadid13').val(data.dad_id13);
			$('#dademail').val(data.dad_telno);
			$('#dadtel').val(data.dad_email);
			$('#dadoccur').val(data.dad_occupation);
			$('#dadregion').val(data.dad_religion);

			// address
			$('#noaddress').val(data.address_no);
			$('#moo').val(data.address_soi);
			$('#soi').val(data.address_soi);
			$('#road').val(data.address_road);
			$('#locality').val(data.address_tumbol);
			$('#distric').val(data.address_amphur);
			$('#province').val(data.address_changwat);
			$('#zipcode').val(data.address_zipcode);

		},
		error : function(data) {
			console.log(data);
		}
	});

	function getDataForm() {
		var params = {
			momid : $('#momid').val(),
			// mom information
			momfname : $('#momname').val(),
			momlname : $('#momlname').val(),
			momid13 : $('#momid13').val(),
			emailmom : $('#emailmom').val(),
			momtel : $('#telmom').val(),
			momoccur : $('#occurmom').val(),
			momregion : $('#regionmom').val(),
			// dad information
			dadfname : $('#dadfname').val(),
			dadlname : $('#dadlname').val(),
			dadid13 : $('#dadid13').val(),
			dademail : $('#dademail').val(),
			dadtel : $('#dadtel').val(),
			dadoccur : $('#dadoccur').val(),
			dadregion : $('#dadregion').val(),
			// address information
			noaddress : $('#noaddress').val(),
			moo : $('#moo').val(),
			soi : $('#soi').val(),
			road : $('#road').val(),
			locality : $('#locality').val(),
			distric : $('#distric').val(),
			province : $('#province').val(),
			zipcode : $('#zipcode').val(),

		}
		return params;
	}
	$('#updateprofilebtn').click(function(){
		var paramdata=getDataForm();
		console.log(paramdata);
		$.ajax({
			type : 'POST',
			url : 'updatemomprofile',
			data : $.param(paramdata),
			success : function(){
				alert('บันทึกสำเร็จ');
			}
		});
	});
});
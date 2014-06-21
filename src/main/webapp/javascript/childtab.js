$(document).ready(function(){
	
	
	
	var file=url.split('/');
//	console.log(file);
//	console.log(file[3]);
	var fid=file[3].split('.');
	var dd=fid[0];
	console.log(dd);
	
	$('#childprofile').attr({'href':'childprofilepage?childid='+childid});
	$('#childatv').attr({'href':'childpactv?childid='+childid});
	$('#childvcn').attr({'href':'childvaccine?childid='+childid});
	//$('#chidappoint').attr({'href':'newChildAppointment?childid='+childid});

	if(dd=='childProfile'){
		$('#childprofiletab').attr({'class':'active'});
	}else if(dd=='childActv'){
		$('#childactvtab').attr({'class':'active'});
	}else if(dd == 'childVaccine'){
		$('#childvactab').attr({'class':'active'});
	}/*else if(dd =='newChildAppointment'){
		$('#childappointtab').attr({'class':'active'});
	}*/
	
	
	
});
$(document).ready(function(){
	// set link mom profile
	$('#momProfileLink').attr({'href':'momProfile'});//?momid='+momid});
	$('#momhealth').attr({'href':'momHealth'});//?momid='+momid});
	$('#momhistory').attr({'href':'momHistory'});//?momid='+momid});
	$('#momchildList').attr({'href':'childList'});//?momid='+momid});
	/*$('#momlistappoint').attr({'href':'newMomAppointment?momid='+momid});*/

	//--------------
	//Set the two dates
	today=new Date()
	var christmas=new Date(2015,11,25);//(today.getFullYear(), 11, 25) //Month is 0-11 in JavaScript
	if (today.getMonth()==11 && today.getDate()>25) //if Christmas has passed already
	christmas.setFullYear(christmas.getFullYear()+1) //calculate next year's Christmas
	//Set 1 mounth in milliseconds
	var one_mounth=1000*60*60*24*30;

	//Calculate difference btw the two dates, and convert to days
/*	console.log(Math.ceil((christmas.getTime()-today.getTime())/(one_mounth))+
	" mounth left until Christmas!")*/
	
	
});
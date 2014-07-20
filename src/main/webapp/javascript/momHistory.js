$(document).ready(function(){
	/*$('.datepicker').datepicker({
	    format: 'dd/mm/yyyy',
	    autoclose: true,
	    keyboardNavigation: false,
	    forceParse: false,
	    language: "th",
//	    changeYear: true,
	    clearBtn : true,
	    todayHighlight : true,
//	    todayBtn : true,
//	    language:'th-th'
	});*/
	
	$.ajax({
		url : 'getMomWomb',
		type : 'GET',
//		dataType : 'json',
		data : {momid: momid},
success : function(data,textStatus,jqXHR ){
			
			//alert('asdfsdf');
			//console.log(data);
			jsonObj=$.parseJSON(data);
			var len =jsonObj.length;
			var txt='';
			for(var i=0;i<len;i++){
				/*var dd=transformDateForSetDateField(jsonObj[i].predictbirth);
				console.log(new Date(jsonObj[i].predictbirth));*/
//				var dd=jsonObj[i].mom_predit_be_born;
				txt+='<tr>'+
				'<td>'+jsonObj[i].mom_womb_order+'</td>'+
				'<td>'+jsonObj[i].mom_predit_be_born+'</td>'+
				'<td>'+
				//'<td></td>'+
					'<a href="#Pregnancy'+i+'" data-toggle="modal" class="btn btn-small btn-primary">ดูประวัติครรภ์</a>	'+
				'<div id="Pregnancy'+i+'" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">'+
					'<div class="modal-header">'+
			    	'<h4>ประวัติครรภ์</h4>	'+
				'</div>'+
				'<div class="modal-body">'+
					'<div class="row-fluid">'+
      					'<form class="form-horizontal">'+
       	 					'<fieldset>'+
					          	'<div class="control-group">'+
					            	'<label class="control-label">ครรภ์ที่</label>'+
					            	'<div class="controls">'+
					              		'<input type="text" class="input-medium" readonly value="'+jsonObj[i].mom_womb_order+'">'+
					            	'</div>'+
					          	'</div>'+											          	
					          	'<div class="control-group">'+
					            	'<label class="control-label">คาดคะเนกำหนดการคลอด</label>'+
					            	'<div class="controls">'+
					              		'<input type="text" class="input-medium" readonly value="'+jsonObj[i].mom_predit_be_born+'">'+
					            	'</div>'+
					          	'</div>'+											          	
					          	'<div class="control-group">'+
					            	'<label class="control-label">น้ำหนักก่อนตั้งครรภ์ (ก.ก.)</label>'+
					            	'<div class="controls">'+
					              		'<input type="text" class="input-medium" readonly value="'+jsonObj[i].mom_weight_before_womb+'">'+
					            	'</div>'+
					          	'</div>'+											          	
					          	'<div class="control-group">'+
					            	'<label class="control-label">ผ่าตัดคลอด (ครั้ง)</label>'+
					            	'<div class="controls">'+
					              		'<input type="text" class="input-medium" readonly value="'+jsonObj[i].mom_operated_on_womb+'">'+
					            	'</div>'+
					          	'</div>'+											          											          												          	
        					'</fieldset>'+
     					'</form>'+
    				'</div>'+
				'</div>'+
			'</div>'+
		'</td>'+
			'<td><a href="/tmch/newMomPolicingHistory?pregid='+jsonObj[i].mom_womb_history_id+'&momid='+momid+'" class="btn btn-small btn-primary">ดูบันทึกการตรวจครรภ์</a></td>'+
		'</tr>';
			}
			
			if(txt!=''){
				$('table#listPreg tbody').html(txt);
			}
		},
		error: function(){
			alert('error');
		}
	});
	

	// order pregnancy 
	var digits = ["1", "2", "3", "4", "5", "6", "7", "8"];
	$('#pregorder').jqxDropDownList({selectedIndex:0,source : digits, autoDropDownHeight : true,width : 60 ,height : 20})
	
	//setting date
	/*$('#childbirth').jqxDateTimeInput({ 
		width: '100px', 
		height: '20px', 
		formatString: 'd-MM-yyyy',
		allowNullDate: true
	});*/
	$('.datepicker').datepicker({
	    format: 'dd/mm/yyyy',
	    autoclose: true,
	    keyboardNavigation: false,
	    forceParse: false,
	    language: "th",
	});
//	$("#childbirth").val(null);
	// setting weight before pregnancy
	//$('#weight-bf-preg').jqxNumberInput({ width: '100px', height: '20px', inputMode: 'simple',decimalDigits: 2 ,spinMode: 'simple'});
	//$('#weightbfpreg').jqxNumberInput({ width: '100px', height: '20px', inputMode: 'simple',decimalDigits: 2 ,spinMode: 'simple'});

	//setting height 
	//$('#heightmom').jqxNumberInput({ width: '100px', height: '20px', inputMode: 'simple',decimalDigits: 2 ,spinMode: 'simple'});
	
	//setting validate form
	$('#addpregform').jqxValidator({
		hintType : 'label',
		rules:[
		       //{input:'#pregorder',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
		       {input:'#childbirth',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
		       //{input:'#weight-bf-preg',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
		     /* {input:'#ct_preg',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},*/

		       
		]
	});
	function getDataParam(){
		var data = {
				momid : 	momid,
				pregorder : $('#pregorder').val(),
				childbirth : $('#childbirth').val(),
				weightbfpreg : $('#weightbfpreg').val(),
				//heightmom : $('#heightmom').val(),
				amountCesarean : $('#amountCesarean').val(),
				ct_preg : $('#ct_preg').val(),
				physicalHealth : $('#physicalHealth').val(),
				surgicalHistory : $('#surgicalHistory').val(),
				surgery : $('#surgery').val(),
				
		};
		return data;
	}
	$('#savehcmom').click(function(){
		//alert('asdfasdf');
		var validationResult=function(isValid){
			if(isValid){
				//$('#addMomForm').submit();
				//$('#addpregform').submit(function(){
					//event.preventDefault();
				var params = $.param(getDataParam());
					// get value
					console.log($('#weightbfpreg').val());
					$.ajax({
						type : 'POST',
						url : 'addPregnancy',
						data : params,
						success : function(){
							alert('บันทึกสำเร็จ');
						},
						error : function(){
							alert('เกิดข้อผิดพลาด');
						}
					});
					
				//});
				$('#savehcmom').attr({'data-dismiss' :'modal','aria-hidden':'true' });
				
			}else{
				alert ('fail!!');
			}
		}
		$('#addpregform').jqxValidator('validate',validationResult);

	});
	
});
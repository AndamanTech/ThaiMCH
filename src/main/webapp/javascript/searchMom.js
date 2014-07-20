$(document).ready(function(){
	
	// end submit for search
	// add mom
	$('#addMomForm').jqxValidator({
		hintType : 'label',
		rules:[
			{input:'#momName',message:'กรุณาระบุชื่อ',action: 'keyup, blur', rule: 'required'},
			{input:'#momLast',message:'กรุณาระบุนามสกุล',action:'keyup , blue',rule:'required'},
			{input:'#momId13',message : 'กรุณาระบุเลขบัตรประชาชน',action:'keyup , blue',rule:'required'},
			{input:'#momId13',message : 'ระบุไม่ถูกต้อง',action:'keyup , blue',rule:function(){
				var id13mom=$('#momId13').val();
				if((id13mom.length ==13) && $.isNumeric(id13mom)){
					return true;
				}else {
					return false;
				}
			}},
			{input:'#tel',message : 'กรุณากรอกเบอร์โทรศัพท์',action:'keyup , blue',rule:'required'},
			{input:'#tel',message : 'ระบุไม่ถูกต้อง',action:'keyup , blue',rule:function(){
				var tel=$('#tel').val();
				if($.isNumeric(tel)){
					return true;
				}else {
					return false;
				}
			}},
			{input:'#tel',message : 'ระบุไม่ถูกต้อง',action:'keyup , blue',rule:'length=9,10'},
			/*{input:'#region',message : 'กรุณาระบุศาสนา',action:'keyup , blue',rule:'required'},*/
			/*{input:'#region',message : 'กรุณาระบุศาสนา',action:'keyup , blue',rule: function(){
					var region=$('#region').val();
					if(region!=""){
						$('#region').val(region);
						return true;
					}else{
						return false;
					}
			}},*/
			{input:'#occupation',message : 'กรุณากรอกอาชีพ',action:'keyup , blue',rule:function(){
				var occupation=$('#occupation').val();
				if(occupation!=""){
					return true;
				}else{
					return false;
				}
			}}
			
		]
	});
	$('#sendMom').click(function(){
		var validationResult=function(isValid){
			if(isValid){
				$('#addMomForm').submit();
				$('#sendMom').attr({'data-dismiss' :'modal','aria-hidden':'true' });
			}
		}
		$('#addMomForm').jqxValidator('validate',validationResult);
	});
	
	 $("#momchildTable").dataTable( {
	        "bProcessing": false,
	        "bServerSide": false,
//	        "sort": "position",
	        "sAjaxSource": "getallmom",
	        "aoColumns": [
	            { "mData": "mom_id" },
	            { "mData": "mom_firstname" },
	            { "mData": "mom_lastname" },
	            /*{ "mData": "phone" },
	            { "mData": "start_date" },
	            { "mData": "salary" },*/
	             
	        ]
	    } );
});
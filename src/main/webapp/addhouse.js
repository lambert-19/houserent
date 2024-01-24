const form =document.querySelector('#addhouse');
const title=document.querySelector('#title');
const floor=document.querySelector('#floor');
const house_type=document.querySelector('#house_type');
const address=document.querySelector('#address');
const owner=document.querySelector('#o_name');
const o_phone=document.querySelector('#o_phone');
const o_id=document.querySelector('#o_id');
const a_name=document.querySelector('#a_name');
const a_phone=document.querySelector('#a_phone');
const rent=document.querySelector('#rent');
const deposit=document.querySelector('#deposit');
const description=document.querySelector('#description');
const district =document.querySelector('#district');
const hall=document.querySelector('#hall');
const file =document.querySelector('#file');
const area =document.querySelector('#area');
const category=document.querySelector('#category');
const stats=document.querySelector('#status');
const check=document.querySelector('#flexChexDefault');

var checkboxdata;

form.addEventListener('submit',(e)=>{
	checkInput();

	if(isValid()==true){
		form.submit();
	}else{
	e.preventDefault();
	}
	
});

function isValid(){
	const input=form.querySelectorAll('.mb-3');
	let result=true;
	input.forEach((container)=>{
		if(container.classList.contains('error')){
			result=false;
		}
	});
	return result;
}


function checkInput(){
	//Title Validation
	if(title.value.trim()==''){
		setError(title,'please fill this blank');
	}else if(title.value.trim().length>=3000){
		setError(title,'title should be less 3000');
	}else{
		setSuccess(title);
	}
	
	// floor validation
	
	if(floor.value.trim()==''){
		setError(floor,'please fill the blank');
	}else if(floor.value.trim().length>3){
		setError(floor,'floor number should not not exceed 3 digits');
	}
	else if(!onlyNumberKey(floor.value.trim())){
		setError(floor,'please insert numbers');
	}
	else{
		setSuccess(floor);
	}
	// house type validation
	if(house_type.value.trim()=='House Type'){
		setError(house_type,'please select an option');
	}else{
		setSuccess(house_type);
	}
	
	// address validation
	
	if(address.value.trim()==''){
		setError(address,'please fill this blank');
	}else{
		setSuccess(address);
	}
	
	// owner validation 
	if(owner.value.trim()==''){
		setError(owner,'please fill the blank');
	}
	else{
		setSuccess(owner);
	}
	// owner phone validation
	if(o_phone.value.trim()==''){
		setError(o_phone,'please fill your phone number');
	}else if(o_phone.value.trim().length!=11){
		setError(o_phone,'phone number should be 11 digits');
	}else if(!isvalidPhone2(o_phone.value.trim())){
		setError(o_phone,'Please insert your phone number');
	}else{
		setSuccess(o_phone);
	}
	//owner id validation
	if(o_id.value.trim()==''){
		setError(o_id,'please fill your id');
	}else if(o_id.value.trim().length!=13){
		setError(o_id,'your id number must be 13 digits');
	}else if(!isvalidPhone2(o_id.value.trim())){
		setError(o_id,'please inset your id number');
	}else{
		setSuccess(o_id);
	}
	// agent name validation
	if(a_name.value.trim()==''){
		setError(a_name,'please fill the blank');
	}else if(onlyNumberKey(a_name.value.trim())){
		setError(a_name,'only characters');
	}else {
		setSuccess(a_name);
	}
	// agent phone validation
	if(a_phone.value.trim()==''){
		setError(a_phone,'please fill your phone number');
	}else if(a_phone.value.trim().length!=11){
		setError(a_phone,'phone number should be 11 digits');
	}else if(!isvalidPhone2(a_phone.value.trim())){
		setError(a_phone,'please insert your phone number');
	}else{
		setSuccess(a_phone);
	}
	
	//rent validation 
	
	if(rent.value.trim()==''){
		setError(rent,'please fill this blank');
	}else if(!onlyNumberKey(rent.value.trim())){
		setError(rent,'enter the price of the rent')
	}else if(rent.value.trim().length>4){
		setError(rent,'the rent price should not exceed 4 digits');
	}
	else{
		setSuccess(rent);
	}
	
	// deposit validation
	if(deposit.value.trim()==''){
		setError(deposit,'please fill this blank');
	}else if(!onlyNumberKey(deposit.value.trim())){
		setError(rent,'enter the deposit')
	}else if(deposit.value.trim().length>4){
		setError(deposit,'the deposit should not exceed 4 digits');
	}
	else{
		setSuccess(deposit);
	}
	// description validation
	
	if (description.value.trim().length<1){
		setError(description,'please fill the blank');
	}else if(description.value.trim().length>=5000){
		setError(description,'description should be less than 5000 characters ');
	}else{
		setSuccess(description);
	}
	
	// district validation
	
	if (district.value.trim()==''){
		setError(district,'please fill the blank');
	}else if(district.value.trim().length>=20){
		setError(district,'district should be less than 20 characters ');
	}else{
		setSuccess(district);
	}
	
	// hall validation 
	
	if(hall.value.trim()=='Hall'){
		setError(hall,'please select an option');
	}else{
		setSuccess(hall);
	}
	
	// area validation
	if (area.value.trim()==''){
		setError(area,'please fill the blank');
	}else if(!onlyNumberKey(area.value.trim())){
		setError(area,'only digits');
	}else if(area.value.trim().length>=4){
		setError(area,'area should not exceed 3 digits');
	}
	else{
		setSuccess(area);
	}
	
	
	// category validation
	if(category.value.trim()=='CATEGORY'){
		setError(category,'please select an option');
	}else{
		setSuccess(category);
	}
	
	// status validation
	
	if(stats.value.trim()=='STATUS'){
		setError(stats,'please select an option');
	}else{
		setSuccess(stats);
	}
	
	// file validation
	
	if(file.value.trim()==''){
		setError(file,'please fill this blank');
	}else if(!fileValidation(file.value.trim())){
		setError(file,'Format should be .jpg,.png,.jpeg,.gif');
	}
	else{
		setSuccess();
	}
	
	// 

	var checked = document.querySelectorAll('input:checked');
	if(checked.length===0){
	alert('please select facilities');
      return false;
}

}





	function setError(element,msg){
	element.style.border='5px red solid';
	const parent=element.parentElement;
	const p =parent.querySelector('p');
	parent.classList.remove("success");
	parent.classList.add("error");
	p.textContent=msg;
	p.style.visibility='visible';
}

function setSuccess(element){
	element.style.border='5px green solid';
	const parent=element.parentElement;
	const p =parent.querySelector('p');
	parent.classList.remove("error");
	parent.classList.add("success");
	p.style.visibility='hidden';
}

function isvalidPhone2(o_phone,o_id,a_phone){
	 var re = /^\(?([0-9]{3})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
	 return re.test(o_phone,o_id,a_phone);
}


function onlyNumberKey(floor,a_name,rent,deposit,area){
	var re= /^[0-9]+$/;
	return re.test(floor,a_name,rent,deposit,area);
}
 function fileValidation(file)
{
	var re=/(\.jpg|\.jpeg|\.png|\.gif)$/i;
	return re.test(file);
}

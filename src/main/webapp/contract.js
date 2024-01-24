const form=document.querySelector('#contract');
const floor=document.querySelector('#floor');
const address=document.querySelector('#address');
const lessor=document.querySelector('#lessor_name');
const l_phone=document.querySelector('#lessor_phone');
const renter_name=document.querySelector('#renter_name');
const id_renter=document.querySelector('#id_renter');
const r_phone=document.querySelector('#renter_phone');
const lease_term=document.querySelector('#lease_term');
const rent=document.querySelector('#rent');
const agency_fee=document.querySelector('#agency_fee');
const agent=document.querySelector('#agent_name');
const file=document.querySelector('#file');
const date=document.querySelector('#date');


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
	// floor number validation
	if(floor.value.trim()==''){
		setError(floor,'please fill this blank');
	}else if(floor.value.trim().length>3){
		setError(floor,'floor number should not not exceed 3 digits');
	}else if(!onlyNumberKey(floor.value.trim())){
		setError(floor,'please enter numbers');
	}else{
		setSuccess(floor);
	}
	
	// address validation
	if(address.value.trim()==''){
		setError(address,'please fill this blank');
	}else{
		setSuccess(address);
	}
	
	// Lessor validation 
	if(lessor.value.trim()==''){
		setError(lessor,'please fill this blank');
	}
	else{
		setSuccess(lessor);
	}
	
	// lessor number validation
	
	if(l_phone.value.trim()==''){
		setError(l_phone,'please fill this blank');
	}else if(!onlyNumberKey(l_phone.value.trim())){
		setError(l_phone,'phone number should be 11 digits');
	}
	else if(l_phone.value.trim().length<11 || l_phone.value.trim().length>=12){
		setError(l_phone,'phone number should be 11 digits');
	}
	else{
		setSuccess(l_phone);
	}
	
	// renter name validation
	
	if(renter_name.value.trim()==''){
		setError(renter_name,'please fill this blank');
	}else{
		setSuccess(renter_name);
	}
	
	// id renter validation
	if(id_renter.value.trim()==''){
		setError(id_renter,'please fill this blank');
	}else if(!onlyNumberKey(id_renter.value.trim())){
		setError(id_renter,'please insert your id card number');
	}
	else if(id_renter.value.trim().length<13 || id_renter.value.trim().lenght>13){
		setError(id_renter,'your id card should be 13 number');
	}
	else{
		setSuccess(id_renter);
	}
	
	// renter phone validation
	if(r_phone.value.trim()==''){
		setError(r_phone,'please fill this blank');
	}else if(!isvalidPhone2(r_phone.value.trim())){
		setError(r_phone,'phone number should be 11 digits');
	}
	else if(r_phone.value.trim().length<11 || r_phone.value.trim().length>=12){
		setError(r_phone,'phone number should be 11 digits');
	}
	else{
		setSuccess(r_phone);
	}
	// lease term validation
	if(lease_term.value.trim()==''){
		setError(lease_term,'please fill this blank');
	}else{
		setSuccess(lease_term);
	}
	
	// rent validation
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
	
	// agency fee validation 
	if(agency_fee.value.trim()==''){
		setError(agency_fee,'please fill this blank');
	}else if(!onlyNumberKey(agency_fee.value.trim())){
		setError(agency_fee,'Please enter the agent fee!!');
	}else if(agency_fee.value.trim().length>4){
		setError(agency_fee,'Agency fee should not exceed 4 digits');
	}
	else{
		setSuccess(agency_fee);
	}
	// agent name validation

if(agent.value.trim()==''){
	setError(agent,'please fill this blank');
}else{
	setSuccess(agent);
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
	
	//date validation
	if(date.value.trim()==''){
		setError(date,'please fill the date');
	}else{
		setSuccess(date);
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



function isvalidPhone(l_phone){
	 var re = /^\(?([0-9]{3})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
	 return re.test(l_phone);
}
function isvalidPhone2(r_phone){
	 var re = /^\(?([0-9]{3})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
	 return re.test(r_phone);
}


function onlyNumberKey(agency_fee){
	var re= /^[0-9]+$/;
	return re.test(agency_fee);
}
 function fileValidation(file)
{
	var re=/(\.jpg|\.jpeg|\.png|\.gif)$/i;
	return re.test(file);
}
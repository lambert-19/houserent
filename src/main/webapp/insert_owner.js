const form=document.querySelector('#register');
const fname=document.querySelector('#f_name');
const lname=document.querySelector('#l_name');
const email=document.querySelector('#email');
const password=document.querySelector('#password');
const password2=document.querySelector('#password2');
const phone=document.querySelector('#phone');

form.addEventListener('submit',(e)=>{
	
	checkInputs();
	if(validInput()==true){
		form.submit();
	}else{
		e.preventDefault();
	}
	
	
});

function setError(element,msg){
	element.style.border='2px red solid';
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

function validInput(){
	const input=form.querySelectorAll('.mb-3');
	let result=true;
	input.forEach((container)=>{
		if(container.classList.contains('error')){
			result=false;
		}
	});
	return result;
}

function checkInputs(){
	//first name checking
	if(fname.value.trim()==''){
		setError(fname,'please enter your first name');
	}else{
		setSuccess(fname);
	}
	
	//last name checking 
	if(lname.value.trim()==''){
		setError(lname,'please enter your last name');
	}else{
		setSuccess(lname);
	}
	//Email checking
	if(email.value.trim()==''){
		setError(email,'please enter your email');
	}else{
		if(!isvalidEmail(email.value.trim())){
			setError(email,'email is not valid');
		}else{

			setSuccess(email);
		}
	}
	//password checking
	if(password.value.trim()==''){
		setError(password,'please enter your password');
	}else if(password.value.trim().length<8 || password.value.trim().length>16){
		 setError(password,'please should be between 8-16 characters');
	}
	else{
		setSuccess(password);
	}
	//confirmation password checking
	if(password2.value.trim()==''){
		setError(password2,'password can not be empty');
	}else if(password2.value.trim()!=password.value.trim()){
		setError(password2,'password does not match');
	}
	else{
		setSuccess(password2);
	}
	//PHONE NUMBER
	if(phone.value.trim()==''){
		setError(phone,'phone number can not be empty');
	}
	else if(!isvalidPhone(phone.value.trim())){
		setError(phone,'Phone number is not valid');
	}
	else{
		setSuccess(phone);
	}
}

function isvalidEmail(email){
return /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}

function isvalidPhone(phone){
	 var re = /^\(?([0-9]{3})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
	 return re.test(phone);
}
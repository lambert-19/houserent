const email=document.querySelector('#typeEmailX');
const password=document.querySelector('#typePasswordX');
const submit=document.querySelector('#submit');

submit.addEventListener('click',(e)=>{
	checkInput();
	if(isValid()==true){
		form.submit();
	}else{
		e.preventDefault();
	}
	
	
	
});


function isValid(){
	const input=form.querySelectorAll('.form-outline');
	let result=true;
	input.forEach((container)=>{
		if(container.classList.contains('error')){
			result=false;
		}
	});
	return result;
}


function checkInput(){
	//email validation 
	if(email.value.trim()==''){
		setError(email,'please enter your email');
	}else{
		if(!isvalidEmail(email.value.trim())){
			setError(email,'email is not valid');
		}else{

			setSuccess(email);
		}
		}
	//password validation
	if(password.value.trim()==''){
		setError(password,'please enter your password');
	}else if(password.value.trim().length<8){
		setError(password,'password must be at lest 8 characters');
	}
	else{
		setSuccess(password);
	}

}

function isvalidEmail(email){
return /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
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
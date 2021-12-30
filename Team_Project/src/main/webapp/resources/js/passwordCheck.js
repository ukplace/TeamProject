/**
 * 
 */
var isPasswdCheck = false;
var isConfirmpasswdCheck = false;
function checkPasswd(password) {
	var lengthRegex = /^[a-zA-Z0-9!@#$%]{8,16}$/;		var engUpperRegex = /[A-Z]/;	var engLowerRegex = /[a-z]/;	var digitRegex = /[0-9]/;	var specRegex = /[!@#$%]/;
	var count = 0;
	if (lengthRegex.exec(password)) {
		if (engUpperRegex.exec(password)) 	count++;
		if (engLowerRegex.exec(password)) 	count++;
		if (digitRegex.exec(password)) 		count++;
		if (specRegex.exec(password))		count++;
		switch (count) {
			case 4:				document.getElementById("passwordCheck").innerHTML = "안전";				document.getElementById("passwordCheck").style.color = "GREEN";					isPasswdCheck = true;				break;
			case 3:				document.getElementById("passwordCheck").innerHTML = "보통";				document.getElementById("passwordCheck").style.color = "ORANGE";				isPasswdCheck = true;				break;
			case 2:				document.getElementById("passwordCheck").innerHTML = "위험";				document.getElementById("passwordCheck").style.color = "RED";					isPasswdCheck = true;				break;
			default:			document.getElementById("passwordCheck").innerHTML = "영문,숫자,특수문자가 조합된 8~16자";			document.getElementById("passwordCheck").style.color = "RED";					isPasswdCheck = false;				break;
		}
	} else {
		document.getElementById("passwordCheck").innerHTML = "영문,숫자,특수문자가 조합된 8~16자";		document.getElementById("passwordCheck").style.color = "RED";			isPasswdCheck = false;
	}
}
function checkConfirmPasswd(password) {
	if (password == document.join.password.value) {
		document.getElementById("passwordCheck2").innerHTML = "패스워드 일치";			document.getElementById("passwordCheck2").style.color = "GREEN";		isConfirmpasswdCheck = true;
	} else {
		document.getElementById("passwordCheck2").innerHTML = "패스워드 불일치";		document.getElementById("passwordCheck2").style.color = "RED";		isConfirmpasswdCheck = false;
	}
}
   function checkForm(){
	if(isPasswdCheck && isConfirmpasswdCheck){		document.join.submit();			return true;
	}else {
		alert("비밀번호 확인 하세요");		return false;
	}
}
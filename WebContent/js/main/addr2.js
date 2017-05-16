﻿/**
 * 
 */

function loginCheck(){
	
	if(document.frm.userid.value.length == 0){
		alert('아이디 쓰세요');
		frm.userid.focus();
		
		return false;
	}
	if(document.frm.pwd.value.length == 0){
		alert('암호는 반드시 입력해야함');
		frm.pwd.focus();
		return false;
	}
	
	return true;
	
}

//회원가입 폼에서 사용자 입력을 확인
function joinCheck(){
	
	if(document.frm.comMname.value.length==0){
		alert('담당 매니저명을 입력해 주세요');
		frm.name.focus();	
		return false;
	}
	
	if(document.frm.comId.value.length == 0){
		alert('아이디를 입력해주세요.');
		frm.userid.focus();
		return false;
	}
	
	if(document.frm.comId.value.length < 4){
		alert('아이디는 4글자 이상이어야 합니다.');
		frm.userid.focus();
		return false;
	}
	if(document.frm.comPass.value ==""){
		alert('암호는 반드시 입력해야합니다.');
		frm.pwd.focus();
		return false;
	}
	
	if(document.frm.comPass.value != document.frm.pwd_check.value){
		alert('암호가 일치하지 않습니다.');
		frm.pwd.focus();
		return false;
	}
	if(document.frm.comName.value.length == 0) {
		alert("기업명을 입력해 주세요");
		frm.age.focus();
		return false;
	}
	if(document.frm.comAddr.value.length == 0) {
		alert("주소를 입력해 주세요.");
		frm.age.focus();
		return false;
	}
	if(document.frm.comPhone.value.length == 0) {
		alert("전화번호를 입력해 주세요");
		frm.age.focus();
		return false;
	}
	if(document.frm.comEmail.value.length == 0) {
		alert("이메일을 입력해 주세요");
		frm.age.focus();
		return false;
	}
	return true;
}

//회원수정폼 확인
function updateCheck(){
	
	if(document.frm.name.value.length==0){
		alert('이름을 입력해주세요.');
		frm.name.focus();	
		return false;
	}
	
	if(document.frm.userid.value.length == 0){
		alert('아이디를 입력해주세요.');
		frm.userid.focus();
		return false;
	}
	
	if(document.frm.userid.value.length < 4){
		alert('아이디는 4글자 이상이어야 합니다.');
		frm.userid.focus();
		return false;
	}
	if(document.frm.pwd.value ==""){
		alert('암호는 반드시 입력해야합니다.');
		frm.pwd.focus();
		return false;
	}
	
	if(document.frm.pwd.value != document.frm.pwd_check.value){
		alert('암호가 일치하지 않습니다.');
		frm.pwd.focus();
		return false;
	}
	
	return true;
}


//아이디 중복체크
//아이디가 입력되어있는지 확인
function idCheck(){
	if(document.frm.comId.value == "") {
		alert("아이디를 입력하여 주십시오");
		document.frm.comId.focus();
		return;
	}
	var url = "idCheckCom.do?comId=" + document.frm.comId.value;
	window.open(
			url, 
			"_blank_1", 
			"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}


//idCheck.jsp에서 사용버튼을 누르면 이 함수 호출
function idOk(str){
	opener.frm.userid.value=str;
	opener.frm.reid.value=str;
	self.close();
}


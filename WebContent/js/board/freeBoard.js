
function loginCheck(user){
	
	if(user==""){
		alert('로그인 후 이용가능합니다.');
		location.href='login.do';
	}
}


function insertCheck(){
   if(document.frm.title.value.length==0){
      alert('제목을 입력해주세요');
      frm.title.focus();
      return false;
   }
   if(document.frm.contents.value.length==0){
      alert('내용을 입력해주세요');
      frm.contentsValue.focus();
      return false;
   }
   return true;   
}

function open_win(url,name){
   window.open(url,name,"width=300,height=200")
}
function updateCheck(){
	 
	   if(document.frm.title.value.length==0){
	      alert('제목을 입력해주세요');
	      frm.title.focus();
	      return false;
	   }
	   if(document.frm.contents.value.length==0){
	      alert('내용을 입력해주세요');
	      frm.contentsValue.focus();
	      return false;
	   }
	   return true;   
	}
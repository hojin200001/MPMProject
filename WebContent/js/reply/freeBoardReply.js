
function fr_replyDelete(reNum,num){
    if (!confirm("삭제하시겠습니까?")) {
        return;
    }

    location.href="replyDelete.do?num="+num+"&reNum="+reNum;
    //var form = document.form2;  
   // form.action="replyDelete.do";
    //console.log(form);
    //form.reNum.value=reNum;
    //form.num.value=num;
    //form.submit();

    var form = document.form2;

    form.action="replyDelete.do";
    form.num.value=num;
    form.reNum.value=reNum;
    form.submit();    

    //location.href='replyDelete.do?num='+num+"&reNum="+reNum;

}

var updateReNum = updateTeText = null;
function fr_replyUpdate(reNum){
    var form = document.form2;
    var reply = document.getElementById("reply"+reNum);
    var replyDiv = document.getElementById("replyDiv");
    replyDiv.style.display = "";
    
    if (updateReNum) {
        document.body.appendChild(replyDiv);
        var oldReno = document.getElementById("reply"+updateReno);
        oldReno.innerText = updateRememo;
    } 
    
    form.reNum.value=reNum;
    form.teText.value = reply.innerText;
    reply.innerText ="";
    reply.appendChild(replyDiv);
    updateReno   = reNum;
    updateRememo = form.teText.value;
    form.teText.focus();
} 

function fn_replyUpdateSave(){
    var form = document.form2;
   
//    if (form.teText.value=="") {
//        alert("글 내용을 입력해주세요.");
//        form.teText.focus();
//        return;
//    }
    
    form.submit();    
} 

function fn_replyUpdateCancel(){
    var form = document.form2;
    var replyDiv = document.getElementById("replyDiv");
    document.body.appendChild(replyDiv);
    replyDiv.style.display = "none";
    
    var oldReno = document.getElementById("reply"+updateReno);
    oldReno.innerText = updateRememo;
    updateReno = updateRememo = null;
} 


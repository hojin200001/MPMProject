
function fr_replyDelete(){
    if (!confirm("삭제하시겠습니까?")) {
        return;
    }
    var form = document.form2;

    form.action="replyDelete.do";
    form.reNum.value=reNum;
    form.submit();    
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
    
    form.reno.value=reno;
    form.rememo.value = reply.innerText;
    reply.innerText ="";
    reply.appendChild(replyDiv);
    updateReno   = reno;
    updateRememo = form.rememo.value;
    form.rememo.focus();
} 

function fn_replyUpdateSave(){
    var form = document.form2;
    if (form.rememo.value=="") {
        alert("글 내용을 입력해주세요.");
        form.rememo.focus();
        return;
    }
    
    form.action="board5ReplySave";
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


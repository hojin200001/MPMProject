<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="JavaScript">
// type부분의 리스트
// new Type(참조번호, 내용);
TypeArray = new Array(
 new Type(0, "Option A - 0"),
 new Type(1, "Option A - 1"),
 new Type(2, "Option A - 2")
);

// style부분의 리스트
// new Style(참조번호,Type부분의 참조번호, 내용);
StyleArray = new Array(
 new Style(00, 0, "Option A - 0 / 0"),
 new Style(01, 0, "Option A - 0 / 1"),
 new Style(02, 0, "Option A - 0 / 2"),

 new Style(10, 1, "Option A - 1 / 0"),
 new Style(11, 1, "Option A - 1 / 1"),
 new Style(12, 1, "Option A - 1 / 2"),

 new Style(20, 2, "Option A - 2 / 0"),
 new Style(21, 2, "Option A - 2 / 1"),
 new Style(22, 2, "Option A - 2 / 2")
);

function Type(id, type) {
 this.id = id;
 this.type = type;
}

function Style(id, id_type, style) {
 this.id = id;
 this.id_type = id_type;
 this.style = style;
}

function init(sel_type, sel_style) {
 document.product.id_type.options[0] = new Option("[ Option A ]"); // id_type부분의 첫번째 option값
 document.product.id_style.options[0] = new Option("[ ... ]"); // id_style부분의 첫번쨰 option값

 for(i=1; i<=TypeArray.length; i++) {
  document.product.id_type.options[i] = new Option(TypeArray[i-1].type, TypeArray[i-1].id);

  if(TypeArray[i-1].id == sel_type) {
   document.product.id_type.options[i].selected = true;
  }
 }

 OnChange(sel_style);
}









function OnChange(sel_style) {
 sel_type_index = document.product.id_type.selectedIndex;
 sel_type_value = parseInt(document.product.id_type[sel_type_index].value);

 for(i=document.product.id_style.length-1; i>0; i--) {
  document.product.id_style.options[i] = null;
 }

 j=1;

 for(i=1; i<=StyleArray.length; i++) {
  if(StyleArray[i-1].id_type == sel_type_value) {
   document.product.id_style.options[j] = new Option(StyleArray[i-1].style, StyleArray[i-1].id);
   if(StyleArray[i-1].id == sel_style) {
    document.product.id_style.options[j].selected = true;
   }
   j++;
  }
 }
}

function show_value() {
 var s_v_1 = document.product.id_type.options[document.product.id_type.selectedIndex].text;
 var s_v_2 = document.product.id_style.options[document.product.id_style.selectedIndex].text;

 document.product.s_v.value = 'Type : '+s_v_1+'\nStyle : '+s_v_2;
}

</SCRIPT>

</head>

<!--
페이지 로딩시 특정 option값으로 이동
init(Type부분의 참조번호, Style부분의 참조번호);
//-->
<body onload="init();">

<form name="product">
<select name="id_type" onChange="OnChange()"></select>
<select name="id_style" onchange="show_value();"></select>
<br><br>
<textarea cols="30" rows="2" name="s_v"></textarea>
</form>


</body>
</html>
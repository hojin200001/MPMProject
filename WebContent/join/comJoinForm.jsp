<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="js/main/addr2.js"></script>
<link rel="stylesheet" href="css/main/join.css" type="text/css">
<link rel="stylesheet" href="css/main/join2.css" type="text/css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
	<div class="hader">
		<div class="hader_div">
			<div class="hader_div_1">
				<img alt="홈으로" src="img/main/logoB_07.png">
			</div>
			<div class="hader_div_2">
				<p></p>
				<a href="index.do">HOME</a>
				<a>|</a>
				<a href="login.do">로그인</a>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="content" align="center">
			<section> <article id="rcorners1"> <br>
			<table class="table1">
				<tr>
					<th><font class="font1">기업 회원 가입</font></th>
				</tr>
			</table>
			</article> <article id="rcorners2">
			<form action="comJoinIndex.do" name="frm" enctype="multipart/form-data" method="post">
				<table width="500px">

					<tr>
						<td width="100px"></td>
						<td colspan="2" valign="top">
							<P>
							<P>
							<P>
								<span class="font2">'*' 표시항목은 필수 입력항목입니다.</span>
						</td>
					</tr>
					<tr>
						<td>아이디</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="text" name="comId" size="10" id="comId"> <input
							type="button" value="중복 체크" onclick="idCheck()"> <input
							type="hidden" name="reid"></td>
					</tr>
					<tr>
						<td>암호</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="password" name="comPass" size="10"></td>
					</tr>
					<tr>
						<td>암호확인</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="password" name="pwd_check" size="10">
						</td>
					</tr>
					<tr>
						<td>기업명</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="text" name="comName" size="5"></td>
					</tr>
					<tr>
						<td>매니저명</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="text" name="comMname" size="2"></td>
					</tr>
					<tr>
						<td>주소</td>
						<td valign="top"><span class="font2">*</font2></td>

						<td><input type="text" id="sample6_postcode"
							placeholder="우편번호" readonly="" size="5" name="post1"> <input
							type="button" onclick="sample6_execDaumPostcode()"
							value="우편번호 찾기"><br> <span style="LINE-HEIGHT: 10%"><br></span>
							<input type="text" id="sample6_address" placeholder="주소"
							readonly="" size="40" name="comAddr"><br> <span
							style="LINE-HEIGHT: 10%"><br></span> <input type="text"
							id="sample6_address2" placeholder="상세주소" size="40" name="comAddr2"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="tel" name="comPhone" size="10"></td>
					</tr>
					<tr>
						<td>전화번호2</td>
						<td valign="top"></td>
						<td><input type="tel" name="comPhone2" size="10"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="email" name="comEmail"></td>
					</tr>
						<tr>
						<td>사업자 번호</td>
						<td valign="top"></td>
						<td><input type="text" name="comNum"></td>
					</tr>
						<tr>
						<td>기업 로고</td>
						<td valign="top"></td>
						<td><input type="file" name="ufile"></td>
					</tr>
						<tr>
						<td></td>
						<td colspan="2" width="50x" align="right">
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="button"
										onclick="return joinCheck()">가입하기</button>
								</div>
							</div>
						</td>
					</tr>
				</table>
			</article> </section>
			<p>
			<p>
			<p>
			</form>
			<script>
			        function sample6_execDaumPostcode() {
			            new daum.Postcode({
			                oncomplete: function (data) {
			                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
			                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
			                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			                    var fullAddr = ''; // 최종 주소 변수
			                    var extraAddr = ''; // 조합형 주소 변수
			                    var dong = '';
			
			                    // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			                        fullAddr = data.jibunAddress;
			
			                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
			                        fullAddr = data.jibunAddress;
			
			                    }
			
			                    dong = data.bname;
			                    // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
			                    if (data.userSelectedType === 'R') {
			                        //법정동명이 있을 경우 추가한다.
			                        if (data.bname !== '') {
			                            extraAddr += data.bname;
			                        }
			                        // 건물명이 있을 경우 추가한다.
			                        if (data.buildingName !== '') {
			                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                        }
			                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
			                        fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
			                    }
			
			                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
			                    // document.getElementById("ContentPlaceHolder1_WUC_BizCompanyReg_sample6_postcode").value = data.postcode; //6자리 우편번호 사용
			                    document.getElementById("sample6_postcode").value = data.zonecode; //5자리 기초구역번호 사용
			                    document.getElementById("sample6_address").value = fullAddr;
			                    // 커서를 상세주소 필드로 이동한다.
			                }
			            }).open();
			
			        }
			</script>
	
			<div class="footer">
				<div class="copy">
					<address>
						서울특별시 강남구 역삼동 819-10 한빛교육센터 강의실,<br> 대표연락처 : 1577-0000, FAX :
						052-000-0000, E-mail : asdf@naver.com
					</address>
					<p>Copyrights &copy; 2017~~~~ MPMcompany All rights Reserved</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="js/main/addr.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="css/main/join.css" type="text/css">
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="header">

			<div class="imgArea">
				<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로" />
			</div>
			<p>
		</div>
		<div class="content" align="center">
			<section> <article id="rcorners1"> <br>
			<table class="table1">
				<tr>
					<th><font class="font1">일반 회원 가입</font></th>
				</tr>
			</table>
			</article> <article id="rcorners2">
			<form action="join.do" name="frm" method="post">

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
						<td><input type="text" name="userid" size="10"> <input
							type="button" value="중복 체크" onclick="idCheck()"> <input
							type="hidden" name="reid"></td>
					</tr>
					<tr>
						<td>암호</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="password" name="pwd" size="10"></td>
					</tr>
					<tr>
						<td>암호확인</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="password" name="pwd_check" size="10">
						</td>
					</tr>
					<tr>
						<td>이름</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="text" name="name" size="5"></td>
					</tr>
					<tr>
						<td>나이</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="text" name="age" size="2"></td>
					</tr>
					<tr>
						<td>주소</td>
						<td valign="top"><span class="font2">*</font2></td>

						<td><input type="text" id="sample6_postcode"
							placeholder="우편번호" readonly="" size="5" name="post1"> <input
							type="button" onclick="sample6_execDaumPostcode()"
							value="우편번호 찾기"><br> <span style="LINE-HEIGHT: 10%"><br></span>
							<input type="text" id="sample6_address" placeholder="주소"
							readonly="" size="40" name="addr1"><br> <span
							style="LINE-HEIGHT: 10%"><br></span> <input type="text"
							id="sample6_address2" placeholder="상세주소" size="40" name="addr2"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="text" name="phone" size="10"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><input type="text" name="email" size="10"></td>
					</tr>
					<tr>
						<td>자격증</td>
						<td valign="top"><span class="font2">*</font2></td>
						<td><select id='fruits' name='fruits' size='4' multiple
							onchange='fruits_selected()'>
								<option value='' selected>-- 다중선택 --</option>
								<option value=''>거푸집기능사</option>
								<option value=''>건설기계기술사</option>
								<option value=''>건축도장기능사</option>
								<option value=''>건축목공기능사</option>
								<option value=''>관광통역안내사</option>
								<option value=''>금속기사</option>
								<option value=''>금형기술사</option>
								<option value=''>기계기술사</option>
								<option value=''>기계정비산업기사</option>
								<option value=''>기계조립산업기사</option>
								<option value=''>도배기능사</option>
								<option value=''>미장기능사</option>
								<option value=''>배관산업기사</option>
								<option value=''>석공기능사</option>
								<option value=''>연삭기능사</option>
								<option value=''>석공기능사</option>
								<option value=''>용접기술사</option>
								<option value=''>유리시공기능사</option>
								<option value=''>일반기계기사</option>
								<option value=''>전기공사기사</option>
								<option value=''>전기산업기사</option>
								<option value=''>전자기사</option>
								<option value=''>토목기사</option>
								<option value=''>포장기사</option>
						</select></td>
					</tr>
					<tr>
						<td>포인트</td>
						<td></td>
						<td><input type="text" name="nomalPoint" size="5"></td>
					</tr>
					<tr>
						<td>정보공개</td>
						<td></td>
						<td><input type="radio" name="inpoDis" value="0"
							checked="checked"> 찬성 <input type="radio" name="inpoDis"
							value="1"> 반대</td>
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
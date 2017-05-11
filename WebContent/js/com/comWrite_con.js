function td_area_4_div1() {
	$('#div2_1').css("border", "2px solid #0f4579").css("background-color",
			"#0f4579").css("color", "#fff");
	$('#div2_2').css("border", "2px solid #d7d7d7").css("background-color", "")
			.css("color", "");
	$('.td_area_5_div2_1').css("background-color", "").css("color", "#000");
	$('.td_area_5_div2').hide();
	$('.td_area_6_div').hide();
	$('.td_area_6_div_1 div').hide();
	$('.td_area_5_div1').show();

}
function td_area_4_div2() {
	$('#div2_2').css("border", "2px solid #0f4579").css("background-color",
			"#0f4579").css("color", "#fff");
	$('#div2_1').css("border", "2px solid #d7d7d7").css("background-color", "")
			.css("color", "");
	$('.td_area_5_div1').hide();
	$('.td_area_5_div2').show();
	$('.td_area_6_div').show();
}

function td_area_5_div2_1() {
	$('.td_area_6_div_1 div').show();
	$('.td_area_5_div2_1').css("background-color", "#0f4579");
	$('.td_area_5_div2_1').css("color", "#fff");
}

function replaceValue(e) {
	var value = e;
	var a = sessionStorage.getItem('subway');
	$.ajax({
		url : "json/subLine.json",
		dataType : "json",
		success : function(result) {
			$.each(result.seoul[a], function(key) {
				$.each(result.seoul[a][key], function(key, value) {
					if (key == e) {
						$('.td_area_6_div_2_1 li').remove();
						c = value + '';
						var array = c.split(',');
						$.each(array, function(index, value) {
							$('.td_area_6_div_2_1').append(
									"<li style='float: left;'><a onclick='searchMaps(\""
											+ value + "\")'>" + value
											+ "</a></li>");
						});
					}
				});
			});
		}
	});
}
$('.td_area_6_div_1_div').click(
		function() {
			$('.td_area_6_div_2 ul').remove();
			$('.td_area_6_div_2_2 li').remove();
			$('.td_area_6_div_2_1 li').remove();
			var a = $(this).text();
			sessionStorage.setItem("subway", a);
			var b = 'ㄱ';
			var c;
			$.ajax({
				url : "json/subLine.json",
				dataType : "json",
				success : function(result) {
					$.each(result.seoul[a], function(key) {
						$.each(result.seoul[a][key], function(key, value) {
							$('.td_area_6_div_2_2')
									.append(
											"<li style='float: left;'><a onclick='replaceValue(\""
													+ key + "\")'>" + key
													+ "</a></li>");
							if (key == b) {
								c = value + '';
								var array = c.split(',');
								$.each(array, function(index, value) {
									$('.td_area_6_div_2_1').append(
											"<li style='float: left;'><a onclick='searchMaps(\""
													+ value + "\")'>" + value
													+ "</a></li>")
								});
							}

						});
					});
				}
			});
		});
function searchMaps(a) {
	var valueX;
	var valueY;
	var addr = 'http://openAPI.seoul.go.kr:8088/446a746d4b686f6a363376556a596f/xml/SearchInfoBySubwayNameService/1/5/'
			+ a;
	var code;
	var address;
	$.ajax({
				url : addr,
				dataType : 'xml',
				success : function(response) {
					code = $(response).find('SearchInfoBySubwayNameService')
							.find('row').find('FR_CODE').text();
					if (code.length > 5) {
						code = code + '';
						code = code.substr(0, 3);
					}
					$.ajax({
								url : 'http://openAPI.seoul.go.kr:8088/446a746d4b686f6a363376556a596f/xml/SearchSTNInfoByFRCodeService/1/5/'
										+ code,
								dataType : 'xml',
								success : function(response) {
									valueX = $(response).find(
											"SearchSTNInfoByFRCodeService")
											.find('row').find('XPOINT_WGS')
											.text();
									valueY = $(response).find(
											"SearchSTNInfoByFRCodeService")
											.find('row').find('YPOINT_WGS')
											.text();
									address = $(response).find(
											"SearchSTNInfoByFRCodeService")
											.find('row').find('ADDRESS').text();
									$('#addr').val(valueX + "," + valueY);
									$('#hiddenAddr').val(address);
									var moveLatLon = new daum.maps.LatLng(
											valueX, valueY);
									map.panTo(moveLatLon);
									var marker = new daum.maps.Marker({
										// 지도 중심좌표에 마커를 생성합니다
										position : map.getCenter()
									});
									// 지도에 마커를 표시합니다
									marker.setMap(map);
								}
							});
				}
			});
}
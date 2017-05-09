	var ap_option = {
			dateFormat : 'yy-mm-dd',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			changeMonth : true,
			changeYear : true,
			yearSuffix : '년'
		}, $startDt = $('#txtStartDt').datepicker(ap_option), $endDt = $(
				'#txtEndDt').datepicker(ap_option);

		// 시작일 maxData, 종료일 minData 셋팅
		$startDt.datepicker('option', 'maxDate', $endDt.val());
		$endDt.datepicker('option', 'minDate', $startDt.val());

		// 시작일, 종료일 값 선택에 따라 minDate, maxDate값 변경할 수 있도록 이벤트 처리
		$startDt.datepicker('option', 'onSelect', function(selectedDate) {
			$endDt.datepicker('option', 'minDate', selectedDate);
		});
		$endDt.datepicker('option', 'onSelect', function(selectedDate) {
			$startDt.datepicker('option', 'maxDate', selectedDate);
		});
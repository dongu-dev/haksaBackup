<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery Table Sort</title>



<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<script>
	$(function() {
		// 소트를 설정
		var sortOrder = 1; // 1:ASC -1:DESC
		// 열을 클릭하면
		$(".dothesort").click(function() {
			var type = $(this).data('type'); // string, integer
			var col = $(this).index(); // 0, 1, ...
			// 행 전체를 취득
			var $rows = $('tbody>tr');
			// 행을 소트
			//https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Global_Objects/Array/sort
			//array.sort(compareFunction);
			$rows.sort(function(a, b) {
				return compare(a, b, type, col) * sortOrder;
			});
			// tbody를 소트된 행 전체로 바꾸기
			$('tbody').empty().append($rows);
			var arrow = sortOrder === 1 ? "▲" : "▼";
			$('.dothesort > span').text('');
			$(this).find('span').text(arrow);
			// 소트 순서를 반전
			sortOrder *= -1;
		});

		function compare(a, b, type, col) {
			var _a = $(a).find('td').eq(col).text(); // eq(index)
			var _b = $(b).find('td').eq(col).text();
			if (type == "string") {
				if (_a < _b)
					return -1;
				if (_a > _b)
					return 1;
				return 0;
			} else {
				_a *= 1;
				_b *= 1; // a, b를 숫자로 만든다.
				return _a - _b;
			}
		}
	});

	$(document).ready(function() {
		/*-----------------------------------------------------------------
		 * 키값 rowTag로 테이블의 기본 row 값의 Html태그 저장
		-----------------------------------------------------------------*/
		var rowTag = $("table tbody").html();
		$(".tbtd_caption").data("rowTag", rowTag); //키값 rowTag로 테이블의 기본 row 값의 Html태그 저장
	});

	/* ********************************************************
	 * 행추가 기능
	 ******************************************************** */
	function rowAdd() {
		$("table tbody").append($(".tbtd_caption").data("rowTag")); //rowTag의 키값으로 저장된 Html값 호출하여 테이블에 추가
	}
	/* ********************************************************
	 * 현재행 삭제 기능
	 ******************************************************** */
	function rowDelete(obj) {
		$(obj).parent().parent().remove();
	}

	/* ********************************************************
	 * 체크박스 선택행 삭제 기능
	 ******************************************************** */
	function rowCheDel() {
		var $obj = $("input[name='chk']");
		var checkCount = $obj.size();
		for (var i = 0; i < checkCount; i++) {
			if ($obj.eq(i).is(":checked")) {
				$obj.eq(i).parent().parent().remove();
			}
		}
	}

	/* ********************************************************
	 * 체크박스 전체선택/해제 기능
	 ******************************************************** */
	function selectAll() {
		if ($("#chk_list").is(":checked")) {

			//  $("input[name=chk]").attr("checked",true);
			$("input[name=chk]").prop("checked", true);
		} else {
			$("input[name=chk]").prop("checked", false);
		}
	}
</script>

</head>
<body>

	<table border="1px" width="500px" class="tbtd_caption">
		<caption>체크박스 전체선택/해제/행추가/행삭제/선택행삭제</caption>
		<colgroup>
			<col width="40px;" />
			<col width="200px;" />
			<col width="100px;" />
		</colgroup>

		<thead>
			<tr>
				<th><INPUT TYPE="checkbox" ID="chk_list" name="chk_list"
					value="" onClick="selectAll()"></th>
				<th class="dothesort" data-type="string">내용<span></span></th>
				<th class="dothesort" data-type="integer">기타<span></span></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><INPUT TYPE="checkbox" ID="chk" name="chk"></td>
				<td><input type="text" name="txtbox" /></td>
				<td><input type="button" value="현재행 삭제"
					onClick="rowDelete(this)" /></td>
			</tr>
		</tbody>
	</table>

	<input type="button" value="행추가" onClick="rowAdd();" />
	<input type="button" value="선택행 삭제" onClick="rowCheDel();" />
</body>
</html>
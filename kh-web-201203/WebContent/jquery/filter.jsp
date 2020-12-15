<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>filter</title>
	<script src='../lib/jquery-3.5.1.min.js'></script>
</head>
<body>

	<div id='filter'>
		<fieldset>
			<legend>filter</legend>
			<ul>
				<li>선택된 요소 중에 필요한 요소만을 걸러내는 방법</li>
				<li>접두문자 ':'을 사용한다.</li>
				<li>필터와 필터를 연결하여 사용할 수 있다.</li>
				<li>종류 => :eq(index), :even, :odd, :first, :last, :gt(index), :lt(index)</li>
			</ul>
		</fieldset>
		
		<ol start='0'>
			<li>백두산</li>
			<li>금강산</li>
			<li>설악산</li>
			<li>치악산</li>
			<li>내장산</li>
			<li>속리산</li>
			<li>맛동산</li>
			<li>한라산</li>
		</ol>
		
		<div id='items'>
			<div>방가.....1</div>
			<div>방가.....2</div>
			<div>방가.....3</div>
			<div>방가.....4</div>
			<div>방가.....5</div>
			<div>방가.....6</div>
		</div>
		
	</div>
	<script>
		// UL 태그 안에 있는 첫 번째 li
		$('#filter > ol > li:first').css('color', '#f00');
		// *index가 0부터 시작하는 것 주의
		$('#filter > ol > li:odd').css('font-weight', 'bolder');
		
		// items 안에 있는 div의 바탕색상을 홀/짝수로 나뉘어 표시되도록 구성
		$('#filter > #items > div:even').css({
				'background-color' : 'gold',
				'color': 'crimson'
		});
		
		$('#filter > #items > div:odd').css({
			'background-color'  : 'tomato',
			'color'				: 'white'
		});
	</script>
	
</body>
</html>
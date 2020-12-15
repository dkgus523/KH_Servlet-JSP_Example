<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>traverse</title>
	<!-- 인덱스?인트로?페이지에 스크립트를 가져왔으니 여기서는 안가져와도 된다. -->
</head>
<body>
	<div id='traverse'>
		<h1>TRAVERSE</h1>
		<fieldset>
			<legend>traverse</legend>
			<ul>
				<li>traverse는 '.'을 찍어서 표현한다.</li>
				<li>명령어는 filter와 traverse가 매우 유사하거나 상충되기 때문에 개인적 취향에 따라 사용 빈도수가 달라질 수 있다.</li>
				<li>종류 => .eq(index), .first(), .last(), .slice(start [, end])</li>
				<li>method => .children(expr), .find(expr), .parent(expr), .next(expr), .prev(expr)</li>
			</ul>
		</fieldset>
		
		<ul>
			<li>백두산</li>
			<li>금강산</li>
			<li>설악산</li>
			<li>치악산</li>
			<li>내장산</li>
			<li>속리산</li>
			<li>맛동산</li>
			<li>한라산</li>
		</ul>
		
		<!-- .parent() example code -->
		<div id='div1'>
			<input type='button' value='x' class='btn1' />
		</div>
		
		<div id='div2'>
			<input type='button' value='x' class='btn2' />
		</div>
		
	</div>
	<script>
		// traverse에서는 '.'을 사용!
		//두가지 방법 중 하나만 하면 된다.
		$('#traverse > ul > li').first().css('color', '#f00');
		$('#traverse > ul > li').filter(':odd').css('color', '#00f');
		//1번째부터 3번째까지 글자만 바꿔주는 명령어
		$('#traverse > ul > li').slice(1,4).css('font-family', '궁서체');
		
		// div1, div2의 넓이와 높이를 지정하시오. (TODO)
		/* $('#traverse > #div1').css({
			'width' : '200px',
			'height' : '200px'
		});
		
		$('#traverse > #div2').css({
			'width' : '200px',
			'height' : '200px'
		}); */
		
		// >> 선생님 코드
		$('#traverse>div').css({
			'width' : '200px',
			'height' : '100px',
			'border' : '1px solid #444'
		});

		// btn1, btn2의 넓이와 높이를 지정하시오. (TODO)
		/* $('#traverse > #div1 > .btn1').css({
			'width' : '100px',
			'height' : '100px' 
		});
		
		$('#traverse > #div1 > .btn2').css({
			'width' : '100px',
			'height' : '100px'
		}); */
		
		// >> 선생님 코드
		$('#traverse>div>.btn1, #traverse>div>.btn2').css({
			'width' : '80px',
			'height' : '30px',
			'border' : '1px solid #444'
		});
		
		// btn1, btn2에 이벤트 처리
		var btn1 = $('.btn1')[0];
		btn1.onclick = function() {
			var p = $(btn1).parent();
			$(p).css('background-color', '#88f');
			// $(btn1).parent().css('background-color', '#88f');
		}
		
		var btn2 = $('.btn2')[0];
		btn2.onclick = function() {
			/* $(btn2).parent().css('background-color', 'gold'); */
			
			/* var b = $(btn2).parent();
			$(b).css('background-color', 'gold'); */
			
			$(this).parent().css('background-color', '#f99');
			//여기서 this는 이벤트가 발생한 자신을 나타냄
			
		}
		
	</script>
</body>
</html>
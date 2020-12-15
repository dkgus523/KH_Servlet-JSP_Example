<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>effect</title>
<style>
#target {
	background-image: url("./image/carebear.png");
	background-size: 100% 100%;
	border-radius: 10px;
	width: 93%;
	height: 450px;
}
#btns {
	margin-top: 250px;
}
</style>
</head>
<body>
<div id='effect'>
	<div id='target'></div>
	
	<div id='btns'>
		<input type="button" value='SHOW' id='btnShow' />
		<input type="button" value='HIDE' id='btnHide' />
		<input type="button" value='TOGGLE' id='btnToggle' />
		<input type="button" value='SLIDE DOWN' id='btnSlideDown' />
		<input type="button" value='SLIDE UP' id='btnSlideUp' />
		<input type="button" value='SLIDE TOGGLE' id='btnSlideToggle' />
		<input type="button" value='FADE IN' id='btnFadeIn' />
		<input type="button" value='FADE OUT' id='btnFadeOut' />
		<input type="button" value='ANI' id='btnAni' />
	</div>
</div>
<script>
//사선으로 나타났다 사라짐
$('#btnShow').on('click',function(){
	$('#target').show(2000);
})
$('#btnHide').on('click',function(){
	$('#target').hide(2000);
})
$('#btnToggle').on('click',function(){
	$('#target').toggle(700);
})

//위 아래로 나타났다 사라짐
$('#btnSlideDown').on('click',function(){
	$('#target').slideDown(1000);
})
$('#btnSlideUp').on('click',function(){
	$('#target').slideUp(1000);
})
$('#btnSlideToggle').on('click',function(){
	$('#target').slideToggle(700);
})

//서서히 나타났다 사라짐
$('#btnFadeIn').on('click',function(){
	$('#target').fadeIn(800);
})
$('#btnFadeOut').on('click',function(){
	$('#target').fadeOut(700);
})

$('#btnAni').on('click',function(){
	$('#target').animate({
		'width' : 'toggle',
		'opacity' : 'toggle',
		'height' : 'toggle'
	});
})
</script>
</body>
</html>
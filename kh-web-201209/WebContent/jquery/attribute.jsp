<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attribute</title>
<style>
	.a_type{
		background-color:#00f;
		color:#fff;
	}
	.a_type>h1{
		color:#fff;
		font-family:궁서체;
	}
	.b_type{
		background-color:#f99;
		color:#ff0;
	}
	.b_type>h1{
		color:#ff0;
		font-family:명조체;
	}
	.reset {
		background-color:none;
		color:none;
		font-family:none;
	}
</style>
</head>
<body>
<div id='attr'>
	<div id='target'>
		<h1>Jquery Attr</h1>
	</div>

	<div id='btns'>
		<input type="button" value='A Type' id='btnAtype' />
		<input type="button" value='B Type' id='btnBtype' />
		<input type="button" value='Reset' id='btnReset' />
	</div>
</div>
<script>
	//A, B type에 클릭 이벤트를 추가
	var target = $('#attr>#target');
	$('#attr #btnAtype')[0].onclick() = function(){
		$(target).attr('class','a_type');
	}
	$('#attr #btnBtype')[0].onclick() = function(){
		$(target).attr('class','b_type');
	}
	$('#attr #btnReset')[0].onclick() = function(){
		$(target).attr('class','reset');
	}
	/* $('#attr>#btns>#btnDefault').on('click', function(){
		$(target).removeAttr('class','');
	}); */
	$('#attr>#btns')[0].onclick() = function(){
		$(target).removeAttr('class','');
	}

</script>
</body>
</html>
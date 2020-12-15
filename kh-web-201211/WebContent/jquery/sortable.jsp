<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sortable</title>
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/blitzer/jquery-ui.css' />
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>

<style>
	#items li{
		background-color: pink;
		border: 1px solid purple;
		list-style: none;
		width: 300px;
		height: 50px;
		text-align: center;
		line-height: 50px;
	}
	#items li:hover{
		cursor: pointer;
	}
</style>

</head>
<body>
<div id='sortable'>
	<ul id='items'>
		<li>html5</li>
		<li>css3</li>
		<li>javascript</li>
		<li>java</li>
		<li>jdbc</li>
		<li>jquery</li>
		<li>ajax</li>
		<li>mybatis</li>
		<li>jsp</li>
		<li>spring boot</li>
		<li>final project</li>
	</ul>
</div>
<script>
   $('#items').sortable();
</script>
</body>
</html>
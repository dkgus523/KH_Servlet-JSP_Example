<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_search_form_xml</title>
<style>
#items>div{
	display : inline-block;
	width: 200px;
	min-height:150px;
	border:0px solid #ccc;
	padding:15px;
	box-sizing : border-box;
	box-shadow:2px 2px 4px #aaa;
	border-radius:12px;
	margin-right:7px;
	margin-bottom:8px;
	background-color:#eeeeff;
}
.emp>div:first-child{
	color:#00f;
	border-bottom:1px dotted #555;
}
.emp>div:nth-child(2){
	font-weight:bolder;
}
</style>
</head>
<body>
<div id='emp_search_form'>
	<h2>사원조회(XML)</h2>
	<form name='frm' method='post' id='frm'>
		<label>검색어를 입력하세요 </label>
		<input type='text' size='30' name='findStr' placeholder='성명, 이메일, 연락처로 검색'/>
		<input type='button' value='검색' id='btnFind'/>
	</form>
	<hr/>
	<div id='items'></div>
</div>
<script>
$('#btnFind').on('click', function(){
	let param = $('#frm').serialize();
	let req = new XMLHttpRequest();
	req.open('get', './ajax/emp_search_xml.jsp?' + param); // ? 파라미터의 시작 & 파라미터의 연결 
	req.onreadystatechange=function(){
		//console.log(req.status + "," + req.readyState);
		if(req.status==200 && req.readyState==4){
			let xml = req.responseXML; //응답정보를 xml로 받아들이겠다
			let emps  = xml.getElementsByTagName("emp");
			let rst = '';
			for(var i=0 ; i<emps.length ; i++){
				var emp = emps.item(i);
				var id = emp.getElementsByTagName("id").item(0).firstChild.nodeValue;
			    //눈에 보이는 id 아이템과 자식은 하나인데 시스템적으로 여러개 있어 첫번째를 가져오도록해서 배열 0
				var name = emp.getElementsByTagName("name").item(0).firstChild.nodeValue;
				var email = emp.getElementsByTagName("email").item(0).firstChild.nodeValue;
				var phone = emp.getElementsByTagName("phone").item(0).firstChild.nodeValue;
				var salary = emp.getElementsByTagName("salary").item(0).firstChild.nodeValue;
				
				rst += "<div class='emp'>"
				    +  "   <div>" + id     + "</div>"
				    +  "   <div>" + name   + "</div>"
				    +  "   <div>" + email  + "</div>"
				    +  "   <div>" + phone  + "</div>"
				    +  "   <div>" + salary + "</div>"
				    +  "</div>";
			}
			
			$('#items').html(rst);
		}
	}
	req.send();
})
</script>
</body>
</html>








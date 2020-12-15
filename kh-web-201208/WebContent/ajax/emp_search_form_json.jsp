<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_search_form_json</title>
<style>
#items>div{
	display : inline-block;
	width: 200px;
	min-height:150px;
	border:1px solid #ccc;
	padding:15px;
	box-sizing : border-box;
	box-shadow:2px 2px 4px #aaa;
	border-radius: 0 20px 0 20px;
	border-radius:12px;
	margin-right:7px;
}
.emp>div:first-child{
	color:#00f;
	border-bottom:1px dotted #555;
}
.emp>div:nth-child(2){
	font-weight:bolder;
}
$('#index>#contents>.content').css({
     'width' : '650px',
     'display' : 'inline-block',
     'vertical-align' : 'top'
});
  
$('#index>#contents>.aside').css({
   'width' : '150px',
   'display' : 'inline-block',
   'margin-left' : '-6px',
   'vertical-align' : 'top'
});
</style>
</head>
<body>
<div id='emp_search_form'>
   <h2>사원조회(JSON)</h2>
   <form name='frm' method='post' id='frm'>
      <label>검색어를 입력하세요 </label>
      <input type='text' name='findStr'/>
      <input type='button' value='검색' id='btnFind'/>
   </form>
   <hr/>
   <div id='items'></div>
</div>
<script>
$('#btnFind').on('click', function(){
   let param = $('#frm').serialize();
   let req = new XMLHttpRequest();
   req.open('get', './ajax/emp_search_json.jsp?' + param);
   req.onreadystatechange=function(){
      //console.log(req.status + "," + req.readyState);
      if(req.status==200 && req.readyState==4){ //정상수신
         let data = JSON.parse(req.responseText);
         let doc = '';
		 for(var i=0; i<data.length; i++){
			 doc += "<div class='emp'>"
				 + "	<div>" + data[i].id + "</div>"
				 + "	<div>" + data[i].name + "</div>"
				 + "	<div>" + data[i].email + "</div>"
				 + "	<div>" + data[i].phone + "</div>"
				 + "	<div>" + data[i].salary + "</div>"
				 + "</div>";
		 }
         $('#items').html(doc);
      }
   }
   req.send();
})
</script>
</body>
</html>










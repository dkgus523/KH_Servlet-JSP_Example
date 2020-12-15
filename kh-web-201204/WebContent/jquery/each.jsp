<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>each</title>
</head>
<body>
<div id='each'>
   <div id='source'>
      <div><font color='red'>가</font></div>
      <div>나</div>
      <div>다</div>
      <div>라</div>
   </div>
   <div id='target'></div>
   
   <div id='btns'>
      <input type='button' value='SIZE' id='btnSize'/>
      <input type='button' value='TEXT' id='btnText'/>
      <input type='button' value='HTML' id='btnHtml'/>
      <input type='button' value='EACH' id='btnEach'/>
   </div>
</div>
<script>

$('#target').css({
   'border' : '2px solid #aaa',
   'padding' : '35px'
});

$('#each #btnSize')[0].onclick = function(){
   var len = $('#each>#source>div').length; // .length
   $('#each>#target').html('div 개수 : ' +len);
}

$('#each #btnText')[0].onclick = function(){
	// 1번 방법
	var div = $('#each>#source>div').get(0);
	var text = $(div).text();
	$('#each #target').text(text);
	// 2번 방법
	//var div = $('#each>#source>div:first');
	// 3번 방법
	//var div = $('#each>#source>div').first();
}
//var은 로컬변수로 그 안에서만 사용 가능하고 전역형 변수는 어디서든 사용 가능
//var은 다시 정의 가능 let은 다시 정의 불가능
$('#each #btnHtml')[0].onclick = function(){
	let div = $('#each>#source>div:first');
	let html = $(div).html();
	$('#each #target').html(html);
	// text로 갖고오면 속성이 죽어서 갖고 와지고 html로 가져오면 속성이 살아 있는 상태로 다 가져와진다.
	// 변수 html의 위치는 .html(여기)
}

//'each버튼에 이벤트 먹이기'를 첫 번째로 해주자
$('#each #btnEach')[0].onclick = function(){
			let bg = ['#00f', '#44f', '#88f', '#aaf'];
			$('#each>#source>div').each(function(index){
				$(this).css('background-color', bg[index]);
			});
			
		}

</script>
</body>
</html>
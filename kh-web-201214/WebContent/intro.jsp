<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Intro</title>
	 <!-- 
	 첫 번째 방법
	 <script src="https://code.jquery.com/jquery-3.5.1.js" 
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
      crossorigin="anonymous"></script>
     -->
      <!-- 
      CDN 형태로 가져다 썼다.
      네트워크가 원활하지 않은 경우에는 jQuery 코드들이 정상적이지 않을 수 있다.
      그래서 그 보안책으로 네트웍이 불안정, 사용 불가능한 환경에서도 jQuery 라이브러리 환경을 쓰고싶다면?
      라이브러리를 다운받아서 설치해서 써야 한다. 
      WebContent 프로젝트에 lib 폴더 만들고 jQuery 다운 받은 파일 넣어놓기-->
      
      <!-- 두 번째 방법 -->
	 <script src='./lib/jquery-3.5.1.min.js'></script>
</head>
<body>

	<% //스크립틀릿(scriptlet) : java coding area
	  // java(표준 출력 장치): System.out.println()
	  // javascript: document.write(), console.log()
	out.print("hi jQuery...");
	
	%>
	<h1 id='header'>jQuery Test를 위한 태그(II)</h1>
	
	<ul>
		<!-- 일일이 주소창에 주소값 치고 들어오기 귀찮으니까.  -->
		<li><a href='index.jsp?inc=./jquery/filter.jsp'>FILTER</a></li>
		<li><a href='index.jsp?inc=./jquery/traverse.jsp'>TRAVERSE</a></li>
		<!-- 대박이다!!! 클릭하니까 화면이 나온다. -->
	</ul>
	
	<script>
	$('#header').css('color', '#f00');	// #header { color: #f00; }
	
	</script>
</body>
</html>
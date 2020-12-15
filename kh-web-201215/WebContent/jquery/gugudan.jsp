<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //파라미터 dan을 전달 받아 해당 구구단을 출력하는 코드
	String temp = request.getParameter("dan");
	if(temp != null && !temp.equals("")){
		int dan = Integer.parseInt(temp);
		//구구단 출력 코드
		//1.
		out.print("<h4>Sol1</h4>");
		for(int i=1; i<10; i++){
			out.print(dan + "x" + i + "=" + (dan * 1));			
			
		}
		out.print(" ");
		//2.
		out.print("<h4>Sol2</h4>");
		for(int i = 1; i < 10; i++){
			String str = dan + " X " + i + " = " + dan*i + " <br/>";
			out.print(str);
		}

	}

%>
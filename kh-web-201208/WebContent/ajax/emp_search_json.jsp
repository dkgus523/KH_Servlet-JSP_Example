<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.EmpVo"%>
<%@page import="java.util.List"%>
<%@page import="bean.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //사용자의 요청정보를 dao에 전달한 후 그 결과를 다시 사용자에게 반환
   String findStr = request.getParameter("findStr");
   EmpDao dao = new EmpDao();
   List<EmpVo> list = dao.search(findStr);
   List<String> sb = new ArrayList<String>();
   
   /* String fmt = "<div class='emp'>"
              + "  <div>사번:%d</div>" //%d 정수
              + "  <div>성명:%s</div>" //%s 문자열
              + "  <div>이메일:%s</div>"
              + "  <div>연락처:%s</div>"
              + "  <div>급여:%10.1f</div>" //%f 실수
              + "</div>"; */
   // [{'id':'%d', 'name':'%s', 'email':'%s', 'phone':'%s','salary':'%f'},{}]           
   String fmt = "{"
           + "  'id' : '%d', " 
           + "  'name' : '%s', " 
           + "  'email' : '%s', "
           + "  'phone' : '%s', "
           + "  'salary' : '%10.1f', " 
           + "}"; 
         
   for(EmpVo vo : list){
      String str = String.format(fmt, 
            vo.getEmployee_id(), 
            vo.getFirst_name(),
            vo.getEmail(),
            vo.getPhone_number(),
            vo.getSalary()
            );
      str = str.replaceAll("'","\"");
    	//' -> " 으로 바꿔야하는 이유 : 자바는 두개 구분이 달라서 , 문자열로 인식이 안돼서 
      sb.add(str);
   }
   
   out.print(Arrays.toString(sb.toArray()));
%> 
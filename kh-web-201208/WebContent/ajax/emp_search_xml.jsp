<?xml version='1.0' encoding='UTF-8' ?> <!-- xml 버전이라고 반드시 추가해주기!! -->
<%@page import="java.util.List"%>
<%@page import="bean.EmpDao"%>
<%@page import="bean.EmpVo"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8" 
    pageEncoding="UTF-8"%>   <!-- 콘텐트타입 text/xml로 수정 -->
 
<% 
   String findStr = request.getParameter("findStr");
   EmpDao dao = new EmpDao(); 
    List<EmpVo> list = dao.search(findStr);
%>
   
<emps> 
   <% for(EmpVo vo : list) { %> 
   <emp>
      <id><%=vo.getEmployee_id() %></id>
      <name><%=vo.getFirst_name() %></name>
      <email><%=vo.getEmail() %></email>
      <phone><%=vo.getPhone_number() %></phone>
      <salary><%=vo.getSalary() %></salary>   
   </emp>
   <% } %>
</emps>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<% response.setCharacterEncoding("utf-8"); %>
이름 : <%= request.getParameter("name") %><br>
소개 : <%= request.getParameter("content") %><br>
나이 : <%= request.getParameter("age") %><br>
취미 : 
<%	String[] hobby = request.getParameterValues("hobby");
	if(hobby != null){
		for(String s : hobby){out.print(s);}
	}out.print("<hr>");
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String name = (String)paramEnum.nextElement();
		out.print(name+"<br>");
	}
%>

</body>
</html>
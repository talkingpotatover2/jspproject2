<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "page man");
	request.setAttribute("name", "request man");
	session.setAttribute("name", "session man");
	application.setAttribute("name", "application man");
	
	System.out.println("firstPage.jsp: ");  //콘솔창 출력
	System.out.println("하나의 페이지 속성: " + pageContext.getAttribute("name"));
	System.out.println("하나의 요청 속성: " + request.getAttribute("name"));
	System.out.println("하나의 세션 속성: " + session.getAttribute("name"));
	System.out.println("하나의 애플리케이션 속성: " + application.getAttribute("name"));
	
	request.getRequestDispatcher("secondPage.jsp").forward(request, response);
	//forward방식으로 전송하면 firstPage는 보이지 않고 값이 넘어간 secondPage가 바로 보이게 됨
	//주소는 바뀌지 않기 때문에 여전히 firstPage로 표시가 됨
%>
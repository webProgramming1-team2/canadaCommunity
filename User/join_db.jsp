

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<% 
	String id = "admin";
	String pwd = "1234";
	String name = "관리자";
	request.setCharacterEncoding("UTF-8");
	String id_r = request.getParameter("id");
	String pwd_r = request.getParameter("pwd");
	
	if(id_r.equals(id) && pwd_r.equals(pwd)){
		response.sendRedirect("04_main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
	}else{
		response.sendRedirect("04_loginResult.jsp?code=fail");
	}

%>

<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <title>캐모아 - 회원가입</title>
   
    <head>
    <link rel="import" href="join.html">
     <script language = "javascript">
        function name() {
            Object userData = new Object();
            userData.id = request.getParameter("id");
            userData.passwd = request.getParameter("passwd");
            userData.phone_num = request.getParameter("fst_num") + "-" + request.getParameter("scd_num")
            + "-" + request.getParameter("trd_num");
            userData.gender = request.getParameter("gender");
            var json = JSON.stringify(userData);
            userData.name = request.getParameter("name");
            alert(json);
        }
        
    </script>
    </head>
    <body>
        name()
    </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" href="css/bootstrap.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
  </head>
  
  <body>
             <div class="container" >
               <div class="col-md-10 col-md-offset-2">
                  <table class="table table-bordered table-striped table-hover table-condensed">
                    <thead>
                    <tr>
                    <td>id</td>
                    <td>姓名</td>
                    <td>账号</td>
                    <td>密码</td>
                    <td>性别</td>
                    <td>员工电话</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="abc" items="${list}">
                     <tr>
                    <td>${abc.eid}</td>
                    <td>${abc.ename}</td>
                    <td>${abc.eusername}</td>
                    <td>${abc.epassword}</td>
                    <td>${abc.esex}</td>
                    <td>${abc.ephone}</td>
                    </tr>
                    
                    
                    
                    </c:forEach>
                    
                    </tbody>
                  
                  
                  </table>
               
               </div>
               </div>
  </body>
</html>

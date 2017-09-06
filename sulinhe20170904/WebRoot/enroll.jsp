<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'enroll.jsp' starting page</title>
    
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
    <script type="text/javascript">
      $(function()
      {
      /* 验证用户名不能重复 */
        $("#ename").blur(function()
        {
          $("#span1").empty();
            var name=$(this).val();
           $.post("${pageContext.request.contextPath}/user/check",{"name":name},function(a)
           {
                   if(a=="no")
                   { 
                    $("#ename").after("<span id='span1'>用户名已存在</span>"); 
                   }
                   else
                   {
                   $("#ename").after("<span id='span1'>用户名可以使用</span>"); 
                   }
           
           },"json");
            
        
        
        });
          /* 验证电话 */
          $("#ephone").blur(function()
        {
           $("#span").empty();
            var phone=$(this).val();
              /* 必须为11位,以1开头*/
              var abc=/^1[3|4|5|7|8][0-9]{9}$/;
                
                 if(!abc.test(phone))/* 判断 */
                {
                  $("#ephone").after("<span id='span'>必须为11位,以1开头</span>"); 
                } 
        
        
        });
          
      
      
      })
    
    </script>
  </head>
  
  <body>
               <div class="container" >
               <div class="col-md-7 col-md-offset-4">
               <form action="${pageContext.request.contextPath}/user/enroll">
               <table class="table table-bordered table-striped table-hover table-condensed">
               <tr>
               <td>姓名</td>
               <td><input type="text" class="form-control" id="" name="ename"></td>
               </tr>
                <tr>
               <td>账号</td>
               <td><input type="text" class="form-control" id="ename" name="eusername"></td>
               </tr>
                <tr>
               <td>密码</td>
               <td><input type="password" class="form-control" id="" name="epassword"></td>
               </tr>
                <tr>
               <td>性别</td>
               <td><input type="radio"   checked="checked" value="男" name="esex">男　　　　
                   <input type="radio"  value="女" name="esex">女
               </td>
               </tr>
                <tr>
               <td>员工电话</td>
               <td><input type="text" class="form-control" id="ephone" name="ephone"></td>
               </tr>     
               <tr>
               <td colspan="20">
                   <input type="submit" align="middle" value="注册" class="btn btn-primary">
               </td>
               </tr>
               </table>  
               </form>
               </div>
                </div>
  </body>
</html>

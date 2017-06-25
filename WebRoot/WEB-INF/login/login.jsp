<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../static/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script src="../static/js/jquery-3.2.1.min.js"></script>
<script src="../static/bootstrap/js/bootstrap.min.js"></script>

<title>Add User From</title>
</head>
<body>
<div style="width:60%; margin:auto; margin-top:200px">

<form role="form" action="logindo" method="post">
  <div class="form-group" style="width:30%">
    <label for="name">账号</label>
    <input type="text" class="form-control" id="userName" name="userName" placeholder="请输入名称">
  </div>
  <div class="form-group" style="width:30%">
    <label for="password">密码</label>
    <input type="password" class="form-control" id="userPassword" name="userPassword">
    
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox">记住密码
    </label>
  </div>
  <button type="submit" class="btn btn-default">登陆</button>
  <button onclick="register()"   >注册</button>
</form>

<script type="text/javascript">
function  register(){
 window.location.href="registerview"; 
}
</script>

	
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../static/FontAwesome-3.2.1/css/font-awesome.css" rel="stylesheet">
<script src="../static/js/jquery-3.2.1.js"></script>
<script src="../static/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/js/browser.js"></script>
<script src="../static/js/jquery-ui.min.js"></script>
<script src="../static/js/jquery.form.js"></script>
<title>注册</title>
</head>
<body>

<div  style="width: 60%;margin: auto;;margin-top: 200px">

<table class="table table-striped">
  <caption>条纹表格布局</caption>
  <thead>
    <tr>
      <th>ID编号</th>
      <th>用户名</th>
      <th>密码</th>
      <th>创建时间</th>
      <th>性别</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list }" var="k">
  	<tr>
      <td>${k.user_id }</td>
      <td>${k.user_name }</td>
      <td>${k.user_password }</td>
      <td>
      <fmt:formatDate value="${k.initial_time }"  pattern="yyyy-MM-dd HH:mm:ss"/>
      
      </td>
      <td>
      <c:if test="${k.user_sex==1 }">男</c:if>
      <c:if test="${k.user_sex==0 }">女</c:if>
      
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>

</div>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../common/common.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'dividePage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body>
	<div class="pages" style="text-align:center;">
		<c:if test="${!pagehelper.isFirstPage}">
			<a href="${pageContext.request.contextPath}/doorder/orderdetail?pageno=${pagehelper.firstPage}&&flag=${flag}">首页</a>
			<a href="${pageContext.request.contextPath}/doorder/orderdetail?pageno=${pagehelper.prePage}&&flag=${flag}">上一页</a>
		</c:if>
		<c:forEach items="${pagehelper.navigatepageNums}" var="navigatepageNum">
			<c:if test="${navigatepageNum==pagehelper.pageNum}">
				<a href="${pageContext.request.contextPath}/doorder/orderdetail?pageno=${navigatepageNum}&&flag=${flag}">${navigatepageNum}</a>
			</c:if>
			<c:if test="${navigatepageNum!=pagehelper.pageNum}">
				<a href="${pageContext.request.contextPath}/doorder/orderdetail?pageno=${navigatepageNum}&&flag=${flag}">${navigatepageNum}</a>
			</c:if>
		</c:forEach>
		<c:if test="${!pagehelper.isLastPage}">
			<a href="${pageContext.request.contextPath}/doorder/orderdetail?pageno=${pagehelper.nextPage}&&flag=${flag}">下一页</a>
			<a href="${pageContext.request.contextPath}/doorder/orderdetail?pageno=${pagehelper.lastPage}&&flag=${flag}">最后一页</a>
		</c:if>
	</div>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
      
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min_044d0927.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.bxslider_e88acd1b.js"></script>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/menu.js"></script>
            
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/lrscroll_1.js"></script>
    
    
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/n_nav.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/milk_ban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/paper_ban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/baby_ban.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <%@ include file="../../common/header.jsp" %>
    <script src="${pageContext.request.contextPath}/js/Car.js"></script>
    <title>MM网</title>
</head>
<body>
<!--Begin Header Begin-->
<div id="searchBar">

	
    <%@ include file="../../common/Search.jsp" %>
    
    
</div>
<!--End Header End-->
<!--Begin Menu Begin-->
<div class="menu_bg">
    <div class="menu">
        <!--Begin 商品分类详情 Begin-->
        <%@ include file="../../common/LeftBar.jsp" %>
        <!--End 商品分类详情 End-->
    </div>
</div>
<!--End Menu End-->
<div class="i_bg">
    <div id="settlement">
    
    <%@ include file="./settlement1.jsp" %>
    
    </div>
   
    <%@ include file="../../common/footer.jsp" %>
</div>
</body>
</html>

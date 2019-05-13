<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'search.jsp' starting page</title>
    
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
    <div class="top">
    <div class="logo"><a href="${pageContext.request.contextPath}/show/Index"><img style="height: 55px" src="${pageContext.request.contextPath}/images/logo.png" /></a></div>
    <div class="search">
    	<form action="${pageContext.request.contextPath}/doproduct/queryproductList">
        	<input type="text" value="" name="proName" class="s_ipt" />
            <input type="submit" value="搜索" class="s_btn" />
        </form>                      
        <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
    </div>
    <div class="i_car">
    	<div class="car_t">购物车 [ 
    	
    	
    	<c:if test="${not empty cartlist}">
    	<span>${fn:length(cartlist.items)}</span>
    	</c:if>
    	
    	<c:if test="${empty cartlist}">
    	<span>空</span>
    	</c:if>
    	 ]</div>
        <div class="car_bg">
       		<!--Begin 购物车未登录 Begin-->
        	<div class="un_login">还未登录！<a href="${pageContext.request.contextPath}/show/Login" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
            <!--End 购物车未登录 End-->
            <!--Begin 购物车已登录 Begin-->
            <ul class="cars">
            
            
            <c:if test="${not empty cartlist}">
            
              <c:forEach items="${cartlist.items}" var="item" varStatus="i">
              <li>
               <div class="img"><a><img src="${pageContext.request.contextPath}${filepath}${item.product.filename}" width="58" height="58" /></a></div>
               <div class="name"><a>${item.product.name}</a></div>
               <div class="price"><font color="#ff4e00">
              
               ￥${item.cost}</font> X ${item.quantity}</div>
               </li>        
             </c:forEach>
            </c:if>
            
            	<!-- <li>
                	<div class="img"><a href="#"><img src="images/car1.jpg" width="58" height="58" /></a></div>
                    <div class="name"><a href="#">法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只</a></div>
                    <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                </li>
                -->
            </ul>
            <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>
            
            <c:if test="${empty cartlist.sum}">
            0.0
            </c:if>
            ${cartlist.sum}</span></div>
            
            
             <c:if test="${empty users}">
              <div class="price_a"><a href="${pageContext.request.contextPath}/show/Login">去登陆</a></div>
             </c:if>
             <c:if test="${not empty users}">
             <div class="price_a"><a href="${pageContext.request.contextPath}/show/toSettlement">去购物车结算</a></div>
             </c:if>
            
            <!--End 购物车已登录 End-->
        </div>
    </div>
</div>
  </body>
</html>

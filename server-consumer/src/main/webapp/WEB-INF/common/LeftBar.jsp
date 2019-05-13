<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'RightBar.jsp' starting page</title>
    
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
    <div class="nav">
        	<div class="nav_t">全部商品分类</div>
            <div class="leftNav">
                <ul>      
                
                  <c:forEach items="${pclist}" var="list" varStatus="i">
                  
    				 <li >
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="${pageContext.request.contextPath}/images/nav1.png" /></span>
    							<a href="${pageContext.request.contextPath}/doproduct/queryproductList?productid=${list.pc.tid}"> <span class="fl">${list.pc.name}</span></a>
    					</div>		
    					<div class="zj">
                            <div class="zj_l">
                                <c:forEach items="${list.pcVOList}" var="list1" varStatus="i">
                                <div class="zj_l_c">
                                 <h2><a href="${pageContext.request.contextPath}/doproduct/queryproductList?productid=${list1.pc.tid}">${list1.pc.name}</a></h2>
                                  <c:forEach items="${list1.pcVOList}" var="list2" varStatus="i">
                                  <a href="${pageContext.request.contextPath}/doproduct/queryproductList?productid=${list2.pc.tid}">${list2.pc.name}</a>
                                 </c:forEach>
                                </div>
                                </c:forEach>
                            </div>
                            <div class="zj_r">
                                <a href="#"><img src="${pageContext.request.contextPath}/images/n_img1.jpg" width="236" height="200" /></a>
                                <a href="#"><img src="${pageContext.request.contextPath}/images/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>
    				</c:forEach>
              
                   </ul> 
            </div>
        </div> 
        
        
        
        <ul class="menu_r">
        <li><a href="${pageContext.request.contextPath}/show/Index">首页</a></li>
        <c:forEach items="${pclist}" var="list" varStatus="i">
        <li style='<c:if test="${fn:length(list.pc.name)>5}">width:100px</c:if>'><a  style='<c:if test="${fn:length(list.pc.name)>5}">width:100px</c:if>' href="${pageContext.request.contextPath}/doproduct/queryproductList?productid=${list.pc.tid}">${list.pc.name}</a>
				</li>
        </c:forEach>
			</ul>
			
			
			
			
	<script>
	
	
	jQuery(".leftNav").addClass("none");
	
	</script>
  </body>
</html>

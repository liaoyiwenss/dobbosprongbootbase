<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <!--[if IE 6]>
    <script src="js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->
        
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/menu.js"></script>
        
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/select.js"></script>
        
    
<title>liaoyiwen</title>
</head>
<body>  
<!--Begin Header Begin-->

<%@include file="../common/header.jsp" %>
<%@include file="../common/Search.jsp" %>
<!--End Header End--> 
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
   		<%@ include file="prepublicpage/LeftBar.jsp" %>
		<div class="m_right">
            <p></p>			
            <div class="mem_tit">订单详情</div>
            
            
            
         <c:forEach items="${pagehelper.list}" var="list">
         
         
           
<table border="0" class="order_tab" style="width:930px; text-align:center; margin-bottom:30px;" cellspacing="0" cellpadding="0">
        <tbody>
        
        <tr style="background:#bababa">
          <td width="20%">用户名：${list.loginname }</td>
          <td width="40%">订单号：${list.serialnumber }</td>
          <td width="15%">地址：${list.useraddress }</td>
          <td width="15%">价格：${list.cost}</td>
        </tr>
        <tr>
          <td width="20%">商品名称</td>
          <td width="20%">商品图片</td>
          <td width="25%">数量</td>
          <td width="25%">价格</td>
        </tr>
        <c:forEach items="${list.orderdetaillist}" var="temp">
          <tr>
            <td>
              <a href="${pageContext.request.contextPath}/Product?action=queryProductDeatil&id=${temp.product.tid}" target="_blank">
              ${temp.product.name}
              </a>
            </td>
            <td>
              <img src="http://192.168.232.128${temp.product.filename}" width="50" height="50"/>
            </td>
            <td>${temp.quantity}</td>
            <td>${temp.cost}</td>
          </tr>
        </c:forEach>
		</tbody>
		</table>
		 </c:forEach>
            <%@ include file="prepublicpage/dividePage.jsp" %>
        </div>
    </div>
	<!--End 用户中心 End--> 
    <!--Begin Footer Begin -->
  <%@include file="../common/footer2.jsp" %>  
   <%@include file="../common/footer.jsp" %>
    <!--End Footer End -->    
</div>

</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../../common/common.jsp"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN">
<html>
  <head>
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
  

    <div class="m_left">
        	<div class="left_n">管理中心</div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">订单中心</div>
                <ul>
                
                <c:if test="${users.type==1}">
                	<li><a href="${pageContext.request.contextPath}/doorder/orderdetail?flag=2">全部订单</a></li>
                	</c:if>
                    <li><a href="${pageContext.request.contextPath}/doorder/orderdetail?flag=1" class="now">我的订单</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg2">会员中心</div>
                <ul>
                	<li><a href="${pageContext.request.contextPath}/show/Member_User" >用户信息</a></li>
                   
                   <c:if test="${users.type==1}">
                    <li><a href="${pageContext.request.contextPath}/douser/getAlluser">用户列表</a></li>
                  </c:if>
                    <c:if test="${users.type==1}">
                        <li><a href="${pageContext.request.contextPath}/dorole/getallrole">角色列表</a></li>
                    </c:if>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg3">账户中心</div>
                <ul>
                	
                	<c:if test="${users.type==1}">
                    <li><a href="${pageContext.request.contextPath}/doproductcategory/getcategorylist">分类管理</a></li><!-- /page/Member_Links.jsp -->
                    <li><a href="${pageContext.request.contextPath}/doproduct/getallproduct">商品管理</a></li><!-- /page/Member_Links.jsp -->
                	 <li><a href="${pageContext.request.contextPath}/show/Member_Msg">商品上架</a></li>
                	</c:if>
                </ul>
            </div>
           <%--  <div class="left_m">
            	<div class="left_m_t t_bg4">分销中心</div>
                <ul>
                	<li><a href="${pageContext.request.contextPath}/page/Member_${pageContext.request.contextPath}/page/Member.jsp">我的会员</a></li>
                    <li><a href="${pageContext.request.contextPath}/page/Member_Results.jsp">我的业绩</a></li>
                    <li><a href="${pageContext.request.contextPath}/page/Member_Commission.jsp">我的佣金</a></li>
                    <li><a href="${pageContext.request.contextPath}/page/Member_Cash.jsp">申请提现</a></li>
                </ul>
            </div> --%>
        </div>
        
     
        
  </body>
  
  
  <script type="text/javascript">
  
  </script>
</html>

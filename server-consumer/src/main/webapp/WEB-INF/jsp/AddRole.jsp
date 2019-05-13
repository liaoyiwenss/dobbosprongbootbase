<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp" %>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <!--[if IE 6]>
    <script src="${pageContext.request.contextPath}/js/iepng.js" type="text/javascript"></script>
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

            <br>
            <form action="${pageContext.request.contextPath}/dorole/addrole" method="post" id="userAdd" onsubmit="return checkUser();">
                <table border="0" class="add_tab" style="width:930px;" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="135" align="right">角色名称</td>
                        <td>
                            <input type="text" value="${role.rolename}" class="add_ipt" name="rolename"/>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <c:choose>
                                <c:when test="${empty role.tid || role.tid==0}">
                                    <input type="submit" value="添加角色" class="s_btn">
                                </c:when>
                                <c:otherwise>
                                    <input type="submit" value="修改信息" class="s_btn">
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </table>
            </form>
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

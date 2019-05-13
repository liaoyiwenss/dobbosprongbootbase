<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="css/style.css" />
    <!--[if IE 6]>
    <script src="js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->
        
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>    
        
	<script type="text/javascript" src="js/select.js"></script>
        
    
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
   		<%@ include file="../prepublicpage/LeftBar.jsp" %>
		<div class="m_right">
            <p></p>		
            
			<div class="mem_tit">
            	我的佣金
            </div>
            <table border="1" class="co_tab" style="width:930px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="35%"><img src="images/bag.png" align="absmiddle" /> &nbsp;消费返利</td>                       
                <td width="65%" style="color:#ff4e00;">100R</td>
              </tr>
              <tr>
                <td width="35%"><img src="images/bag.png" align="absmiddle" /> &nbsp;预存返还 </td>                       
                <td width="65%" style="color:#ff4e00;">100R</td>
              </tr>
              <tr>
                <td width="35%"><img src="images/bag.png" align="absmiddle" /> &nbsp;联盟返利 </td>                       
                <td width="65%" style="color:#ff4e00;">1000R</td>
              </tr>
              <tr>
                <td width="35%"><img src="images/bag.png" align="absmiddle" /> &nbsp;可提现余额 </td>                       
                <td width="65%" style="color:#ff4e00;">
                	1200R
                	<span class="tx"><a href="#">提现</a></span>
                </td>
              </tr>
            </table>

            
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

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
            <div class="mem_tit">账户安全</div>
            <div class="m_des">
                <form>
                <table border="0" style="width:880px;"  cellspacing="0" cellpadding="0">
                  <tr height="45">
                    <td width="80" align="right">原手机 &nbsp; &nbsp;</td>
                    <td><input type="text" value="" class="add_ipt" style="width:180px;" />&nbsp; <font color="#ff4e00">*</font></td>
                  </tr>
                  <tr height="45">
                    <td align="right">新手机 &nbsp; &nbsp;</td>
                    <td><input type="text" value="" class="add_ipt" style="width:180px;" />&nbsp; <font color="#ff4e00">*</font></td>
                  </tr>
                  <tr height="50">
                    <td>&nbsp;</td>
                    <td><input type="submit" value="确认修改" class="btn_tj" /></td>
                  </tr>
                </table>
                </form>
            </div>
            
            <div class="m_des">
                <form>
                <table border="0" style="width:880px;"  cellspacing="0" cellpadding="0">
                  <tr height="45">
                    <td width="80" align="right">原邮箱 &nbsp; &nbsp;</td>
                    <td><input type="text" value="" class="add_ipt" style="width:180px;" />&nbsp; <font color="#ff4e00">*</font></td>
                  </tr>
                  <tr height="45">
                    <td align="right">新邮箱 &nbsp; &nbsp;</td>
                    <td><input type="text" value="" class="add_ipt" style="width:180px;" />&nbsp; <font color="#ff4e00">*</font></td>
                  </tr>
                  <tr height="50">
                    <td>&nbsp;</td>
                    <td><input type="submit" value="确认修改" class="btn_tj" /></td>
                  </tr>
                </table>
                </form>
            </div>
            
            <div class="m_des">
                <form>
                <table border="0" style="width:880px;"  cellspacing="0" cellpadding="0">
                  <tr height="45">
                    <td width="80" align="right">原密码 &nbsp; &nbsp;</td>
                    <td><input type="password" value="" class="add_ipt" style="width:180px;" />&nbsp; <font color="#ff4e00">*</font></td>
                  </tr>
                  <tr height="45">
                    <td align="right">新密码 &nbsp; &nbsp;</td>
                    <td><input type="password" value="" class="add_ipt" style="width:180px;" />&nbsp; <font color="#ff4e00">*</font></td>
                  </tr>
                  <tr height="45">
                    <td align="right">确认密码 &nbsp; &nbsp;</td>
                    <td><input type="password" value="" class="add_ipt" style="width:180px;" />&nbsp; <font color="#ff4e00">*</font></td>
                  </tr>
                  <tr height="50">
                    <td>&nbsp;</td>
                    <td><input type="submit" value="确认修改" class="btn_tj" /></td>
                  </tr>
                </table>
                </form>
            </div>







            
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

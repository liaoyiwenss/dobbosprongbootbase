<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/regist.css" />
    <!--[if IE 6]>
    <script src="${pageContext.request.contextPath}/js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min_044d0927.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.bxslider_e88acd1b.js"></script>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/menu.js"></script>
        
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/select.js"></script>
    
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/lrscroll.js"></script>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/iban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/fban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/f_ban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/mban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/hban.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/tban.js"></script>
    
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/lrscroll_1.js"></script>
    
    
<title>liaoyiwen</title>
</head>
<body>  
<!--Begin Header Begin-->

<%@include file="../common/header.jsp" %>
<!--End Header End--> 
<!--Begin Login Begin-->
<div class="log_bg">	
    <div class="top">
        <div class="logo"><a href="${pageContext.request.contextPath}/show/Index"><img style="height: 55px" src="${pageContext.request.contextPath}/images/logo.png" /></a></div>
    </div>
	<div class="regist">
    	<div class="log_img"><img src="${pageContext.request.contextPath}/images/l_img.png" width="611" height="425" /></div>
		<div class="reg_c">
        	<form id="registerfrom" action="${pageContext.request.contextPath}/douser/addUser">
            <table border="0" style="width:420px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0">
              <tr height="50" valign="top">
              	<td width="95">&nbsp;</td>
                <td>
                	<span class="fl" style="font-size:24px;">注册</span>
                    <span class="fr">已有商城账号，<a href="${pageContext.request.contextPath}/show/Login" style="color:#ff4e00;">我要登录</a></span>
                </td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;用户名 &nbsp;</td>
                <td><input type="text" onblur="checkUserName()" value="" id="username" class="l_user" name="username" pattern="^\w{2,10}$" required placeholder="用户名"/></td>
              </tr>
              <tr>
                    <span></span>
                    <span align="right" style="position: relative; top: 2px" id="usernameId"><font color="#ff4e00"></font>&nbsp; &nbsp;</span>
                </tr>
              
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;密码 &nbsp;</td>
                <td><input type="password" value="" class="l_pwd" name="password" pattern="^\w{2,10}$" required placeholder="密码"/></td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00"></font>&nbsp;确认密码 &nbsp;</td>
                <td><input type="password" value="" class="l_pwd" name="repassword" pattern="^\w{2,10}$"  required placeholder="确认密码"/></td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;邮箱 &nbsp;</td>
                <td><input type="text" value="" class="l_email" name="email" required placeholder="邮箱"/></td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;手机 &nbsp;</td>
                <td><input id="phone" type="text" value="" class="l_tel" name="phone"  required placeholder="手机号" pattern="^1[3578]\d{9}$"/></td>
              </tr>
              <tr height="50">
                <td align="right" id="realname">真实姓名 &nbsp;</td>
                <td><input type="text" value="" name="realname" required class="l_mem" /></td>
              </tr>
              <tr height="50">
                <td align="right">身份证号 &nbsp;</td>
                <td><input type="text" value="" name="indentified" required id="indentified"  class="l_num" /></td>
              </tr>
              <tr  height="50">
                <td align="right"> <font color="#ff4e00">*</font>&nbsp;验证码 &nbsp;</td>
                <td >
                    <input type="text" name="kaptcha" value="" class="l_ipt" />
                    <a href="javascript:reloadCode();" style="font-size:12px; font-family:'宋体';">换一张</a>
                    <a href="javascript:reloadCode();"><img style="position:relative; bottom:-20px;" src="/kaptcha.jpg" id="kaptchaImage" /></a>
                </td>
              </tr>
              <tr>
              	<td>&nbsp;</td>
                <td style="font-size:12px; padding-top:20px;">
                	<span style="font-family:'宋体';" class="fl">
                    	<label class="r_rad"></label><label class="r_txt">我已阅读并接受《用户协议》</label>
                    </span>
                </td>
              </tr>
              <tr height="60">
              	<td>&nbsp;</td>
                <td><input id="registerbutton" type="button" value="立即注册" class="log_btn" /></td>
              </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<!--End Login End--> 
<!--Begin Footer Begin-->
   <%@include file="../common/footer.jsp" %>
<!--End Footer End -->    
<script>
var path="${pageContext.request.contextPath}";

</script>

  <script type="text/javascript">
	function reloadCode() {
		var time = new Date().getTime();
		document.getElementById("kaptchaImage").src = "/kaptcha?d="+time;
	}


</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jsonHandler.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/js/Regist.js"></script>
</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>

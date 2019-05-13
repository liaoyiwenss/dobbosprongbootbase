<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
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
	<div class="login">
    	<div class="log_img"><img src="${pageContext.request.contextPath}/images/l_img.png" width="611" height="425" /></div>
		<div class="log_c">
        	<form id="loginform" action="${pageContext.request.contextPath}/douser/tologin">
            <table border="0" style="width:370px; font-size:14px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr height="50" valign="top">
              	<td width="55">&nbsp;</td>
                <td>
                	<span class="fl" style="font-size:24px;">登录</span>
                    <span class="fr">还没有商城账号，<a href="${pageContext.request.contextPath}/show/Regist" style="color:#ff4e00;">立即注册</a></span>
                </td>
              </tr>
              <tr height="70">
                <td>用户名</td>
                <td><input type="text" value="" class="l_user" id="username" name="username"  required placeholder="用户名"/></td>
              </tr>
              <tr height="70">
                <td>密&nbsp; &nbsp; 码</td>
                <td><input type="password" value="" class="l_pwd"  class="l_pwd" name="password"  required placeholder="密码" /></td>
              </tr>
              <tr>
              	<td>&nbsp;</td>
                <td style="font-size:12px; padding-top:20px;">
                	<span style="font-family:'宋体';" class="fl">
                    	<label class="r_rad"><input type="checkbox" /></label><label class="r_txt">请保存我这次的登录信息</label>
                    </span>
                    <span class="fr"><a href="#" style="color:#ff4e00;">忘记密码</a></span>
                </td>
              </tr>
              <tr height="60">
              	<td>&nbsp;</td>
                <td><input id="loginbutton" type="button" value="登录" class="log_btn" /></td>
              </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<!--End Login End--> 
<!--Begin Footer Begin-->
<div class="btmbg">
    <div class="btm">
        备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 liaoyiwen商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
        <img src="${pageContext.request.contextPath}/images/b_1.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/images/b_2.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/images/b_3.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/images/b_4.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/images/b_5.gif" width="98" height="33" /><img src="${pageContext.request.contextPath}/images/b_6.gif" width="98" height="33" />
    </div>    	
</div>
<!--Begin 弹出层-加入购物车 Begin-->
<div id="fade1" class="black_overlay"></div>
<div id="MyDiv1" class="white_content">
    <div class="white_d">
        <div class="notice_t">
            <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv_1('MyDiv1','fade1')"><img src="${pageContext.request.contextPath}/images/close.gif" /></span>
        </div>
        <div class="notice_c">

            <table border="0" align="center"  cellspacing="0" cellpadding="0">
                <tr valign="top">
                    <td width="40"><img src="${pageContext.request.contextPath}/images/suc.png" /></td>
                    <td>
                        <span id="message" style="color:#3e3e3e; font-size:18px; font-weight:bold;">宝贝已成功添加到购物车</span><br />

                    </td>
                </tr>
                <tr height="50" valign="bottom">
                    <td>&nbsp;</td>
                    <td><a href="#" class="b_sure">关闭</a><a href="/images/btn_sure.gif" class="b_buy">取消</a></td>
                </tr>
            </table>

        </div>
    </div>
<!--End Footer End -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jsonHandler.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/alerts.js"></script>
</body>
<script>
    $("#loginbutton").click(function () {
        var json = $("#loginform").serializeObject();
        debugger
        var path="${pageContext.request.contextPath }";
        $.ajax({
            "url": path + "/douser/toprelogin",
            "type": "post",
            "data": json,
            // "dataType": "Json",
            "success": function (result) {
                console.log(result);
                debugger
                if (result=="true") {
                    $("#loginform").submit();
                } else {
                    $("#message").html(result);
                    ShowDiv_1('MyDiv1','fade1');
                }
            }
        })
    })
    $(this).bind('keyup', function(event) {
        if (event.keyCode == "13") {
            //回车执行查询
            var json = $("#loginform").serializeObject();
            debugger
            var path="${pageContext.request.contextPath }";
            $.ajax({
                "url": path + "/douser/toprelogin",
                "type": "post",
                "data": json,
                // "dataType": "Json",
                "success": function (result) {
                    console.log(result);
                    debugger
                    if (result=="true") {
                        $("#loginform").submit();
                    } else {
                        $("#message").html(result);
                        ShowDiv_1('MyDiv1','fade1');
                    }
                }
            })
        }
    });
</script>

<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>

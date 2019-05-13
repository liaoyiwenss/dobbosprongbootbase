<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script type="text/javascript">
    var contextPath = "${ctx}";
</script>
<div class="content mar_20">
    <img src="${ctx}/images/img3.jpg"/>
</div>
<div class="content mar_20">
    <!--Begin 银行卡支付 Begin -->
    <div class="warning">
        <table border="0" style="width:1000px; text-align:center;" cellspacing="0" cellpadding="0">
            <tr height="35">
                <td style="font-size:18px;">
                    感谢您在本店购物！您的订单已提交成功，请记住您的订单号: <font color="#ff4e00">${currentOrder.serialnumber}</font>
                </td>
            </tr>
            <tr>
                <td style="font-size:14px; font-family:'宋体'; padding:10px 0 20px 0; border-bottom:1px solid #b6b6b6;">
                    您选定的配送方式为: <font color="#ff4e00">申通快递</font>； &nbsp; &nbsp;您选定的支付方式为: <font
                        color="#ff4e00">支付宝</font>； &nbsp; &nbsp;您的应付款金额为: <font color="#ff4e00">￥${currentOrder.cost}</font>
                </td>
            </tr>
            <tr>
                <td style="padding:20px 0 30px 0; font-family:'宋体';">
                    收款人信息：全称 ${sessionScope.users.username} ；地址 ${currentOrder.useraddress} ； <br/>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="${ctx}">首页</a> &nbsp; &nbsp; <a href="${ctx}">用户中心</a>
                </td>
            </tr>
        </table>
    </div>
    
    <script type="text/javascript">
    jQuery.ajax({
		"url" : path+"/shopping/buycar1",
		"type" : "post",
		"data" : null,
		"dataType" : "html",
		"success" : function(result) {
			jQuery("#searchBar").html(result);
		}
	}
)
    </script>
</div>


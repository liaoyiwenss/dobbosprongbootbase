<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script type="text/javascript">
    var contextPath = "${ctx}";
</script>
<div class="content mar_20">
    <img src="${ctx}/images/img2.jpg"/>
</div>
<div class="content mar_20">
    <div class="two_bg">
        <div class="two_t">
            <span class="fr"><a href="javascript:void(0);" onclick="settlement1();">修改</a></span>商品列表
        </div>
        <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
            <tr>
                <td class="car_th" width="550">商品名称</td>
                <td class="car_th" width="150">购买数量</td>
                <td class="car_th" width="130">小计</td>
            </tr>
            <c:forEach items="${cartlist.items}" var="temp">
                <tr>
                    <td>
                        <div class="c_s_img">
                            <img src="http://192.168.232.128${temp.product.filename}" width="73" height="73"/>
                        </div>
                            ${temp.product.name}
                    </td>
                    <td align="center">${temp.quantity}</td>
                    <td align="center" style="color:#ff4e00;">￥${temp.cost}</td>
                </tr>
            </c:forEach>
        </table>

        <div class="two_t">
            <span class="fr"></span>收货人信息
        </div>
        <table border="0" class="peo_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
            <tr>
                <td class="p_td" width="160">用户名称</td>
                <td width="395">${sessionScope.users.username}</td>
                <td class="p_td">登录名称</td>
                <td>${sessionScope.users.loginname}</td>
            </tr>
            <tr>
                <td class="p_td">手机</td>
                <td>${sessionScope.users.mobile}</td>
                <td class="p_td" width="160">电子邮件</td>
                <td width="395">${sessionScope.users.email}</td>
            </tr>
        </table>
        <div class="two_t">
            <span class="fr"></span>选择地址
        </div>
        <table border="0" class="peo_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
            <c:forEach items="${userAddressList}" var="temp" varStatus="status">
                <tr>
                    <td class="p_td" width="160">
                        <c:choose>
                            <c:when test="${empty temp.remark}">
                                地址${status.index+1}
                            </c:when>
                            <c:otherwise>
                                ${temp.remark}
                            </c:otherwise>
                        </c:choose>
                        <input type="radio" name="selectAddress" value="${temp.tid}">
                    </td>
                    <td>
                            ${temp.address}
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td class="p_td" width="160">
                    新地址<input type="radio" name="selectAddress" value="-1">
                </td>
                <td>
                    地址&nbsp;<input type="text" value="" name="address" class="add_ipt">&nbsp;
                    备注&nbsp;<input type="text" value="" name="remark" class="add_ipt">
                </td>
            </tr>
        </table>
        <table border="0" style="width:900px; margin-top:20px;" cellspacing="0" cellpadding="0">
            <tr height="70">
                <td align="right">
                    <b style="font-size:14px;">应付款金额：<span
                            style="font-size:22px; color:#ff4e00;">￥${sessionScope.cartlist.sum}</span></b>
                </td>
            </tr>
            <tr height="70">
                <td align="right"><a href="javascript:void(0);" onclick="settlement3();"><img
                        src="${ctx}/images/btn_sure.gif"/></a></td>
            </tr>
        </table>
    </div>
    <script>
    
    function settlement1(){
    
    jQuery.ajax({
		"url" : path+"/shopping/BalanceCar",
		"type" : "post",
		"data" : {"index":3},
		"dataType" : "html",
		"success" : function(result) {
			
			jQuery("#settlement").html(result);
		}
	}
	
)
    
    
    }
    
    function settlement3(){
	var id=jQuery(":checked").val();
var address=jQuery(".add_ipt:first").val();
var remark=jQuery(".add_ipt:last").val();

alert(id);
alert(address);
alert(remark);
		
	if(id==""||id==null)
	{
	alert('您还没有选择地址！！');
	return;
	}
	if(id==-1){

		if(address==null||address=="")
		{
		alert('地址内容不能为空！！');
		return;
		}
		else if(remark==null||remark=="")
		{
		alert('备注内容不能为空！！');
		return;
		}
	}
	jQuery.ajax({
		"url" : path+"/shopping/BalanceCar",
		"type" : "post",
		"data" : {"index":2,"tid":id,"address":address,"remark":remark},
		"dataType" : "html",
		"success" : function(result) {
			
			jQuery("#settlement").html(result);
		}
	}
) 

}
    </script>
</div>
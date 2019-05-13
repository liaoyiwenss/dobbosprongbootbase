<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<script type="text/javascript">
  var path = "${ctx}";
</script>
<div class="content mar_20">
    <img src="${ctx}/images/img1.jpg"/>
</div>
<!--Begin 第一步：查看购物车 Begin -->
<div class="content mar_20" >
    <table border="0" class="car_tab" style="width:1200px; margin-bottom:50px;" cellspacing="0" cellpadding="0">
        <tr>
            <td class="car_th" width="200">商品名称</td>
            <td class="car_th" width="150">单价</td>
            <td class="car_th" width="150">购买数量</td>
            <td class="car_th" width="130">小计</td>
            <td class="car_th" width="150">操作</td>
        </tr>
        <c:forEach items="${cartlist.items}" var="temp">
            <tr>
                <td>
                    <div class="c_s_img">
                        <a href="${ctx}/Product?action=queryProductDeatil&id=${temp.product.tid}"><img src="${ctx}${filepath}${temp.product.filename}" width="73" height="73"/></a>
                    </div>
                        ${temp.product.name}
                </td>
                <td align="center" style="color:#ff4e00;">￥${temp.product.price}</td>
                <td align="center">
                    <div class="c_num">
                        <input type="button" value="" onclick="subQuantity(this,'${temp.product.tid}',${temp.quantity});" class="car_btn_1"/>
                        <input type="text" value="${temp.quantity}" name="${temp.product.tid}" class="car_ipt"/>
                        <input type="button" value="" onclick="addQuantity(this,'${temp.product.tid}',${temp.quantity});" class="car_btn_2"/>
                    </div>
                </td>
                <td align="center" style="color:#ff4e00;">￥${temp.cost}</td>
                <td align="center"><a href="javascript:void(0);" onclick="removeCart('${temp.product.tid}');" >删除</a>&nbsp; &nbsp;</td>
            </tr>
        </c:forEach>
        <tr height="70">
            <td colspan="6" style="font-family:'Microsoft YaHei'; border-bottom:0;">
                <c:if test="${sessionScope.cartlist==null || sessionScope.cartlist.sum==null}">
                    <span class="fr">商品总价：<b style="font-size:22px; color:#ff4e00;">￥0</b></span>
                </c:if>
                <c:if test="${sessionScope.cartlist!=null && sessionScope.cartlist.sum!=null}">
                    <span class="fr">商品总价：<b style="font-size:22px; color:#ff4e00;">￥${sessionScope.cartlist.sum}</b></span>
                </c:if>
            </td>
        </tr>
        <tr valign="top" height="150">
            <td colspan="6" align="right">
                <a  href="${pageContext.request.contextPath}/show/Index"><img src="${ctx}/images/buy1.gif" /></a>&nbsp;&nbsp;
                <c:if test="${sessionScope.cartlist!=null && sessionScope.cartlist.sum>0}">
                    <a href="javascript:void(0);" onclick="settlement2();"><img src="${ctx}/images/buy2.gif" /></a>
                </c:if>
            </td>
        </tr>
    </table>
    
    
    <script>
    
    function settlement2(){
	
	jQuery.ajax({
		"url" : path+"/shopping/BalanceCar",
		"type" : "post",
		"data" : {"index":1},
		"dataType" : "html",
		"success" : function(result) {
			
			jQuery("#settlement").html(result);
		}
	}
	
)

}


function removeCart(index){

jQuery.ajax({
		"url" : path+"/shopping/removeProduct",
		"type" : "post",
		"data" : {"tid":index},
		"dataType" : "html",
		"success" : function(result) {
			
			jQuery("#settlement").html(result);
		}
	}
)


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

}

function addQuantity(obj,id,quntity){


	
	jQuery.ajax({
		"url" : path+"/shopping/addProduct",
		"type" : "post",
		"data" : {"tid":id,"quntity":quntity+1},
		"dataType" : "html",
		"success" : function(result) {
			
			jQuery("#settlement").html(result);
		}
	}
)


jQuery.ajax({
		"url" : path+"/shopping/buycar1",
		"type" : "post",
		"data" : {"tid":id,"quntity":quntity},
		"dataType" : "html",
		"success" : function(result) {
			
			jQuery("#searchBar").html(result);
		}
	}
)
}


function subQuantity(obj,id,quntity){

	
	jQuery.ajax({
		"url" : path+"/shopping/addProduct",
		"type" : "post",
		"data" : {"tid":id,"quntity":quntity-1},
		"dataType" : "html",
		"success" : function(result) {
			
			jQuery("#settlement").html(result);
		}
	}
)


jQuery.ajax({
		"url" : path+"/shopping/buycar1",
		"type" : "post",
		"data" : {"tid":id,"quntity":quntity},
		"dataType" : "html",
		"success" : function(result) {
			
			jQuery("#searchBar").html(result);
		}
	}
)
}
jQuery(".c_num input").blur(function(){
var vvs=$(this).val();
var id=$(this).attr("name");
if(isNaN(vvs))
{
alert('非法录入');
return;
}
jQuery.ajax({
		"url" : path+"/servlet/AddProduct",
		"type" : "post",
		"data" : {"tid":id,"quntity":vvs},
		"dataType" : "html",
		"success" : function(result) {
			jQuery("#settlement").html(result);
		}
	}
)
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


})

    
    </script>
</div>




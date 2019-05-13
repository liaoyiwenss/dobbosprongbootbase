<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp" %>
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
            <div class="mem_tit">我的留言</div>
           	<form action="${pageContext.request.contextPath }/doproduct/addProduct?action=update" method="post"  enctype="multipart/form-data">
            <table border="0" style="width:880px; margin-top:20px;"  cellspacing="0" cellpadding="0">
              <tr height="45">
                <td align="right">一级分类&nbsp; &nbsp;</td>
                <td>
                <select id="one" name="one">
					<option value="${c1.tid}">${c1.name}</option>
					
					 
				</select>
                
                </td>
              </tr>
              <tr height="45">
                <td align="right">二级分类&nbsp; &nbsp;</td>
                <td>
                <select id="two" name="two">
					<option  value="${c2.tid}">${c2.name}</option>
				</select>
                
                </td>
              </tr>
              <tr height="45">
                <td align="right">三级分类&nbsp; &nbsp;</td>
                <td>
                <select id="three" name="three">
					<option  value="${c3.tid}">${c3.name}</option>
				</select>
                
                </td>
              </tr>
              <tr height="45">
                <td align="right">图片名称 &nbsp; &nbsp;</td>
                <td><input type="text" name="picname" value="${product.name }"/></td>
              </tr>
               <tr height="45">
                <td align="right">单价 &nbsp; &nbsp;</td>
                <td><input type="text" name="price" value="${product.price }"/></td>
              </tr>
                <tr height="45">
                <td align="right">库存&nbsp; &nbsp;</td>
                <td><input type="text" name="stock" value="${product.stock}"/></td>
              </tr>
              <tr height="45">
              	<td> <img src="http://192.168.232.128${product.filename}" width="50" height="50"/></td>
                <td>上传图片<input type="file" name="picpath" /></td>
              </tr>
              <tr height="50">
                <td>&nbsp;</td>
                <td style="line-height:20px;">
                	<font color="#ff4e00">小提示：</font><br />
                    您可以上传以下格式的文件：gif、jpg、png、word、excel、txt、zip、ppt、pdf
                </td>
              </tr>
              <tr height="50" valign="bottom">
                <td>&nbsp;</td>
                <td><input type="submit" value="提交" class="btn_tj" /></td>
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


<script>
jQuery("#one").change(function(){
		var id=jQuery(this).find("option:selected").attr("id");
		
		 jQuery("#two").html("<option>--请选择--</option>");
		jQuery.ajax({
			"url" : "${pageContext.request.contextPath}/doproductcategory/categorylevel",
			"type" : "post",
			"data" : {"tid":id},
			"dataType" : "Json",
			"success" : function(result){
			jQuery.each(result,function(i,n){
			jQuery("#two").append("<option id='"+n.tid+"'value='"+n.tid+"'>"+n.name+"</option>");
			})
			}
		}) 
		})

jQuery("#two").change(function(){
		var id=jQuery(this).find("option:selected").attr("id");
		
		 jQuery("#three").html("<option>--请选择--</option>");
		jQuery.ajax({
			"url" : "${pageContext.request.contextPath}/doproductcategory/categorylevel",
			"type" : "post",
			"data" : {"tid":id},
			"dataType" : "Json",
			"success" : function(result){
			jQuery.each(result,function(i,n){
			jQuery("#three").append("<option id='"+n.tid+"'value='"+n.tid+"'>"+n.name+"</option>");
			})
			}
		}) 
		})
</script>
</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>

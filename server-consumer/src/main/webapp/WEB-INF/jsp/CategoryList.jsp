<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@include file="../common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <!--[if IE 6]>
    <script src="${pageContext.request.contextPath}/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        EvPNG.fix('div, ul, img, li, input, a');
    </script>
    <![endif]-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>


    <script type="text/javascript" src="${pageContext.request.contextPath}/js/menu.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lrscroll_1.js"></script>


    <script type="text/javascript" src="${pageContext.request.contextPath}/js/n_nav.js"></script>

    <title>liaoyiwen</title>
</head>
<body>
<!--Begin Header Begin-->

<%@include file="../common/header.jsp" %>


<div id="sercarch">
    <%@include file="../common/Search.jsp" %>
</div>

<!--End Header End-->
<!--Begin Menu Begin-->
<div class="menu_bg">
    <div class="menu">
        <!--Begin 商品分类详情 Begin-->

        <%@include file="../common/LeftBar.jsp" %>
        <!--End 商品分类详情 End-->

        <div class="m_ad">中秋送好礼！</div>
    </div>
</div>
<!--End Menu End-->
<div class="i_bg">
    <div class="postion">
        <span class="fl">全部 > 美妆个护 > 香水 > </span>
        <span class="n_ch">
            <span class="fl">品牌：<font>香奈儿</font></span>
            <a href="#"><img
                    src="${pageContext.request.contextPath}/${pageContext.request.contextPath}/images/s_close.gif"/></a>
        </span>
    </div>
    <!--Begin 筛选条件 Begin-->
    <div class="content mar_10">
        <table border="0" class="choice" style="width:100%; font-family:'宋体'; margin:0 auto;" cellspacing="0"
               cellpadding="0">
            <tr valign="top">
                <td width="70">&nbsp; 品牌：</td>
                <td class="td_a"><a href="#" class="now">香奈儿（Chanel）</a><a href="#">迪奥（Dior）</a><a
                        href="#">范思哲（VERSACE）</a><a href="#">菲拉格慕（Ferragamo）</a><a href="#">兰蔻（LANCOME）</a><a href="#">爱马仕（HERMES）</a><a
                        href="#">卡文克莱（Calvin Klein）</a><a href="#">古驰（GUCCI）</a><a href="#">宝格丽（BVLGARI）</a><a href="#">阿迪达斯（Adidas）</a><a
                        href="#">卡尔文·克莱恩（CK）</a><a href="#">凌仕（LYNX）</a><a href="#">大卫杜夫（Davidoff）</a><a href="#">安娜苏（Anna
                    sui）</a><a href="#">阿玛尼（ARMANI）</a><a href="#">娇兰（Guerlain）</a></td>
            </tr>
            <tr valign="top">
                <td>&nbsp; 价格：</td>
                <td class="td_a"><a href="#">0-199</a><a href="#" class="now">200-399</a><a href="#">400-599</a><a
                        href="#">600-899</a><a href="#">900-1299</a><a href="#">1300-1399</a><a href="#">1400以上</a></td>
            </tr>
            <tr>
                <td>&nbsp; 类型：</td>
                <td class="td_a"><a href="#">女士香水</a><a href="#">男士香水</a><a href="#">Q版香水</a><a href="#">组合套装</a><a
                        href="#">香体走珠</a><a href="#">其它</a></td>
            </tr>
            <tr>
                <td>&nbsp; 香型：</td>
                <td class="td_a"><a href="#">浓香水</a><a href="#">香精Parfum香水</a><a href="#">淡香精EDP淡香水</a><a
                        href="#">香露EDT</a><a href="#">古龙水</a><a href="#">其它</a></td>
            </tr>
        </table>
    </div>
    <!--End 筛选条件 End-->

    <div class="content mar_20">
        <div class="l_history">
            <div class="his_t">
                <span class="fl">浏览历史</span>
                <span class="fr"><a href="#">清空</a></span>
            </div>
            <ul>
                <li>
                    <div class="img"><a href="#"><img src="${pageContext.request.contextPath}/images/his_1.jpg"
                                                      width="185" height="162"/></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="${pageContext.request.contextPath}/images/his_2.jpg"
                                                      width="185" height="162"/></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>768.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="${pageContext.request.contextPath}/images/his_3.jpg"
                                                      width="185" height="162"/></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>680.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="${pageContext.request.contextPath}/images/his_4.jpg"
                                                      width="185" height="162"/></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="${pageContext.request.contextPath}/images/his_5.jpg"
                                                      width="185" height="162"/></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 18R
                    </div>
                </li>
            </ul>
        </div>
        <div class="l_list">
            <div class="list_t">
            	<span class="fl list_or">
                	<a href="#" class="now">默认</a>
                    <a>
                    	<span class="fl">销量</span>                        
                        <span class="i_up">销量从低到高显示</span>
                        <span class="i_down">销量从高到低显示</span>                                                     
                    </a>
                    <a id="sortPrice">
                    	<span class="fl">价格</span>                        
                        <span class="i_up">价格从低到高显示</span>
                        <span class="i_down">价格从高到低显示</span>     
                    </a>
                    <a href="#">新品</a>
                </span>
                <span class="fr">共发现120件</span>
            </div>
            <div class="list_c">

                <ul class="cate_list">
                    <c:forEach items="${pagehelper.list}" var="list" varStatus="i">
                        <li>
                            <div class="img"><a href="${pageContext.request.contextPath}/doproduct/product?tid=${list.tid}"><img
                                    src="${pageContext.request.contextPath}${filepath}${list.filename}" width="210"
                                    height="185"/></a></div>
                            <div class="price">
                                <font><span>￥${list.price}</span></font> &nbsp; 26R
                            </div>
                            <div class="name"><a href="#">${list.name}</a></div>
                            <div class="carbg">
                                <a href="#" class="ss">收藏</a>
                                <a class="j_car" onClick="add('${list.tid}',1)">加入购物车</a>
                            </div>
                        </li>

                    </c:forEach>


                </ul>


                <div class="pages" style="text-align:center;">
                    <c:if test="${!pagehelper.isFirstPage}">
                        <a href="${pageContext.request.contextPath}/doproduct/queryproductList?pageno=${pagehelper.firstPage}&&productid=${pcid}&&proName=${proName}">首页</a>
                        <a href="${pageContext.request.contextPath}/doproduct/queryproductList?pageno=${pagehelper.prePage}&&productid=${pcid}&&proName=${proName}">上一页</a>
                    </c:if>
                    <c:forEach items="${pagehelper.navigatepageNums}" var="navigatepageNum">
                        <c:if test="${navigatepageNum==pagehelper.pageNum}">
                            <a href="${pageContext.request.contextPath}/doproduct/queryproductList?pageno=${navigatepageNum}&&productid=${pcid}&&proName=${proName}">${navigatepageNum}</a>
                        </c:if>
                        <c:if test="${navigatepageNum!=pagehelper.pageNum}">
                            <a href="${pageContext.request.contextPath}/doproduct/queryproductList?pageno=${navigatepageNum}&&productid=${pcid}&&proName=${proName}">${navigatepageNum}</a>
                        </c:if>
                    </c:forEach>
                    <c:if test="${!pagehelper.isLastPage}">
                        <a href="${pageContext.request.contextPath}/doproduct/queryproductList?pageno=${pagehelper.nextPage}&&productid=${pcid}&&proName=${proName}">下一页</a>
                        <a href="${pageContext.request.contextPath}/doproduct/queryproductList?pageno=${pagehelper.lastPage}&&productid=${pcid}&&proName=${proName}">最后一页</a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>

    <!--Begin Footer Begin -->
    <%@include file="../common/footer2.jsp" %>
    <%@include file="../common/footer.jsp" %>
    <!--End Footer End -->
</div>


<div id="fade1" class="black_overlay"></div>
<div id="MyDiv1" class="white_content">
    <div class="white_d">
        <div class="notice_t">
            <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv_1('MyDiv1','fade1')"><img
                    src="${pageContext.request.contextPath }/images/close.gif"/></span>
        </div>
        <div class="notice_c">
            <table border="0" align="center" style="margin-top:;" cellspacing="0" cellpadding="0">
                <tr valign="top">
                    <td width="40"><img src="${pageContext.request.contextPath }/images/suc.png"/></td>
                    <td>
                        <span style="color:#3e3e3e; font-size:18px; font-weight:bold;">宝贝已成功添加到购物车</span><br/>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</div>
<script>
    var path = "${pageContext.request.contextPath}";
</script>


<script type="text/javascript" src="${pageContext.request.contextPath }/js/Car.js"></script>
</body>

<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>

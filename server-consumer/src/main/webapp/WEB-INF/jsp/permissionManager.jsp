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


    <link rel="stylesheet" href="${pageContext.request.contextPath}/ztreestatic/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/ztreestatic/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/ztreestatic/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/ztreestatic/js/jquery.ztree.excheck.js"></script>
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
            <div class="mem_tit">全部角色信息 <input type="button" style="margin-left:600px" onclick="location.href='${pageContext.request.contextPath}/show/AddRole'" value="增加角色" class="btn_tj" /></div>

            <table id="roletable" border="0" class="order_tab" style="width:930px; text-align:center; margin-bottom:30px;"
                   cellspacing="0" cellpadding="0">
                <tbody>
                <tr  style="background:#bababa">
                    <td width="20%">角色名称</td>
                    <td width="20%" colspan="2">操作</td>
                </tr>
                <c:forEach items="${pagehelper.list}" var="temp" varStatus="status">
                    <tr>
                        <td>${temp.rolename}</td>
                        <td>
                            <form class="permissionfrom" style="display: none" id="">
                                <c:forEach items="${temp.permissions}" var="permission">
                                    <input name="id" value="${permission.tid}"/>
                                    <input name="pid" value="${permission.pid}"/>
                                    <input name="name" value="${permission.permissionname}"/>
                                    <input name="open" value="true"/>
                                </c:forEach>
                            </form>
                            <a onclick="ShowDiv_1('MyDiv1','fade1','${status.index}','${temp.tid}')">修改</a>
                        </td>
                        <td>
                            <a href="javascript:if(confirm('确认是否删除此角色？')) location='${pageContext.request.contextPath}/dorole/deleterole?tid=${temp.tid}'"  target="_blank">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div class="pages" style="text-align:center;">
                <c:if test="${!pagehelper.isFirstPage}">
                    <a href="${pageContext.request.contextPath}/douser/getAlluser?flag=${flag}&&pageno=${pagehelper.firstPage}&&flag=${flag}">首页</a>
                    <a href="${pageContext.request.contextPath}/douser/getAlluser?flag=${flag}&&pageno=${pagehelper.prePage}&&flag=${flag}">上一页</a>
                </c:if>
                <c:forEach items="${pagehelper.navigatepageNums}" var="navigatepageNum">
                    <c:if test="${navigatepageNum==pagehelper.pageNum}">
                        <a href="${pageContext.request.contextPath}/douser/getAlluser?flag=${flag}&&pageno=${navigatepageNum}&&flag=${flag}">${navigatepageNum}</a>
                    </c:if>
                    <c:if test="${navigatepageNum!=pagehelper.pageNum}">
                        <a href="${pageContext.request.contextPath}/douser/getAlluser?flag=${flag}&&pageno=${navigatepageNum}&&flag=${flag}">${navigatepageNum}</a>
                    </c:if>
                </c:forEach>
                <c:if test="${!pagehelper.isLastPage}">
                    <a href="${pageContext.request.contextPath}/douser/getAlluser?flag=${flag}&&pageno=${pagehelper.nextPage}&&flag=${flag}">下一页</a>
                    <a href="${pageContext.request.contextPath}/douser/getAlluser?flag=${flag}&&pageno=${pagehelper.lastPage}&&flag=${flag}">最后一页</a>
                </c:if>
            </div>

        </div>
    </div>
    <!--End 用户中心 End-->
    <!--Begin Footer Begin -->
    <%@include file="../common/footer2.jsp" %>
    <%@include file="../common/footer.jsp" %>
    <!--End Footer End -->
</div>
<!--Begin 弹出层-加入购物车 Begin-->
<div id="fade1" class="black_overlay"></div>
<div id="MyDiv1" class="white_content">
    <div class="white_d">
        <div class="notice_t">
            <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv_1('MyDiv1','fade1')"><img src="${pageContext.request.contextPath}/images/close.gif" /></span>
        </div>
        <div class="notice_c">
                <input type="hidden" id="roleid" value=""/>
                <div class="zTreeDemoBackground left">
                    <ul id="treeDemo" class="ztree"></ul>
                    <input id="rpbutton" type="button" value="角色权限修改"/>
                </div>
                <div class="right">
                    <ul class="info">
                        <ul class="list">
                            <li class="highlight_red">必须设置属性</li>
                            <li><p>父节点和子节点之间的链接关系:<br/>
                                选中: <input type="checkbox" id="py" class="checkbox first" checked /><span>影响父节点</span>
                                <input type="checkbox" id="sy" class="checkbox first" checked /><span>影响子节点</span><br/>
                                未选中: <input type="checkbox" id="pn" class="checkbox first" checked /><span>影响父节点</span>
                                <input type="checkbox" id="sn" class="checkbox first" checked /><span>影响子节点</span><br/>
                            </p>
                            </li>
                        </ul>
                        </li>
                    </ul>
                </div>
            </div>
    </div>
</div>
<!--End 弹出层-加入购物车 End-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jsonHandler.js"></script>
<script>

    var path="${pageContext.request.contextPath}";

    function CloseDiv_1(show_div,bg_div)
    {
        document.getElementById(show_div).style.display='none';
        document.getElementById(bg_div).style.display='none';
    };
    function ShowDiv_1(show_div,bg_div,index,roleid){
        document.getElementById(show_div).style.display='block';
        document.getElementById(bg_div).style.display='block' ;
        $("#roleid").val(roleid);
        var bgdiv = document.getElementById(bg_div);
        bgdiv.style.width = document.body.scrollWidth;


        debugger

        // var mynodes=$("#roletable from:nth-of-type("+index+")").serializeObject();
        var checknode=$(".permissionfrom:nth-of-type("+index+1+")").serializeObject();
        /*var mynodes=$(this).prev().serializeObject();*/

        var permissions='${permissions}';

        var mynode=$.parseJSON(permissions);

        $.each(mynode,function (i, n) {
            $.each(checknode.id, function(index, value) {

                debugger
                if(n.tid==value)
                {
                    n.checked=true;
                }
            })
        })
        $.fn.zTree.init($("#treeDemo"), setting, mynode);
        // bgdiv.style.height = $(document).height();
        // setTimeout("CloseDiv_1('MyDiv1','fade1')",1000);
    };

    $("#rpbutton").click(function () {
        var treenode = $.fn.zTree.getZTreeObj("treeDemo");
        var chkNodeArr = treenode.getCheckedNodes(true);
        var roleid=$("#roleid").val();
        var updateRoleDto={"roleid": roleid,"permissions":chkNodeArr};
        debugger
        $.ajax({
            "url": path + "/dorole/updateRoleandPermisson",
            "type": "post",
            "contentType":"application/json",
            "data":JSON.stringify(updateRoleDto),
            "dataType": "Json",
            "success": function (result) {
                CloseDiv_1('MyDiv1','fade1');
                location.href="${pageContext.request.contextPath}/dorole/getallrole";
            }
        })
    })

    var setting = {
        check: {
            enable: true
        },
        data: {
            simpleData: {
                enable: true
            }
        }
    };

    var zNodes =[
    ];

    var code;

    function setCheck() {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
            py = $("#py").attr("checked")? "p":"",
            sy = $("#sy").attr("checked")? "s":"",
            pn = $("#pn").attr("checked")? "p":"",
            sn = $("#sn").attr("checked")? "s":"",
            type = { "Y":py + sy, "N":pn + sn};
        zTree.setting.check.chkboxType = type;
        showCode('setting.check.chkboxType = { "Y" : "' + type.Y + '", "N" : "' + type.N + '" };');
    }
    function showCode(str) {
        if (!code) code = $("#code");
        code.empty();
        code.append("<li>"+str+"</li>");
    }

    $(document).ready(function(){
        $.fn.zTree.init($("#treeDemo"), setting, zNodes);
        setCheck();
        $("#py").bind("change", setCheck);
        $("#sy").bind("change", setCheck);
        $("#pn").bind("change", setCheck);
        $("#sn").bind("change", setCheck);
    });
</script>
</body>



<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>

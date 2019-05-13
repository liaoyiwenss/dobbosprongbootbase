
$(".log_btn").click(function () {
    var u = $(" :text").get(0);
    if (u.validity.valueMissing == true) {
        u.setCustomValidity("用户名不能为空");
    } else if (u.validity.patternMismatch == true) {
        u.setCustomValidity("1、由字母、数字、下划线、点、减号组成<br/>2、只能以数字、字母开头或结尾，且长度为2-10");
    } else {
        u.setCustomValidity("");
    }


    var uu = $("#phone").get(0);
    if (uu.validity.valueMissing == true) {
        uu.setCustomValidity("绑定的手机号");
    } else if (uu.validity.patternMismatch == true) {
        uu.setCustomValidity("手机号码，以13，15，17，18开头的11为数字");
    } else {
        uu.setCustomValidity("");
    }
    var u2 = $(" :password").get(0);
    if (u2.validity.valueMissing == true) {
        u2.setCustomValidity("不能为空");
    } else if (u2.validity.patternMismatch == true) {
        u2.setCustomValidity("密码应为2-10个字符");
    } else {
        u2.setCustomValidity("");
    }
    var u3 = $(" :password").get(1);
    if (u3.validity.patternMismatch == true) {
        u3.setCustomValidity("密码不匹配");
    } else if (u2.value != u3.value) {
        u3.setCustomValidity("两次密码输入不一致！");
    } else {
        u3.setCustomValidity("");
    }


    var u5 = $("#indentified").get(0);

    var reg = new RegExp("^\w{18}$");
    if (u5.validity.valueMissing == true) {
        u5.setCustomValidity("身份证不能为空");
    } else if (u5.value.length != 18) {
        u5.setCustomValidity("身份证为18个字符");
    } else {
        u5.setCustomValidity("");
    }

    var flag = false;
    var odom = e("username");//输入框DOM对象
    var vals = odom.value;
    $.ajax({
        "url": path + "/douser/ExistsUsername",
        "type": "post",
        "data": {"username": vals},
        "dataType": "Json",
        async: false,
        "success": function (result) {

            if (result == null) {
                flag = true;
            } else {
                flag = false;
            }
        }
    })

    return flag;

});


function e(str) {
    return document.getElementById(str);
}

//动态添加有样式的内容
function appendHtml(obj, str, className) {
    obj.innerHTML = str;
    obj.className = className;
}

//验证用户名输入
function checkUserName() {
    debugger
    var flag = true;
    var odom = e("username");//输入框DOM对象
    var vals = odom.value;
    var omsg = e("usernameId");//信息提示DOM对象
    var reg = new RegExp("^[a-zA-Z0-9][a-zA-Z0-9\-\._]{2,16}[a-zA-Z0-9]$");
    if (odom.value == "") {
        odom.style.borderColor = "red";
        appendHtml(omsg, "通行证用户名不能为空，请输入通行证用户名", "error_prompt");
        flag = false;
    } else if (odom.value.match(reg) == null) {
        odom.style.borderColor = "red";
        appendHtml(omsg, "请输入正确的通行证用户名", "error_prompt");
        flag = false;
    } else {


        $.ajax({
            "url": path + "/douser/ExistsUsername",
            "type": "post",
            "data": {"username": vals},
            "dataType": "Json",
            "success": function (result) {
                debugger
                if (result == null) {
                    debugger
                    odom.style.borderColor = "green";
                    appendHtml(omsg, "可以使用", "ok_prompt");
                } else {
                    odom.style.borderColor = "red";
                    appendHtml(omsg, "用户名已被使用", "error_prompt");
                }

            }
        })


    }


    return flag;
}


$("#registerbutton").click(function () {


    var json = $("#registerfrom").serializeObject();
    var odom = e("username");//输入框DOM对象
    var omsg = e("usernameId");
    $.ajax({
        "url": path + "/douser/toRegister",
        "type": "post",
        "data": json,
        // "dataType": "Json",
        "success": function (result) {
            console.log(result);
            debugger
            if (result) {
                $("#registerfrom").submit();
            } else {
                debugger
                odom.style.borderColor = "red";
                appendHtml(omsg, result, "error_prompt");
            }
        }
    })

})

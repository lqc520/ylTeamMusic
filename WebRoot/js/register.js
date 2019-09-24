//;分号开头，用于防止代码压缩合并时与其它代码混在一起造成语法错误
//而事实证明，uglify压缩工具会将无意义的前置分号去掉，我只是习惯了这么写

//(function(){})();立即执行函数，闭包，避免污染全局变量
//通常一个插件只暴露一个变量给全局供其它程序调用
//还有其它写法，运算符+函数体+括号
//例：!function(){}(); +function(){}(); -function(){}();
//    void function(){}(); 等等只要能对函数返回值进行运算的符号都可以
(function(global) {

    //开启严格模式，规范代码，提高浏览器运行效率
    //"use strict";

    //定义一个类，通常首字母大写
    var SlideVerify = function(path,num) {

        var slideVerify = document.getElementById('slideVerify'),
            chip = slideVerify.getElementsByClassName('chip')[0],//图片小块
            chip2 = slideVerify.getElementsByClassName('chip2')[0],
            box = slideVerify.getElementsByClassName('drag')[0],
            bg = slideVerify.getElementsByClassName('bg')[0],
            text = slideVerify.getElementsByClassName('text')[0],
            btn = slideVerify.getElementsByClassName('btn')[0],
            image = slideVerify.getElementsByClassName('image')[0],
            offsetX,//鼠标滑动距离
            distance,// = //滑动成功的宽度（距离）
            sildeWidth = box.offsetWidth - btn.offsetWidth,
            status =false,
            imgAt = Math.floor(Math.random()*num);
        //var img = document.createElement('img');
        //image.appendChild(img);

        image.style.background = 'url('+path+imgAt+'.jpg)';
        var getStatus = function(){
            return status;
        }
        //二、给滑块注册鼠标按下事件
        btn.onmousedown = function(e){

            //1.鼠标按下之前必须清除掉后面设置的过渡属性
            btn.style.transition = "";
            bg.style.transition ="";

            //说明：clientX 事件属性会返回当事件被触发时，鼠标指针向对于浏览器页面(或客户区)的水平坐标。

            //2.当滑块位于初始位置时，得到鼠标按下时的水平位置
            var e = e || window.event;
            var downX = e.clientX;

            //加载图片小块
            ry = Math.floor(Math.random()*80)+20;
            rx = Math.floor(Math.random()*150)+110;
            chip.style.background = 'url('+path+imgAt+'.jpg)';
            chip.style.top = ry+'px';
            chip.style.backgroundPositionX = -rx+ 'px';
            chip.style.backgroundPositionY = -ry+ 'px';
            chip2.style.background = 'url('+path+imgAt+'.jpg)';
            chip2.style.top = ry+'px';
            chip2.style.left = rx+'px';
            chip2.style.backgroundPositionX = -rx+ 'px';
            chip2.style.backgroundPositionY = -ry+ 'px';
            chip2.style['box-shadow'] = '5px 5px 10px black';
            distance = rx;
            //三、给文档注册鼠标移动事件
            document.onmousemove = function(e){

                var e = e || window.event;
                //1.获取鼠标移动后的水平位置
                var moveX = e.clientX;

                //2.得到鼠标水平位置的偏移量（鼠标移动时的位置 - 鼠标按下时的位置）
                offsetX = moveX - downX;

                //3.在这里判断一下：鼠标水平移动的距离 与 滑动成功的距离 之间的关系
                if( offsetX > sildeWidth){
                    offsetX = sildeWidth;//如果滑过了终点，就将它停留在终点位置
                }else if( offsetX < 0){
                    offsetX = 0;//如果滑到了起点的左侧，就将它重置为起点位置
                }

                //4.根据鼠标移动的距离来动态设置滑块的偏移量和背景颜色的宽度
                btn.style.left = offsetX + "px";
                bg.style.width = offsetX + "px";
                chip.style.left = offsetX + "px";

                
            }

            //四、给文档注册鼠标松开事件
            document.onmouseup = function(e){

                //如果鼠标的水平移动距离 = 滑动成功的宽度
                if( offsetX - distance<8 && offsetX - distance>-8){

                    //1.设置滑动成功后的样式
                    text.innerHTML = "验证通过";
                    text.style.color = "#fff";
                    btn.innerHTML = "&radic;";
                    btn.style.color = "green";
                    bg.style.backgroundColor = "lightgreen";
                    
                    bg.style.width = sildeWidth + "px";
                    btn.style.left = sildeWidth + "px";
                    status = true;

                    //成功后，清除掉鼠标按下事件和移动事件（因为移动时并不会涉及到鼠标松开事件）
                    btn.onmousedown = null;
                    document.onmousemove = null;
                    image.onmousedown = null;
                    //3.成功解锁后的回调函数
                    // setTimeout(function(){
                    //     alert('解锁成功！');
                    // },100);
                }else{
                    //反之，则将滑块复位（设置了1s的属性过渡效果）
                    
                    btn.style.left = 0;
                    bg.style.width = 0;
                    // btn.style.transition = "left 1s ease";
                    // bg.style.transition = "width 1s ease";
                    imgAt = Math.floor(Math.random()*num);
                    image.style.background = 'url('+path+imgAt+'.jpg)';
                    chip.style.background = null;
                    chip2.style.background = null;
                    chip2.style['box-shadow'] = null;
                }
                //只要鼠标松开了，说明此时不需要拖动滑块了，那么就清除鼠标移动和松开事件。
                document.onmousemove = null;
                document.onmouseup = null;
            }


        }

    };

    //覆写原型链，给继承者提供方法
    SlideVerify.prototype = {
        init: function() {

        }
    };

    //兼容CommonJs规范
    if (typeof module !== 'undefined' && module.exports) module.exports = SlideVerify;

    //兼容AMD/CMD规范
    if (typeof define === 'function') define(function() { return SlideVerify; });

    //注册全局变量，兼容直接使用script标签引入该插件
    global.SlideVerify = SlideVerify;

//this，在浏览器环境指window，在nodejs环境指global
//使用this而不直接用window/global是为了兼容浏览器端和服务端
//将this传进函数体，使全局变量变为局部变量，可缩短函数访问全局变量的时间
})(this);

var uname_reg = /^[\u4e00-\u9fa5]{4,20}$|^[\dA-Za-z_\-]{4,20}$/;  
var uname_ok = false;  
    // 用户名输入框获取焦点  
    $("#uname").focus(function(){  
        $(this).css("outline", "none");  
        $(this).attr("placeholder", "");  
        $(this).parent().css("border-color", "#999");  
        $("#uname_error").css("color", "#c5c5c5");  
        $("#uname_error").html("支持中文, 字母, 数字, \"-\", \"_\", 的组合, 4-20个字符");  
    });  
    $("#uname").blur(function(){  
        if ($(this).val() == "") {  
            $(this).attr("placeholder", "您的账户名和登录名");  
            $("#uname_error").html("");  
            uname_ok = false;  
        } else if ($(this).val().length < 4 || $(this).val().length > 20) {  
            // 长度不对  
            $("#uname_error").html("长度只能在4-20个字符之间");  
            $("#uname_error").css("color", "red");  
            $(this).parent().css("border-color", "red");  
            uname_ok = false;  
        } else if (!$(this).val().match(uname_reg)) {  
            // 有特殊字符  
            $("#uname_error").html("格式错误, 仅支持中文, 字母, 数字, \"-\", \"_\"的组合");  
            $("#uname_error").css("color", "red");  
            $(this).parent().css("border-color", "red");  
            uname_ok = false;  
        } else {  
            uname_ok = true;  
        }  
    });  
  
    var pwd_reg = /^(?![A-Z]+$)(?![a-z]+$)(?!\d+$)(?![\W_]+$)\S{6,20}$/;  
    var pwd_ok = false;  
    // 密码输入框获取焦点  
    $("#pwd").focus(function(){  
        $(this).css("outline", "none");  
        $(this).attr("placeholder", "");  
        $(this).parent().css("border-color", "#999");  
        $("#pwd_error").css("color", "#c5c5c5");  
        $("#pwd_error").html("建议使用字母, 数字和符号两种及以上的组合, 6-20个字符");  
    });  
    $("#pwd").blur(function(){  
        if ($(this).val() == "") {  
            $(this).attr("placeholder", "建议至少使用两种字符组合");  
            $("#pwd_error").html("");  
            pwd_ok = false;  
        } else if ($(this).val().length < 6 || $(this).val().length > 20) {  
            // 长度不对  
            $("#pwd_error").html("长度只能在6-20个字符之间");  
            $("#pwd_error").css("color", "red");  
            $(this).parent().css("border-color", "red");  
            pwd_ok = false;  
        } else if (!$(this).val().match(pwd_reg)) {  
            // 不是两种及以上的组合  
            $("#pwd_error").html("有被盗风险, 建议使用字母, 数字和符号两种及以上组合");  
            $("#pwd_error").css("color", "red");  
            $(this).parent().css("border-color", "red");  
            pwd_ok = false;  
        } else {  
            pwd_ok = true;  
        }  
    });  
  
    // 再次密码输入框获取焦点  
    var confirm_pwd_ok = false;  
    $("#confirm_pwd").focus(function(){  
        $(this).css("outline", "none");  
        $(this).attr("placeholder", "");  
        $(this).parent().css("border-color", "#999");  
        $("#confirm_pwd_error").css("color", "#c5c5c5");  
        $("#confirm_pwd_error").html("请再次输入密码");  
    });  
    $("#confirm_pwd").blur(function(){  
        if ($(this).val() == "") {  
            $(this).attr("placeholder", "请再次输入密码");  
            $("#confirm_pwd_error").html("");  
            confirm_pwd_ok = false;  
        } else if ($(this).val() != $("#pwd").val()) {  
            // 再次输入的密码不一致  
            $("#confirm_pwd_error").html("两次输入的密码不一致");  
            $("#confirm_pwd_error").css("color", "red");  
            $(this).parent().css("border-color", "red");  
            confirm_pwd_ok = false;  
        } else {  
            confirm_pwd_ok = true;  
        }  
    });  
  
    // 手机号码输入框获取焦点  
    var phone_reg = /^1[3|4|5|7|8]\d{9}$/;  
    var phone_ok = false;  
    $("#phone").focus(function(){  
        $(this).css("outline", "none");  
        $(this).attr("placeholder", "");  
        $(this).parent().css("border-color", "#999");  
        $("#phone_error").css("color", "#c5c5c5");  
        $("#phone_error").html("验证完成后, 可以使用该手机登录和找回密码");  
    });  
    $("#phone").blur(function(){  
        if ($(this).val() == "") {  
            $(this).attr("placeholder", "建议使用常用手机");  
            $("#phone_error").html("");  
            phone_ok = false;  
        } else if ($(this).val().length != 11) {  
            // 长度不对  
            $("#phone_error").html("格式有错");  
            $("#phone_error").css("color", "red");  
            $(this).parent().css("border-color", "red");  
            phone_ok = false;  
        } else if (!$(this).val().match(phone_reg)) {  
            // 输入的不是手机号码  
            $("#phone_error").html("格式有错");  
            $("#phone_error").css("color", "red");  
            $(this).parent().css("border-color", "red");  
            phone_ok = false;  
        } else {  
            phone_ok = true;  
        }  
    });  
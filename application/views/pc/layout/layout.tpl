<!DOCTYPE html>
<!-- saved from url=(0039)http://www.hjgcd.com/sunfund/index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chorme=1">
    <meta name="keywords" content="耐装网">
    <meta name="description" content="耐装网">
    <meta name="baidu-site-verification" content="ZJoVVo5RTA">
    
    <title>{$title}</title>

    <link rel="Shortcut Icon" type="image/x-icon" href="/favicon.ico" media="screen" />
    <link rel="stylesheet" href="{views:home/css/style.css}">
    <link rel="stylesheet" type="text/css" href="{views:home/css/lrtk.css}" media="all">
    <link rel="stylesheet" type="text/css" href="{views:home/css/mtk.css}" media="all">
    <script type="text/javascript" src="{views:home/js/jquery-1.11.3.min.js}"></script> <!--banner-->
    <script type="text/javascript" src="{views:home/js/jquery.SuperSlide.2.1.1.js}"></script><!--banner-->
    <script type="text/javascript" src="{views:home/js/bootstrap.js}"></script>
    <script src="{views:home/js/jQuery-jcLightBox.js}"></script><!--图片点击放大-->
    <script type="text/javascript" src="{views:home/js/jquery.SuperSlide.2.1.1.js}"></script><!--banner-->
    <script src="{views:home/js/pic_tab.js"}></script>
     <script type="text/javascript" src="public/home/js/bootstrap.js"></script>

    <script src="{views:home/js/jQuery-jcLightBox.js}"></script><!--图片点击放大-->
    <script language="javascript" type="text/javascript"><!--图片输出-->
    jQuery(document).ready(function ($) {

        $("#demo1").jcLightBox();

        $("#demo2").jcLightBox({
            speed: 100,
            listSpeed: 200,
            setLood: {
                path: "img/loading.gif",
                width: 32,
                height: 32
            },
            setModal: {
                bgColor: "#000",
                opacity: .6
            },
            state: "fade"
        });
    });
    </script>

    

</head>
<body>


<div class="top_bj">
    <div class="top">
        <div class="top_tel"><img src="{views:home/img/index11-08_02.jpg}" width="528" height="91"><a href="{url:/thd/thd}"><img src="{views:home/img/logo1.gif}" width="245" height="91"></a></div>
        
        <div class="top_text"><img src="{views:home/img/index11-08_05.jpg}" width="379" height="91"></div>

        <ul class="nav1 js-left">
            <li class="">
                <a href="{url:/index/index}">首页</a>
            </li>
            <li><a href="{url:/zxbj/zxbj}">咨询报价</a>

            </li>
            <li><a href="{url:/dy/dy}">到店预约</a>
         <!--        <ul class="sub-nav1">
             <li><a href="/dy/mh.html">闵行店</a></li>
             <li><a href="/dy/ja.html">静安店</a></li>
             <li><a href="/dy/pd.html">浦东店</a></li>
         </ul> -->
            </li>

            <li><a href="{url:/luxury/luxury}">热门套餐</a>
                <ul class="sub-nav1">
                    <li><a href="{url:/luxury/luxury}">豪华套餐</a></li>
                    <li><a href="{url:/luxury/villa}">别墅套餐</a></li>
                </ul>
            </li>
        </ul>
        <div class="logo"><a href="{url:/thd/thd}"><img src="{views:home/img/logo2.gif}" width="245" height="47"></a></div>
        <ul class="nav1 js-right">
            <li><a href="{url:/designer/designer}">设计师</a>

            </li>
            <li><a href="{url:/thd/thd}">3D展厅</a>
                  <ul class="sub-nav1">
           <!--        <li><a href="http://yun.kujiale.com/design/3FO4J5TCGKCJ/show">现代简约</a></li>
               <li><a href="http://yun.kujiale.com/design/3FO4IXDQ8VVW/show">简欧风</a></li>
               <li><a href="http://yun.kujiale.com/design/3FO4IY2YWNKH/show">复古中式</a></li>
               <li><a href="http://yun.kujiale.com/design/3FO4IY2YWNKH/show">新中式</a></li>
               <li><a href="http://yun.kujiale.com/design/3FO4IWLJAWDF/show">北欧</a></li>  -->
           <!--     <li><a href="http://yun.kujiale.com/design/3FO4IWPE908Y/show">田园风格</a></li>
           <li><a href="http://yun.kujiale.com/design/3FO4IWP3H7SA/show">美式乡村</a></li> 
           <li><a href="http://yun.kujiale.com/design/3FO4IWP4RODV/show">奢华欧式</a></li> -->
           </ul>
            </li>
            <li><a href="{url:/sunfund/sunfund}">公益基金</a>

            </li>

            <li><a href="{url:/about/about}">关于耐装</a>
            </li>
        </ul>
    </div>
</div>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        jQuery('.sub-nav1').parent('li').hover(function () {
            $(this).children('.sub-nav1').stop().slideToggle();
        });
    });
</script><!---->


{content}

<div class="foot">
            <div class="foot1">
                <div class="fooot_logo"><a href="{url:/thd/thd}"><img src="{views:home/img/foot_logo.jpg}" width="334" height="231"></a></div>
                <div class="foot_text"><a href="{url:/index/index}">首页</a> | <a href="{url:/zxbj/zxbj}">装修报价</a> | <a href="{url:/dy/dy}">预约到店</a> | <a href="{url:/luxury/luxury}">热门套餐</a> | <a href="{url:/designer/designer}">设计师</a> | <a href="{url:/thd/thd}">3D展厅</a> | <a href="{url:/sunfund/sunfund}">公益基金</a> | <a href="{url:/about/about}">关于耐装</a> | &nbsp;&nbsp;电话：021-31830384 
                    <br>
                    <br>
                    静安店：汾西路1号&nbsp;&nbsp;  | &nbsp;&nbsp;  闵行店：七莘路3599号&nbsp;&nbsp;   | &nbsp;&nbsp;   浦东店：浦东大道2000号  | &nbsp;&nbsp;   松江店：松江区环城路386号(靠近松东路)
                </div>
                <div class="foot_left">Copyright @ 2014-2016 版权所有：耐装家装工厂店</div>
                <div class="foot_right">沪ICP备15054992号-1 &nbsp;&nbsp;</div>
            </div>

        </div>
       <div class="side-btns">
        <div class="main-box">
            <ul class="side-btn">
                  <!-- <li><a href="http://p.qiao.baidu.com/cps/chat?siteId=9960835&userId=22445005" target="_blank"><span class="side-btn-icon" style="background-image: url({views:home/img/side-btn1.png});"></span>在线咨询</a>
                </li> -->

             <li><a href="{url:/about/about}/id/4"><span class="side-btn-icon" style="background-image: url({views:home/img/side-btn2.png});"></span>最新活动</a>
                             </li> 

               
                <li><a href="{url:/about/about}/id/6"><span class="side-btn-icon" style="background-image: url({views:home/img/side-btn4.png});"></span>招贤纳士</a></li>

               <li><a href="{url:/thd/thd}"><span class="side-btn-icon" style="background-image: url({views:home/img/side-btn3.png});"></span>3D展厅</a>
               </li>
               


                <li><a href="" class="qr"><i></i><span class="side-btn-icon" style="background-image: url({views:home/img/side-btn5.png});"></span>二维码</a>
                </li>
                <li><a href="" class="back-to-top">返回顶部</a></li>
            </ul>
        </div>
    </div>
       <!--  <a href="" class="fix-btn"></a>
        <div class="fix-bar" style=" margin-top:100px;filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr=#88000000,endColorstr=#88000000);  ">
               <div class="fix-bar_box">
            <div class="main-box">
                <form action="" class="fix-bar-message">
                    <label for="fix_name">请输入姓名: <input type="text" id="fix_name" name="fix_name" style="outline: none;" class="js-name1"></label>
                    <label for="fix_phone">请输入手机号码: <input type="text" id="fix_phone" name="fix_phone" style="outline: none;" class="js-mobile1"></label>
                    <div>
                        <select class="foot_ksbj" name="">
                            <option value="0" selected="selected">上海</option>
                        </select>
                    </div>
                    <div>
                        <select class="js-area1 foot_ksbj1">
                            <option value="1">静安区</option>
                            <option value="2">闸北区</option>
                            <option value="3">黄浦区</option>
                            <option value="4">浦东新区</option>
                            <option value="5">徐汇区</option>
                            <option value="6">普陀区</option>
                            <option value="7">长宁区</option>
                            <option value="8">虹口区</option>
                            <option value="9">杨浦区</option>
                            <option value="10">闵行区</option>
                            <option value="11">宝山区</option>
                            <option value="12">嘉定区</option>
                            <option value="13">金山区</option>
                            <option value="14">松江区</option>
                            <option value="15">青浦区</option>
                            <option value="16">奉贤区</option>
                            <option value="17">崇明区</option>
                        </select>
                    </div>
				<span class="fix-submit js-click">

					提交
				</span>
                </form>
                <script>

                    jQuery(document).ready(function ($) {
                        $('.js-click').click(function () {

                            var area_id1 = $('.js-area1').val();
                            var mobile1 = $('.js-mobile1').val();
                            var name1 = $('.js-name1').val();

                            if (name1 == '') {
                                alert('用户名不能为空');
                                return false;
                            }
                            if (mobile1 == '') {
                                alert('手机号码不能为空');
                                return false;
                            }
                            function testMobile(mobile1) {
                                var phone = /^1[3|4|5|8|7][0-9]\d{8}$/;
                                if (!phone.test(mobile1)) {
                                    return false;
                                } else {
                                    return true;
                                }
                            }

                            var res = testMobile(mobile1);
                            if (!res) {
                                alert('请输入正确的号码格式');
                                return false;
                            }
                            $.ajax({
                                type: "POST",
                                url: "/index/fast1.html",
                                data: {
                                    mobile1: mobile1,
                                    name1: name1,
                                    area_id1: area_id1
                                },
                                dataType: "json",
                                success: function (data) {
                                    if (data == 1) {
                                        $(this).parent().parent('.fix-bar').fadeOut().siblings('.fix-btn').fadeIn();
                                        $('#myModal1').modal('toggle');
                                    } else if (data == 3) {
                                        alert('您已报名');
                                    } else if (data == 2) {
                                        alert('报名失败，请重新报名');
                                    }
                                }


                            })


                        })

                    })
                </script>
                <a href="" class="fix-close"></a>
            </div> -->
        </div>
        </div>
<!--modal-->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog" style="width:550px; margin:50px auto">
    <div class="modal-content1">
        <div class="modal-header1">
            <button type="button" class="close1" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only"> </span></button>
        </div>
    </div>
</div>
</div>
<!--modal-->
<!--[if IE 8]>
<script type="text/javascript" src="/{views:home/js/ie8-pic-box.js}"></script>
<![endif]-->
<script src="{views:home/js/active.js}" type="text/javascript"></script>
<!-- 跟随 .footer 放在同一 php -->
<script type="text/javascript">

    jQuery('[placeholder]').focus(function() {
        var input = jQuery(this);
        if (input.val() == input.attr('placeholder')) {
            input.val('');
            input.removeClass('placeholder');
        }
    }).blur(function() {
        var input = jQuery(this);
        if (input.val() == '' || input.val() == input.attr('placeholder')) {
            input.addClass('placeholder');
            input.val(input.attr('placeholder'));
        }
    }).blur().parents('form').submit(function() {
        jQuery(this).find('[placeholder]').each(function() {
            var input = jQuery(this);
            if (input.val() == input.attr('placeholder')) {
                input.val('');
            }
        })
    });

    jQuery(document).ready(function ($) {

        jQuery('.index-floor').hover(function () {
            $(this).find('.slide-dot').stop().css({"right": "834px"}).animate({right: 0}, 'slow');
        }, function () {
            $(this).find('.slide-dot').stop().css({"right": "0"});
        });

        jQuery('.fix-btn').click(function () {
            $(this).fadeOut().siblings('.fix-bar').slideDown();
            return false;
        });
        jQuery('.fix-close').click(function () {
            $(this).parent().parent('.fix-bar_box').parent('.fix-bar').fadeOut().siblings('.fix-btn').fadeIn();
            return false;
        });

        function Trim(str) {
            return (str + '').replace(/(\s+)$/g, '').replace(/^\s+/g, '');
        }

    });




</script>


</body></html>

    <div class="yd-img-box">
        <div class="sjs">
            <div class="sjs1">
                <div class="sjs2">
                    <div class="sjs3">为您智能匹配设计师</div>
                    <div class="sjs4">
                        <div class="sjs5"> <input style="outline:none" name="input2" type="text" size="23" placeholder="上海" onfocus="this.value=&#39;&#39;" class="zxbj9 placeholder" disabled=""></div>
                        <div><select class="sjs6 js-area_id" name="area_id">
                            <option value="1">静安区</option><option value="2">闸北区</option><option value="3">黄浦区</option><option value="4">浦东新区</option><option value="5">徐汇区</option><option value="6">普陀区</option><option value="7">长宁区</option><option value="8">虹口区</option><option value="9">杨浦区</option><option value="10">闵行区</option><option value="11">宝山区</option><option value="12">嘉定区</option><option value="13">金山区</option><option value="14">松江区</option><option value="15">青浦区</option><option value="16">奉贤区</option><option value="17">崇明区</option>                            </select>
                        </div>
                        <div class="sjs5"> <input style="outline:none" name="plot" type="text" size="23" placeholder="请输入小区名称" onfocus="this.value=&#39;&#39;" class="zxbj9 js-plot placeholder"></div>

                        <div class="sjs5"> <input style="outline:none" name="place" type="text" size="23" placeholder="请输入您的房屋面积" maxlength="7" onfocus="this.value=&#39;&#39;" class="zxbj9 js-place placeholder"></div>
                        <div>
                            <select class="sjs6 js-style_id" name="style_id">
                            <option value="1">现代风格</option><option value="2">田园风格</option><option value="3">后现代风格</option><option value="4">中式风格</option><option value="5">日式风格</option><option value="6">东南亚风格</option><option value="7">欧式古典风格</option><option value="8">法式风格</option><option value="9">都市风格</option>                        </select>
                        </div>
                        <div class="sjs5"> <input style="outline:none" name="butget" type="text" size="23" placeholder="请输入您的手机号码" onfocus="this.value=&#39;&#39;" class="zxbj9 js-butget placeholder" maxlength="11"></div>
                        <div> <textarea name=" " cols="" rows="6" class="sjs7 js-remark placeholder" placeholder="您可以具体描述对家装的需求，以便我们能更好的为您提供服务"></textarea></div>


                    </div>
                    <div class="sjs8"><a class="js-match"><img src="{views:home/img/sjs_an.gif}" width="240" height="29"></a></div>


                </div>
            </div>
        </div>

    </div>
    <div class="yd1">
        <div class="dq_bj">
            <div class="dq">当前位置：<a href="index.html">耐装工厂店</a> &gt; <a href="designer.html#">设计师</a> &gt; 设计师展示</div>
        </div>
        <div class="sjs9">
            <a name='designerlist'></a>
            <ul>
                {foreach:items=$list}
                <li>
                    <div class="sjs9_img"><a href="designer.html"><img src="{$item['thump']}" width="250" height="280"></a></div>
                    <div class="sjs9_name">{$item['name']}</div>
                    <div class="sjs9_text"><table width="225" border="0" cellspacing="0" cellpadding="0">
                        <tbody><tr>
                            <td width="69" height="30" align="center" valign="top">擅长风格: </td>
                            <td width="194" valign="top">{$item['style']}</td>
                        </tr>
                        <tr>
                            <td align="center" valign="top">设计理念:  </td>
                            <td valign="top">{$item['ln']}</td>
                        </tr>
                    </tbody></table>
                    </div>
                    <button type="button" data-toggle="modal" data-target="#myModal{$item['id']}" class="btn btn-primary btn-lg" style=" border:none; outline: none; ">
                        <span style="background:#f5f5f5; padding:0 0 0 140px; float:right"> <img src="{views:home/img/sjs9_an.gif}" width="90" height="26"></span>

                    </button>
                </li>
                    <div class="modal fade" id="myModal{$item['id']}">
                        <div class="modal-dialog" style="width:738px; margin:50px auto">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only"> </span></button>
                                </div>
                                <div class="modal-body">
                                    <!-- 内容 -->
                                    <div class="mtk_text">在线预约[{$item['name']}]</div>
                                    <div class="mtk_k">
                                        <span style="float:left; font-size:16px; line-height:32px; padding-right:10px">姓名</span><div class="mtk_k2"> <input style="outline:none" name="input2" type="text" size="35" placeholder="请输入您的姓名" onfocus="this.value=&#39;&#39;" class="mtk_k3 js-name{$item['id']} placeholder"></div></div>
                                    <div class="mtk_k4">
                                        <span style="float:left; font-size:16px; line-height:32px; padding-right:10px">手机号码</span><div class="mtk_k2"> <input style="outline:none" name="input2" type="text" size="35" placeholder="请输入您的手机号码" onfocus="this.value=&#39;&#39;" class="mtk_k3 js-mobile{$item['id']} placeholder"></div></div>

                                </div>
                                <div class="modal-footer">
                                    <!-- <div class="mtk8"> 该设计师已帮助<span style="color:#F00; font-weight:bold"> 1473</span> 位业主</div> -->
                                    <button onclick="func({$item['id']})" style=" border:none; background-color:#FFF"> <a href="javascript:;"><img src="{views:home/img/sjs.gif}" width="124" height="34"></a></button>
                                </div>
                            </div>
                        </div>
                    </div>          
                {/foreach}
                </ul>
            <script>
            function func(e){
                var jsn='js-name'+e;
                var jsm='js-mobile'+e;

                var name =$('.'+jsn).val();
                var mobile = $('.'+jsm).val();
                var id= e ;
                if(name == '' || name == '请输入您的姓名'){
                    alert('用户名不能为空');
                    return false;
                }

                var phone = /^1[3|4|5|8|7][0-9]\d{8}$/;
                if (mobile.length = 0) {
                    alert('号码不能为空');
                    return false;
                }
                if (!phone.test(mobile)) {
                    alert('号码有误！');
                    return false;
                }
                function Trim(str) {
                    return (str + '').replace(/(\s+)$/g, '').replace(/^\s+/g, '');
                }

                $.ajax({
                    type: "POST",
                    url: "{url:/designer/designer}",
                    data: {
                        id:id,
                        name: name,
                        mobile: mobile
                    },
                    dataType: "json",
                    success: function (data) {
                        
                         if (data.success == 1) {
                            alert('您已预约');
                            $('#'+'myModal'+id).hide();
                        } else if (data.success == 0) {
                            alert('预约失败，请重新报名');
                        }
                    },
                    error:function(){
                        alert('预约失败，请检查信息');
                    }
                })

            }
            </script>
            <div class="paging_1">
                <div class="paging_2">
                   <!-- <div>  <span class="current">1</span><a class="num" href="#">2</a> <a class="next" href="#">下一页</a> </div>  -->

                    {$pageBar}

                                  </div>
            </div>

          

        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="success" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width:550px; margin:50px auto">
            <div class="modal-content1">
                <div class="modal-header1">
                    <button type="button" class="close1" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only"> </span></button>
                </div>

                <div class="modal-body">
                    <!-- 内容 -->
                </div>
            </div>
        </div>
    </div>





    <script>
    jQuery(document).ready(function ($) {
        $('.js-match').click(function(){
            var butget=$('.js-butget').val();//手机号码
            var area_id=$('.js-area_id').val();
            var plot=$('.js-plot').val();
            var place=$('.js-place').val();
            var style_id=$('.js-style_id').val();

            //alert(style_id);
            var remark=$('.js-remark').val();
            if( plot =='请输入小区名称' || plot ==''){
                alert('小区名不能为空');
                return false;
            }
            if( place =='请输入您的房屋面积'|| place == ''){
                alert('小区名不能为空');
                return false;
            }
            if( style_id =='请输入小区名称' || style_id ==''){
                alert('小区名不能为空');
                return false;
            }
            var place1 =/^\d{1,7}$/;
            if(place.length == 0){
                alert('请输入您的房屋面积');
                return false;
            }
            if(!place1.test(place)){
                alert('面积有误！');
                return false;
            }
            if(butget == '请输入您的手机号码'|| butget == ''){
                alert('请输入您的手机号码');
                return false;
            }
	  var phone = /^1[3|4|5|8|7][0-9]\d{8}$/;
             
                if (!phone.test(butget)) {
                    alert('号码有误！');
                    return false;
                }
            // $.ajax({
            //     type: "POST",
            //     url: "{url:/designer/designer?random=1}",
            //     data: {
            //         butget:butget,
            //         place:place,
            //         plot:plot,
            //         style_id:style_id,
            //         area_id:area_id,
            //         remark:remark
            //     },
            //     dataType: "json",
            //     success: function (data) {
            //         if (data == 1) {
            //             $('#success').modal('toggle');
            //         } else if (data == 3) {
            //             alert('您已报名');
            //         } else if (data == 2) {
            //             alert('报名失败，请重新报名');
            //         }
            //     }

            // })
            window.location.href="{url:/designer/designer?random=1}#designerlist";
            function Trim(str) {
                return (str + '').replace(/(\s+)$/g, '').replace(/^\s+/g, '');
            }
        })})
        jQuery(document).ready(function ($){
            $('.js-right>li:nth-child(1)').addClass('present');
        })


    </script>


 

   
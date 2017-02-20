

    <div class="zxbj">
        <div class="zxbj1">
            <div class="zxbj2">当前位置：<a href="zxbj.html#">耐装网</a> &gt; 咨询报价</div>

            <div class="zxbj3">
                <div class="zxbj4">咨询报价</div>
                <div class="zxbj5">已有<span style="color:#e75d19; font-weight:bold"> {$q}</span> 位业主成功获取报价
                    <p style="font-size:12px">(截止到
					2016年12月28日)</p>
                </div>
                <div class="zxbj6">
                    <div class="zxbj7">
                        <span class="zxbj_text"><img src="{views:home/img/xx.gif}" width="16" height="14">所在城市：</span>
                        <div class="zxbj8"> <input style="outline:none;" name="city" type="text" size="38"  class="zxbj9 js-city placeholder"></div>  </div>

                    <div class="zxbj7">
                        <span class="zxbj_text"><img src="{views:home/img/xx.gif}" width="16" height="14">所在区域：</span><div class="zxbj8">
                         <input style="outline:none;" name="area" type="text" size="38"  class="zxbj9 js-area placeholder">
                        <!-- <div>
                            <select class="js-area sjs6">
                                <option value="1">静安区</option><option value="2">闸北区</option><option value="3">黄浦区</option><option value="4">浦东新区</option><option value="5">徐汇区</option><option value="6">普陀区</option><option value="7">长宁区</option><option value="8">虹口区</option><option value="9">杨浦区</option><option value="10">闵行区</option><option value="11">宝山区</option><option value="12">嘉定区</option><option value="13">金山区</option><option value="14">松江区</option><option value="15">青浦区</option><option value="16">奉贤区</option><option value="17">崇明区</option>                            </select>
                        </div> -->
                    </div>  </div>

                    <div class="zxbj7">
                        <span class="zxbj_text"><img src="{views:home/img/xx.gif}" width="16" height="14">建筑面积：</span>
                        <div class="zxbj8"> <input style="outline:none;" name="acreage" maxlength="6" type="text" size="38" placeholder="请输入建筑面积" onfocus="this.value=&#39;&#39;" class="zxbj9 js-place placeholder">m²
                        </div>  </div>

                    <div class="zxbj7">
                        <span class="zxbj_text"><img src="{views:home/img/xx.gif}" width="16" height="14">所在小区：</span>
                        <div class="zxbj8"> <input style="outline:none;" name="place" type="text" size="38" placeholder="请输入小区名" onfocus="this.value=&#39;&#39;" class="zxbj9 js-plot placeholder">
                        </div>  </div>

                    <div class="zxbj7">
                        <span class="zxbj_text"><img src="{views:home/img/xx.gif}" width="16" height="14">您的称呼：</span>
                        <div class="zxbj8"> <input style="outline:none;" name="name" type="text" size="38" placeholder="请输入您的称呼" onfocus="this.value=&#39;&#39;" class="zxbj9 js-name placeholder">
                        </div>  </div>

                    <div class="zxbj7">
                        <span class="zxbj_text"><img src="{views:home/img/xx.gif}" width="16" height="14">装修类型：</span><div class="zxbj10">
                        <div>
                            <select name='type' class="js-status sjs6">
                                <option value="1">新房装修</option>
                                <option value="2">旧房装修</option>
                            </select>
                        </div>

                    </div>  </div>

                    <div class="zxbj7">
                        <span class="zxbj_text"><img src="{views:home/img/xx.gif}" width="16" height="14">联系电话：</span>
                        <div class="zxbj8"> <input style="outline:none;" name="phone" maxlength="11" type="text" size="38" placeholder="请输入手机号码" onfocus="this.value=&#39;&#39;" class="zxbj9 js-mobile placeholder">
                        </div>  </div>

                    <div class="zxbj7">
                        <!-- <span class="zxbj_text"><img src="{views:home/img/xx.gif}" width="16" height="14">验证码：&nbsp;&nbsp;&nbsp;&nbsp;</span><div class="zxbj8_yzm"> <input style="outline:none;" name="input2" type="text" size="10" placeholder="请输入验证码" onfocus="this.value=&#39;&#39;" class="zxbj9 js-yzm placeholder"></div>
                        &nbsp;&nbsp;&nbsp;&nbsp;   <a class="js-yzm1"><img src="{views:home/img/yzm.gif}" width="130" height="38"></a> --></div>
                    
                    <div class="zxbj11">
                        <button type="button" class="btn btn-primary btn-lg js-submit" style=" border:none; "> <a href="javascript:;"><img src="{views:home/img/zxbj.gif}" width="227" height="38"></a>
                        </button>
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog" style="width:738px; margin:50px auto">
                            </div>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog" style="width:550px; margin:50px auto">
                                <div class="modal-content2">
                                    <div class="modal-header2">
                                        <button type="button" class="close2" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only"> </span></button>
                                    </div>

                                    <div class="modal-body">
                                        <!-- 内容 -->
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </div>

    </div>
    <script>
        jQuery(document).ready(function ($){
            $('.js-left>li:nth-child(2)').addClass('present');
        
        //获取验证码
        $('.js-yzm1').click(function(){

            var place= Trim($('.js-place').val());
            var place1 =/^\d{1,7}$/;
            if(place.length == 0){
                alert('请输入您的房屋面积');
                return false;
            }
            if(!place1.test(place)){
                alert('面积有误！');
                return false;
            }
            var name= Trim($('.js-name').val());
            //alert(name);return false;
            if(name.length == 0){
                alert('请输入您的称呼');
                return false;
            }
            var mobile= Trim($('.js-mobile').val());
            var phone=/^1[3|4|5|8|7][0-9]\d{8}$/;
            if(mobile.length=0){
                alert('号码不能为空');
                return false;
            }
            if(!phone.test(mobile)) {
                alert('号码有误！');
                return false;
            }
            var plot = Trim($('.js-plot').val());
            if(plot.length == 0){
                alert('小区名不能为空');
                return false;

            }
            var area = $('.js-area').val();
            var status = $('.js-status').val();

            $.ajax({
                type: "POST",
                url: "/index/message.html",
                data: {mobile:mobile},
                dataType:"html",
                success: function(data){
                    alert(data);
                    return false;
                }
            });
        });


        $('.js-submit').click(function(){
            var place= Trim($('.js-place').val());
            var city= Trim($('.js-city').val());
            var area= Trim($('.js-area').val());
            var place1 =/^\d{1,7}$/;
            if(place.length == 0){
                alert('请输入您的房屋面积');
                return false;
            }if(city.length == 0){
                alert('请输入您的城市');
                return false;
            }if(area.length == 0){
                alert('请输入您的区域');
                return false;
            }
            if(!place1.test(place)){
                alert('面积有误');
                return false;
            }
            var name= Trim($('.js-name').val());

           // alert(name);
            if(name.length == 0){
                alert('请输入您的称呼');
                return false;
            }
            var mobile= Trim($('.js-mobile').val());
            var phone=/^1[3|4|5|8|7][0-9]\d{8}$/;
            if(mobile.length=0){
                alert('号码不能为空');
                return false;
            }
            if(!phone.test(mobile)) {
                alert('号码有误！');
                return false;
            }
            var plot = Trim($('.js-plot').val());
            if(plot.length == 0){
                alert('小区名不能为空');
                return false;
            }
            var status = $('.js-status').val();
            // var yzm= Trim($('.js-yzm').val());
            // var yzm1 =/^\d{1,7}$/;
            // if(yzm.length=0){
            //     alert('验证码不能为空');
            //     return false;
            // }
            // if(!yzm1.test(yzm)) {
            //     alert('验证码有误！');
            //     return false;
            // }
           // return false;
            $.ajax({
                type: "POST",
                url: "{url:/zxbj/zxbj}",
                data: {
                    name:name,
                    acreage:place,
                    area:area,
                    type:status,
                    // code:yzm,
                    place:plot,
                    phone:mobile,
                    city:city,
                },
                dataType:"html",
                success: function(data){
                    if(data.success == 1){
                        $('#myModal1').modal('toggle');
                        $('.zxbj7 input').val('');
                        alert('已发起报价申请,请等待联系');
                        return false;
                    }else{
                        alert(data.info);
                        return false;
                    }
                },
                error:function(){
                    alert('服务器错误,请稍后再试');
                },
                dataType:'json'
            });
        });
        })
        function Trim(str) {
            return (str + '').replace(/(\s+)$/g, '').replace(/^\s+/g, '');
        }
    </script>

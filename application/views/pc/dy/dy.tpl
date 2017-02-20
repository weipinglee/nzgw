<script type="text/javascript" src="{views:home/js/jquery-1.11.3.min.js}"></script>

    <div class="yd">
        <div class="yd1">
            <div class="dq_bj">
                <div class="dq">当前位置：<a href="index.html">耐装工厂店</a> &gt; 预约到店</div>
            </div>
            <div class="yd2">
                	{foreach:items=$list}
                    <div class="yd4">
			                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal{$item['id']}" style=" border:none; ">
                            <span class="yd3"> <a><img src="{views:home/img/yydd_01.gif}" width="119" height="38"></a></span></button>
			                        <a href="dy.html"><img src="{$item['thump']}" width="410" height="489"></a>
			
                    </div>
                    
                    
                    <div class="modal fade" id="myModal{$item['id']}" tabindex="{$item['id']}" role="dialog">
                        <div class="modal-dialog" style="width:738px; margin:50px auto">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only"> </span></button>
                                </div>
                                <div class="modal-body">
                                    <!-- 内容 -->
                                    <div class="mtk_text_yd"><span style="color:#F00">{$item['name']}</span>在线到店预约</div>
                                    <input style="outline:none;" type="hidden" value="{$item['id']}" class="js-status">
                                    <div class="mtk_k">
                                        <span style="float:left; font-size:16px; line-height:32px; padding-right:10px">姓名</span>
                                        <div class="mtk_k2"><input style="outline:none;" name="name" type="text" size="35" placeholder="请输入您的姓名" onfocus="this.value=&#39;&#39;" class="mtk_k3 js-name{$item['id']} placeholder">
                                        </div>
                                    </div>
                                    <div class="mtk_k4">
                                        <span style="float:left; font-size:16px; line-height:32px; padding-right:10px">手机号码</span>
                                        <div class="mtk_k2"><input style="outline:none;" name="phone" type="text" size="35" placeholder="请输入您的手机号码" maxlength="11" onfocus="this.value=&#39;&#39;" class="mtk_k3 js-mobile{$item['id']} placeholder">
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <div class="mtk7">已成功预约<span style="color:#F00; font-weight:bold"> {$item['c']}</span>
                                        位业主
                                    </div>
                                    {if:$item['status'] == 1}
                                    <button onclick="func({$item['id']})" style=" border:none; background-color:#FFF"><a href="javascript:;"><img src="{views:home/images/sjs.gif}" width="124" height="34"></a></button>
                                    {/if}
                                </div>
                            </div>
                        </div>
                    </div>
                    {/foreach}
                    <div class="paging_1">
                <div class="paging_2">
                   <!-- <div>  <span class="current">1</span><a class="num" href="#">2</a> <a class="next" href="#">下一页</a> </div>  -->

                    {$pageBar}

                                  </div>
            </div>

               	   <!-- 
                    <div class="yd4">
			                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal3" style=" border:none; ">
                            <span class="yd3"> <a><img src="{views:home/img/yydd_01.gif}" width="119" height="38"></a></span></button>
			                        <a href="dy.html"><img src="{views:upload/20161201583fb8975888e.jpg}" width="410" height="489"></a>
			
                    </div>
                    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
                        <div class="modal-dialog" style="width:738px; margin:50px auto">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only"> </span></button>
                                </div>
                                <div class="modal-body">
                                    <div class="mtk_text_yd"><span style="color:#F00">闵行店</span>在线到店预约</div>
                                    <input style="outline:none;" type="hidden" value="2" class="js-status">
                                    <div class="mtk_k">
                                        <span style="float:left; font-size:16px; line-height:32px; padding-right:10px">姓名</span>
                                        <div class="mtk_k2"><input style="outline:none;" name="input2" type="text" size="35" placeholder="请输入您的姓名" onfocus="this.value=&#39;&#39;" class="mtk_k3 js-name2 placeholder">
                                        </div>
                                    </div>
                                    <div class="mtk_k4">
                                        <span style="float:left; font-size:16px; line-height:32px; padding-right:10px">手机号码</span>
                                        <div class="mtk_k2"><input style="outline:none;" name="input2" type="text" size="35" placeholder="请输入您的手机号码" maxlength="11" onfocus="this.value=&#39;&#39;" class="mtk_k3 js-mobile2 placeholder">
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <div class="mtk7">已成功预约<span style="color:#F00; font-weight:bold"> 3225</span>
                                        位业主
                                    </div>
                                    <button onclick="func(2,3)" style=" border:none; background-color:#FFF"><a href="dy.html"><img src="{views:home/images/sjs.gif}" width="124" height="34"></a></button>
                                </div>
                            </div>
                        </div>
                    </div>
               	   
                    <div class="yd4">
			                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal4" style=" border:none; ">
                            <span class="yd3"> <a><img src="{views:home/img/yydd_01.gif}" width="119" height="38"></a></span></button>
			                        <a href="dy.html"><img src="{views:upload/2016112358350fd462318.png}" width="410" height="489"></a>
			
                    </div>
                    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog">
                        <div class="modal-dialog" style="width:738px; margin:50px auto">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only"> </span></button>
                                </div>
                                <div class="modal-body">
                                    <div class="mtk_text_yd"><span style="color:#F00">浦东店</span>在线到店预约</div>
                                    <input style="outline:none;" type="hidden" value="1" class="js-status">
                                    <div class="mtk_k">
                                        <span style="float:left; font-size:16px; line-height:32px; padding-right:10px">姓名</span>
                                        <div class="mtk_k2"><input style="outline:none;" name="input2" type="text" size="35" placeholder="请输入您的姓名" onfocus="this.value=&#39;&#39;" class="mtk_k3 js-name1 placeholder">
                                        </div>
                                    </div>
                                    <div class="mtk_k4">
                                        <span style="float:left; font-size:16px; line-height:32px; padding-right:10px">手机号码</span>
                                        <div class="mtk_k2"><input style="outline:none;" name="input2" type="text" size="35" placeholder="请输入您的手机号码" maxlength="11" onfocus="this.value=&#39;&#39;" class="mtk_k3 js-mobile1 placeholder">
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <div class="mtk7">已成功预约<span style="color:#F00; font-weight:bold"> 2397</span>
                                        位业主
                                    </div>
                                    <button onclick="func(1,4)" style=" border:none; background-color:#FFF"><a href="dy.html"><img src="{views:home/images/sjs.gif}" width="124" height="34"></a></button>
                                </div>
                            </div>
                        </div>
                    </div>
               	    -->
                    
               
            </div>
        </div>
    </div>

    <script type="text/javascript" >

        function func(e){

            var jsn = 'js-name'+e;
            var jsm = 'js-mobile'+e;
            var name = Trim($("."+jsn).val());
            var mobile = Trim($("."+jsm).val());
            var number =e;

            if (name.length == 0 || name == '请输入您的姓名') {
                alert('姓名不能为空');
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
                url: "{url:/dy/dy}",
                data: {
                    id:number,
                    name: name,
                    mobile: mobile
                },
                dataType: "json",
                success: function (data) {
                    $('#'+'myModal'+e).hide();
                    // $('#myModal1').modal('toggle');
                    if (data.success == 1) {
                        alert('您已报名');
                    } else if (data.success == 0) {
                        alert('报名失败，请重新报名');
                    }
                },error:function(){
                    alert('报名失败，请检查信息');
                }
            })
        }

    </script>
    <script>
        jQuery(document).ready(function ($) {
            $('.js-left>li:nth-child(3)').addClass('present');
        })
    </script>